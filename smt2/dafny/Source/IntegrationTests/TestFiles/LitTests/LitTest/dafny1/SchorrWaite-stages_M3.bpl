// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy

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

const unique class.M3.__default: ClassName;

function Tclass.M3.Node() : Ty
uses {
// Tclass.M3.Node Tag
axiom Tag(Tclass.M3.Node()) == Tagclass.M3.Node
   && TagFamily(Tclass.M3.Node()) == tytagFamily$Node;
}

const unique Tagclass.M3.Node: TyTag;

// Box/unbox axiom for Tclass.M3.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M3.Node()) } 
  $IsBox(bx, Tclass.M3.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.M3.Node()));

procedure {:verboseName "M3.SchorrWaite (well-formedness)"} CheckWellFormed$$M3.__default.SchorrWaite(root#0: ref
       where $Is(root#0, Tclass.M3.Node()) && $IsAlloc(root#0, Tclass.M3.Node(), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass.M3.Node())) && $IsAlloc(S#0, TSet(Tclass.M3.Node()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.M3.Node?() : Ty
uses {
// Tclass.M3.Node? Tag
axiom Tag(Tclass.M3.Node?()) == Tagclass.M3.Node?
   && TagFamily(Tclass.M3.Node?()) == tytagFamily$Node;
}

const unique Tagclass.M3.Node?: TyTag;

// Box/unbox axiom for Tclass.M3.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M3.Node?()) } 
  $IsBox(bx, Tclass.M3.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.M3.Node?()));

procedure {:verboseName "M3.SchorrWaite (call)"} Call$$M3.__default.SchorrWaite(root#0: ref
       where $Is(root#0, Tclass.M3.Node()) && $IsAlloc(root#0, Tclass.M3.Node(), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass.M3.Node())) && $IsAlloc(S#0, TSet(Tclass.M3.Node()), $Heap));
  // user-defined preconditions
  requires {:id "id832"} Set#IsMember(S#0, $Box(root#0));
  requires {:id "id833"} (forall n#1: ref :: 
    { $Unbox(read($Heap, n#1, M3.Node.children)): Seq } 
      { Set#IsMember(S#0, $Box(n#1)) } 
    $Is(n#1, Tclass.M3.Node())
       ==> 
      Set#IsMember(S#0, $Box(n#1))
       ==> (forall ch#2: ref :: 
        { Set#IsMember(S#0, $Box(ch#2)) } 
          { Seq#Contains($Unbox(read($Heap, n#1, M3.Node.children)): Seq, $Box(ch#2)) } 
        $Is(ch#2, Tclass.M3.Node?())
           ==> 
          Seq#Contains($Unbox(read($Heap, n#1, M3.Node.children)): Seq, $Box(ch#2))
           ==> ch#2 == null || Set#IsMember(S#0, $Box(ch#2))));
  requires {:id "id834"} (forall n#3: ref :: 
    { $Unbox(read($Heap, n#3, M3.Node.childrenVisited)): int } 
      { $Unbox(read($Heap, n#3, M3.Node.marked)): bool } 
      { Set#IsMember(S#0, $Box(n#3)) } 
    $Is(n#3, Tclass.M3.Node())
       ==> (Set#IsMember(S#0, $Box(n#3))
           ==> !$Unbox(read($Heap, n#3, M3.Node.marked)): bool)
         && (Set#IsMember(S#0, $Box(n#3))
           ==> $Unbox(read($Heap, n#3, M3.Node.childrenVisited)): int == LitInt(0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id835"} $Unbox(read($Heap, root#0, M3.Node.marked)): bool;
  free ensures true;
  ensures {:id "id836"} (forall n#5: ref :: 
    { $Unbox(read($Heap, n#5, M3.Node.children)): Seq } 
      { $Unbox(read($Heap, n#5, M3.Node.marked)): bool } 
      { Set#IsMember(S#0, $Box(n#5)) } 
    $Is(n#5, Tclass.M3.Node())
       ==> 
      Set#IsMember(S#0, $Box(n#5)) && $Unbox(read($Heap, n#5, M3.Node.marked)): bool
       ==> (forall ch#5: ref :: 
        { $Unbox(read($Heap, ch#5, M3.Node.marked)): bool } 
          { Seq#Contains($Unbox(read($Heap, n#5, M3.Node.children)): Seq, $Box(ch#5)) } 
        $Is(ch#5, Tclass.M3.Node?())
           ==> 
          Seq#Contains($Unbox(read($Heap, n#5, M3.Node.children)): Seq, $Box(ch#5))
             && ch#5 != null
           ==> $Unbox(read($Heap, ch#5, M3.Node.marked)): bool));
  free ensures (forall n#7: ref :: 
    { M3.__default.Reachable(old($Heap), root#0, n#7, S#0) } 
      { $Unbox(read($Heap, n#7, M3.Node.marked)): bool } 
      { Set#IsMember(S#0, $Box(n#7)) } 
    $Is(n#7, Tclass.M3.Node())
       ==> 
      Set#IsMember(S#0, $Box(n#7))
       ==> 
      $Unbox(read($Heap, n#7, M3.Node.marked)): bool
       ==> M3.__default.Reachable#canCall(old($Heap), root#0, n#7, S#0));
  ensures {:id "id837"} (forall n#7: ref :: 
    { M3.__default.Reachable(old($Heap), root#0, n#7, S#0) } 
      { $Unbox(read($Heap, n#7, M3.Node.marked)): bool } 
      { Set#IsMember(S#0, $Box(n#7)) } 
    $Is(n#7, Tclass.M3.Node())
       ==> 
      Set#IsMember(S#0, $Box(n#7)) && $Unbox(read($Heap, n#7, M3.Node.marked)): bool
       ==> M3.__default.Reachable(old($Heap), root#0, n#7, S#0));
  free ensures true;
  ensures {:id "id838"} (forall n#9: ref :: 
    { $Unbox(read(old($Heap), n#9, M3.Node.children)): Seq } 
      { $Unbox(read($Heap, n#9, M3.Node.children)): Seq } 
      { $Unbox(read(old($Heap), n#9, M3.Node.childrenVisited)): int } 
      { $Unbox(read($Heap, n#9, M3.Node.childrenVisited)): int } 
      { Set#IsMember(S#0, $Box(n#9)) } 
    $Is(n#9, Tclass.M3.Node())
       ==> (Set#IsMember(S#0, $Box(n#9))
           ==> $Unbox(read($Heap, n#9, M3.Node.childrenVisited)): int
             == $Unbox(read(old($Heap), n#9, M3.Node.childrenVisited)): int)
         && (Set#IsMember(S#0, $Box(n#9))
           ==> Seq#Equal($Unbox(read($Heap, n#9, M3.Node.children)): Seq, 
            $Unbox(read(old($Heap), n#9, M3.Node.children)): Seq)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(S#0, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3.SchorrWaite (correctness)"} Impl$$M3.__default.SchorrWaite(root#0: ref
       where $Is(root#0, Tclass.M3.Node()) && $IsAlloc(root#0, Tclass.M3.Node(), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass.M3.Node())) && $IsAlloc(S#0, TSet(Tclass.M3.Node()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id839"} Set#IsMember(S#0, $Box(root#0));
  requires {:id "id840"} (forall n#1: ref :: 
    { $Unbox(read($Heap, n#1, M3.Node.children)): Seq } 
      { Set#IsMember(S#0, $Box(n#1)) } 
    $Is(n#1, Tclass.M3.Node())
       ==> 
      Set#IsMember(S#0, $Box(n#1))
       ==> (forall ch#2: ref :: 
        { Set#IsMember(S#0, $Box(ch#2)) } 
          { Seq#Contains($Unbox(read($Heap, n#1, M3.Node.children)): Seq, $Box(ch#2)) } 
        $Is(ch#2, Tclass.M3.Node?())
           ==> 
          Seq#Contains($Unbox(read($Heap, n#1, M3.Node.children)): Seq, $Box(ch#2))
           ==> ch#2 == null || Set#IsMember(S#0, $Box(ch#2))));
  requires {:id "id841"} (forall n#3: ref :: 
    { $Unbox(read($Heap, n#3, M3.Node.childrenVisited)): int } 
      { $Unbox(read($Heap, n#3, M3.Node.marked)): bool } 
      { Set#IsMember(S#0, $Box(n#3)) } 
    $Is(n#3, Tclass.M3.Node())
       ==> (Set#IsMember(S#0, $Box(n#3))
           ==> !$Unbox(read($Heap, n#3, M3.Node.marked)): bool)
         && (Set#IsMember(S#0, $Box(n#3))
           ==> $Unbox(read($Heap, n#3, M3.Node.childrenVisited)): int == LitInt(0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id842"} $_reverifyPost ==> $Unbox(read($Heap, root#0, M3.Node.marked)): bool;
  free ensures true;
  ensures {:id "id843"} $_reverifyPost
     ==> (forall n#5: ref :: 
      { $Unbox(read($Heap, n#5, M3.Node.children)): Seq } 
        { $Unbox(read($Heap, n#5, M3.Node.marked)): bool } 
        { Set#IsMember(S#0, $Box(n#5)) } 
      $Is(n#5, Tclass.M3.Node())
         ==> 
        Set#IsMember(S#0, $Box(n#5)) && $Unbox(read($Heap, n#5, M3.Node.marked)): bool
         ==> (forall ch#5: ref :: 
          { $Unbox(read($Heap, ch#5, M3.Node.marked)): bool } 
            { Seq#Contains($Unbox(read($Heap, n#5, M3.Node.children)): Seq, $Box(ch#5)) } 
          $Is(ch#5, Tclass.M3.Node?())
             ==> 
            Seq#Contains($Unbox(read($Heap, n#5, M3.Node.children)): Seq, $Box(ch#5))
               && ch#5 != null
             ==> $Unbox(read($Heap, ch#5, M3.Node.marked)): bool));
  free ensures (forall n#7: ref :: 
    { M3.__default.Reachable(old($Heap), root#0, n#7, S#0) } 
      { $Unbox(read($Heap, n#7, M3.Node.marked)): bool } 
      { Set#IsMember(S#0, $Box(n#7)) } 
    $Is(n#7, Tclass.M3.Node())
       ==> 
      Set#IsMember(S#0, $Box(n#7))
       ==> 
      $Unbox(read($Heap, n#7, M3.Node.marked)): bool
       ==> M3.__default.Reachable#canCall(old($Heap), root#0, n#7, S#0));
  ensures {:id "id844"} $_reverifyPost
     ==> (forall n#7: ref :: 
      { M3.__default.Reachable(old($Heap), root#0, n#7, S#0) } 
        { $Unbox(read($Heap, n#7, M3.Node.marked)): bool } 
        { Set#IsMember(S#0, $Box(n#7)) } 
      $Is(n#7, Tclass.M3.Node())
         ==> 
        Set#IsMember(S#0, $Box(n#7)) && $Unbox(read($Heap, n#7, M3.Node.marked)): bool
         ==> M3.__default.Reachable(old($Heap), root#0, n#7, S#0));
  free ensures true;
  ensures {:id "id845"} $_reverifyPost
     ==> (forall n#9: ref :: 
      { $Unbox(read(old($Heap), n#9, M3.Node.children)): Seq } 
        { $Unbox(read($Heap, n#9, M3.Node.children)): Seq } 
        { $Unbox(read(old($Heap), n#9, M3.Node.childrenVisited)): int } 
        { $Unbox(read($Heap, n#9, M3.Node.childrenVisited)): int } 
        { Set#IsMember(S#0, $Box(n#9)) } 
      $Is(n#9, Tclass.M3.Node())
         ==> (Set#IsMember(S#0, $Box(n#9))
             ==> $Unbox(read($Heap, n#9, M3.Node.childrenVisited)): int
               == $Unbox(read(old($Heap), n#9, M3.Node.childrenVisited)): int)
           && (Set#IsMember(S#0, $Box(n#9))
             ==> Seq#Equal($Unbox(read($Heap, n#9, M3.Node.children)): Seq, 
              $Unbox(read(old($Heap), n#9, M3.Node.children)): Seq)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(S#0, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.M3.Path() : Ty
uses {
// Tclass.M3.Path Tag
axiom Tag(Tclass.M3.Path()) == Tagclass.M3.Path
   && TagFamily(Tclass.M3.Path()) == tytagFamily$Path;
}

const unique Tagclass.M3.Path: TyTag;

// Box/unbox axiom for Tclass.M3.Path
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M3.Path()) } 
  $IsBox(bx, Tclass.M3.Path())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M3.Path()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.SchorrWaite (correctness)"} Impl$$M3.__default.SchorrWaite(root#0: ref, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var unmarkedNodes#0: Set
     where $Is(unmarkedNodes#0, TSet(Tclass.M3.Node?()))
       && $IsAlloc(unmarkedNodes#0, TSet(Tclass.M3.Node?()), $Heap);
  var path#0: DatatypeType
     where $Is(path#0, Tclass.M3.Path()) && $IsAlloc(path#0, Tclass.M3.Path(), $Heap);
  var $rhs#0: DatatypeType;
  var $rhs#1: bool;
  var t#0: ref
     where $Is(t#0, Tclass.M3.Node?()) && $IsAlloc(t#0, Tclass.M3.Node?(), $Heap);
  var p#0: ref
     where $Is(p#0, Tclass.M3.Node?()) && $IsAlloc(p#0, Tclass.M3.Node?(), $Heap);
  var $rhs#2: ref;
  var $rhs#3: ref;
  var newtype$check#2: ref;
  var stackNodes#0: Seq
     where $Is(stackNodes#0, TSeq(Tclass.M3.Node()))
       && $IsAlloc(stackNodes#0, TSeq(Tclass.M3.Node()), $Heap);
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $decr_init$loop#01: Seq;
  var $decr_init$loop#02: int;
  var $w$loop#0: bool;
  var i#0: int;
  var newtype$check#3: ref;
  var n#10: ref;
  var n#12: ref;
  var n#14: ref;
  var j#0: int;
  var n#16: ref;
  var newtype$check#4: ref;
  var k#0: int;
  var k#2: int;
  var n#18: ref;
  var ch#6: ref;
  var newtype$check#5: ref;
  var n#20: ref;
  var j#2: int;
  var newtype$check#6: ref;
  var ##source#1: ref;
  var ##p#0: DatatypeType;
  var ##sink#1: ref;
  var ##S#1: Set;
  var n#24: ref;
  var pth#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##source#2: ref;
  var ##p#1: DatatypeType;
  var ##sink#2: ref;
  var ##S#2: Set;
  var n#26: ref;
  var ##source#3: ref;
  var ##sink#3: ref;
  var ##S#3: Set;
  var n#28: ref;
  var $decr$loop#00: Set;
  var $decr$loop#01: Seq;
  var $decr$loop#02: int;
  var $rhs#0_0_0: int;
  var newtype$check#0_0_0: ref;
  var $obj2: ref;
  var $rhs#0_0_1: ref;
  var $rhs#0_0_2: ref;
  var $rhs#0_0_3: Seq;
  var $rhs#0_0_4: int;
  var newtype$check#0_1_0: ref;
  var $rhs#0_1_0_0: int;
  var $rhs#0_1_1_0: ref;
  var $rhs#0_1_1_1: ref;
  var $rhs#0_1_1_2: Seq;
  var $rhs#0_1_1_3: bool;
  var $rhs#0_1_1_4: DatatypeType;
  var n#30: ref;
  var ch#8: ref;
  var newtype$check#7: ref;
  var n#32: ref;
  var ##source#4: ref;
  var ##sink#4: ref;
  var ##S#4: Set;

    // AddMethodImpl: SchorrWaite, Impl$$M3.__default.SchorrWaite
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(S#0, $Box($o)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(254,29)
    assume true;
    assume true;
    unmarkedNodes#0 := Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(root#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(199,20)
    assume true;
    assume true;
    path#0 := Lit(#M3.Path.Empty());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(200,23)
    assume {:id "id848"} root#0 != null;
    assume true;
    assume {:id "id849"} $_ModifiesFrame[root#0, M3.Node.pathFromRoot];
    assume true;
    $rhs#0 := path#0;
    $Heap := update($Heap, root#0, M3.Node.pathFromRoot, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(56,17)
    assume {:id "id852"} root#0 != null;
    assume true;
    assume {:id "id853"} $_ModifiesFrame[root#0, M3.Node.marked];
    assume true;
    $rhs#1 := Lit(true);
    $Heap := update($Heap, root#0, M3.Node.marked, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(57,21)
    assume true;
    assume true;
    assume true;
    $rhs#2 := root#0;
    newtype$check#2 := null;
    assume true;
    $rhs#3 := null;
    t#0 := $rhs#2;
    p#0 := $rhs#3;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(58,37)
    assume true;
    assume true;
    stackNodes#0 := Lit(Seq#Empty(): Seq);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(256,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := unmarkedNodes#0;
    $decr_init$loop#01 := stackNodes#0;
    $decr_init$loop#02 := Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq)
       - $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      free invariant {:id "id863"} $w$loop#0
         ==> (forall i#1: int :: 
          { $Unbox(Seq#Index(stackNodes#0, i#1)): ref } 
          LitInt(0) <= i#1 && i#1 < Seq#Length(stackNodes#0)
             ==> Set#IsMember(S#0, Seq#Index(stackNodes#0, i#1)));
      free invariant true;
      free invariant {:id "id865"} $w$loop#0 ==> Set#IsMember(S#0, $Box(t#0));
      free invariant {:id "id866"} $w$loop#0 ==> !Seq#Contains(stackNodes#0, $Box(t#0));
      free invariant true;
      free invariant {:id "id869"} $w$loop#0
         ==> p#0
           == (if Seq#Length(stackNodes#0) == LitInt(0)
             then null
             else $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref);
      free invariant true;
      free invariant {:id "id873"} $w$loop#0
         ==> (forall n#11: ref :: 
          { $Unbox(read($Heap, n#11, M3.Node.children)): Seq } 
            { $Unbox(read($Heap, n#11, M3.Node.childrenVisited)): int } 
            { Seq#Contains(stackNodes#0, $Box(n#11)) } 
          $Is(n#11, Tclass.M3.Node())
             ==> 
            Seq#Contains(stackNodes#0, $Box(n#11))
             ==> $Unbox(read($Heap, n#11, M3.Node.childrenVisited)): int
               < Seq#Length($Unbox(read($Heap, n#11, M3.Node.children)): Seq));
      free invariant true;
      free invariant {:id "id877"} $w$loop#0
         ==> $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
           <= Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq);
      free invariant true;
      free invariant {:id "id880"} $w$loop#0
         ==> (forall n#13: ref :: 
          { $Unbox(read($Heap, n#13, M3.Node.childrenVisited)): int } 
            { Seq#Contains(stackNodes#0, $Box(n#13)) } 
            { Set#IsMember(S#0, $Box(n#13)) } 
          $Is(n#13, Tclass.M3.Node())
             ==> 
            Set#IsMember(S#0, $Box(n#13))
               && !Seq#Contains(stackNodes#0, $Box(n#13))
               && n#13 != t#0
             ==> $Unbox(read($Heap, n#13, M3.Node.childrenVisited)): int == LitInt(0));
      free invariant true;
      free invariant {:id "id892"} $w$loop#0
         ==> (forall n#15: ref :: 
          { $Unbox(read($Heap, n#15, M3.Node.childrenVisited)): int } 
            { $Unbox(read(old($Heap), n#15, M3.Node.children)): Seq } 
            { $Unbox(read($Heap, n#15, M3.Node.children)): Seq } 
            { Seq#Contains(stackNodes#0, $Box(n#15)) } 
          $Is(n#15, Tclass.M3.Node())
             ==> (Seq#Contains(stackNodes#0, $Box(n#15))
                 ==> Seq#Length($Unbox(read($Heap, n#15, M3.Node.children)): Seq)
                   == Seq#Length($Unbox(read(old($Heap), n#15, M3.Node.children)): Seq))
               && (Seq#Contains(stackNodes#0, $Box(n#15))
                 ==> (forall j#1: int :: 
                  { $Unbox(Seq#Index($Unbox(read(old($Heap), n#15, M3.Node.children)): Seq, j#1)): ref } 
                    { $Unbox(Seq#Index($Unbox(read($Heap, n#15, M3.Node.children)): Seq, j#1)): ref } 
                  LitInt(0) <= j#1
                       && j#1 < Seq#Length($Unbox(read($Heap, n#15, M3.Node.children)): Seq)
                     ==> j#1 == $Unbox(read($Heap, n#15, M3.Node.childrenVisited)): int
                       || $Unbox(Seq#Index($Unbox(read($Heap, n#15, M3.Node.children)): Seq, j#1)): ref
                         == $Unbox(Seq#Index($Unbox(read(old($Heap), n#15, M3.Node.children)): Seq, j#1)): ref)));
      free invariant true;
      free invariant {:id "id897"} $w$loop#0
         ==> (forall n#17: ref :: 
          { $Unbox(read(old($Heap), n#17, M3.Node.children)): Seq } 
            { $Unbox(read($Heap, n#17, M3.Node.children)): Seq } 
            { Seq#Contains(stackNodes#0, $Box(n#17)) } 
            { Set#IsMember(S#0, $Box(n#17)) } 
          $Is(n#17, Tclass.M3.Node())
             ==> 
            Set#IsMember(S#0, $Box(n#17)) && !Seq#Contains(stackNodes#0, $Box(n#17))
             ==> Seq#Equal($Unbox(read($Heap, n#17, M3.Node.children)): Seq, 
              $Unbox(read(old($Heap), n#17, M3.Node.children)): Seq));
      free invariant true;
      free invariant {:id "id904"} $w$loop#0
         ==> 
        0 < Seq#Length(stackNodes#0)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref, M3.Node.children)): Seq, 
              $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref, M3.Node.childrenVisited)): int)): ref
           == null;
      free invariant true;
      free invariant {:id "id912"} $w$loop#0
         ==> (forall k#1: int :: 
          { $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.childrenVisited)): int } 
            { $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.children)): Seq } 
          0 < k#1 && k#1 < Seq#Length(stackNodes#0)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.children)): Seq, 
                  $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.childrenVisited)): int)): ref
               == $Unbox(Seq#Index(stackNodes#0, k#1 - 1)): ref);
      free invariant true;
      free invariant {:id "id921"} $w$loop#0
         ==> (forall k#3: int :: 
          { $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#3)): ref, M3.Node.childrenVisited)): int } 
            { $Unbox(Seq#Index(stackNodes#0, k#3)): ref } 
          LitInt(0) <= k#3 && k#3 < Seq#Length(stackNodes#0) - 1
             ==> $Unbox(Seq#Index($Unbox(read(old($Heap), $Unbox(Seq#Index(stackNodes#0, k#3)): ref, M3.Node.children)): Seq, 
                  $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#3)): ref, M3.Node.childrenVisited)): int)): ref
               == $Unbox(Seq#Index(stackNodes#0, k#3 + 1)): ref);
      free invariant true;
      free invariant {:id "id929"} $w$loop#0
         ==> 
        0 < Seq#Length(stackNodes#0)
         ==> $Unbox(Seq#Index($Unbox(read(old($Heap), 
                  $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref, 
                  M3.Node.children)): Seq, 
              $Unbox(read($Heap, 
                  $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref, 
                  M3.Node.childrenVisited)): int)): ref
           == t#0;
      free invariant true;
      free invariant {:id "id932"} $w$loop#0 ==> $Unbox(read($Heap, root#0, M3.Node.marked)): bool;
      free invariant true;
      free invariant {:id "id937"} $w$loop#0
         ==> (forall n#19: ref :: 
          { $Unbox(read($Heap, n#19, M3.Node.children)): Seq } 
            { Seq#Contains(stackNodes#0, $Box(n#19)) } 
            { $Unbox(read($Heap, n#19, M3.Node.marked)): bool } 
            { Set#IsMember(S#0, $Box(n#19)) } 
          $Is(n#19, Tclass.M3.Node())
             ==> 
            Set#IsMember(S#0, $Box(n#19))
               && $Unbox(read($Heap, n#19, M3.Node.marked)): bool
               && !Seq#Contains(stackNodes#0, $Box(n#19))
               && n#19 != t#0
             ==> (forall ch#7: ref :: 
              { $Unbox(read($Heap, ch#7, M3.Node.marked)): bool } 
                { Seq#Contains($Unbox(read($Heap, n#19, M3.Node.children)): Seq, $Box(ch#7)) } 
              $Is(ch#7, Tclass.M3.Node?())
                 ==> 
                Seq#Contains($Unbox(read($Heap, n#19, M3.Node.children)): Seq, $Box(ch#7))
                   && ch#7 != null
                 ==> $Unbox(read($Heap, ch#7, M3.Node.marked)): bool));
      free invariant true;
      free invariant {:id "id946"} $w$loop#0
         ==> (forall n#21: ref :: 
          { $Unbox(read($Heap, n#21, M3.Node.marked)): bool } 
            { Seq#Contains(stackNodes#0, $Box(n#21)) } 
          $Is(n#21, Tclass.M3.Node()) && $IsAlloc(n#21, Tclass.M3.Node(), $Heap)
             ==> 
            Seq#Contains(stackNodes#0, $Box(n#21)) || n#21 == t#0
             ==> $Unbox(read($Heap, n#21, M3.Node.marked)): bool);
      free invariant {:id "id947"} $w$loop#0
         ==> (forall n#21: ref :: 
          { $Unbox(read($Heap, n#21, M3.Node.children)): Seq } 
            { $Unbox(read($Heap, n#21, M3.Node.childrenVisited)): int } 
            { Seq#Contains(stackNodes#0, $Box(n#21)) } 
          $Is(n#21, Tclass.M3.Node()) && $IsAlloc(n#21, Tclass.M3.Node(), $Heap)
             ==> 
            Seq#Contains(stackNodes#0, $Box(n#21)) || n#21 == t#0
             ==> (forall j#3: int :: 
              { $Unbox(Seq#Index($Unbox(read($Heap, n#21, M3.Node.children)): Seq, j#3)): ref } 
              LitInt(0) <= j#3
                   && j#3 < $Unbox(read($Heap, n#21, M3.Node.childrenVisited)): int
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, n#21, M3.Node.children)): Seq, j#3)): ref
                     == null
                   || $Unbox(read($Heap, 
                      $Unbox(Seq#Index($Unbox(read($Heap, n#21, M3.Node.children)): Seq, j#3)): ref, 
                      M3.Node.marked)): bool));
      free invariant $w$loop#0
         ==> 
        $IsAllocBox($Box(path#0), Tclass.M3.Path(), old($Heap))
         ==> M3.__default.ReachableVia#canCall(old($Heap), root#0, path#0, t#0, S#0);
      free invariant {:id "id954"} $w$loop#0 ==> $IsAllocBox($Box(path#0), Tclass.M3.Path(), old($Heap));
      free invariant {:id "id955"} $w$loop#0
         ==> 
        M3.__default.ReachableVia#canCall(old($Heap), root#0, path#0, t#0, S#0)
         ==> M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, path#0, t#0, S#0)
           || (M3.Path.Empty_q(path#0) ==> root#0 == t#0);
      free invariant {:id "id956"} $w$loop#0
         ==> 
        M3.__default.ReachableVia#canCall(old($Heap), root#0, path#0, t#0, S#0)
         ==> M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, path#0, t#0, S#0)
           || (!M3.Path.Empty_q(path#0)
             ==> (var n#22 := M3.Path._h1(path#0); 
              (var prefix#0 := M3.Path._h0(path#0); Set#IsMember(S#0, $Box(n#22)))));
      free invariant {:id "id957"} $w$loop#0
         ==> 
        M3.__default.ReachableVia#canCall(old($Heap), root#0, path#0, t#0, S#0)
         ==> M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, path#0, t#0, S#0)
           || (!M3.Path.Empty_q(path#0)
             ==> (var n#22 := M3.Path._h1(path#0); 
              (var prefix#0 := M3.Path._h0(path#0); 
                Seq#Contains($Unbox(read(old($Heap), n#22, M3.Node.children)): Seq, $Box(t#0)))));
      free invariant {:id "id958"} $w$loop#0
         ==> 
        M3.__default.ReachableVia#canCall(old($Heap), root#0, path#0, t#0, S#0)
         ==> M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, path#0, t#0, S#0)
           || (!M3.Path.Empty_q(path#0)
             ==> (var n#22 := M3.Path._h1(path#0); 
              (var prefix#0 := M3.Path._h0(path#0); 
                M3.__default.ReachableVia($LS($LS($LZ)), old($Heap), root#0, prefix#0, n#22, S#0))));
      free invariant {:id "id959"} $w$loop#0
         ==> M3.__default.ReachableVia#canCall(old($Heap), root#0, path#0, t#0, S#0)
           && 
          M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, path#0, t#0, S#0)
           && (if M3.Path.Empty_q(path#0)
             then root#0 == t#0
             else (var n#23 := M3.Path._h1(path#0); 
              (var prefix#1 := M3.Path._h0(path#0); 
                Set#IsMember(S#0, $Box(n#23))
                   && Seq#Contains($Unbox(read(old($Heap), n#23, M3.Node.children)): Seq, $Box(t#0))
                   && M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, prefix#1, n#23, S#0))));
      free invariant $w$loop#0
         ==> (forall n#25: ref :: 
          { M3.__default.ReachableVia($LS($LZ), 
              old($Heap), 
              root#0, 
              $Unbox(read(old($Heap), n#25, M3.Node.pathFromRoot)): DatatypeType, 
              n#25, 
              S#0) } 
            { $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType } 
            { $Unbox(read($Heap, n#25, M3.Node.marked)): bool } 
            { Set#IsMember(S#0, $Box(n#25)) } 
          $Is(n#25, Tclass.M3.Node())
             ==> 
            Set#IsMember(S#0, $Box(n#25))
             ==> 
            $Unbox(read($Heap, n#25, M3.Node.marked)): bool
             ==> (var pth#0 := $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType; 
              $IsAllocBox($Box(pth#0), Tclass.M3.Path(), old($Heap))
                 ==> M3.__default.ReachableVia#canCall(old($Heap), root#0, pth#0, n#25, S#0)));
      free invariant {:id "id969"} $w$loop#0
         ==> (forall n#25: ref :: 
          { M3.__default.ReachableVia($LS($LZ), 
              old($Heap), 
              root#0, 
              $Unbox(read(old($Heap), n#25, M3.Node.pathFromRoot)): DatatypeType, 
              n#25, 
              S#0) } 
            { $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType } 
            { $Unbox(read($Heap, n#25, M3.Node.marked)): bool } 
            { Set#IsMember(S#0, $Box(n#25)) } 
          $Is(n#25, Tclass.M3.Node())
             ==> 
            Set#IsMember(S#0, $Box(n#25)) && $Unbox(read($Heap, n#25, M3.Node.marked)): bool
             ==> (var pth#0 := $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType; 
              $IsAllocBox($Box(pth#0), Tclass.M3.Path(), old($Heap))
                 && M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, pth#0, n#25, S#0)));
      free invariant $w$loop#0
         ==> (forall n#27: ref :: 
          { M3.__default.Reachable(old($Heap), root#0, n#27, S#0) } 
            { $Unbox(read($Heap, n#27, M3.Node.marked)): bool } 
            { Set#IsMember(S#0, $Box(n#27)) } 
          $Is(n#27, Tclass.M3.Node())
             ==> 
            Set#IsMember(S#0, $Box(n#27))
             ==> 
            $Unbox(read($Heap, n#27, M3.Node.marked)): bool
             ==> M3.__default.Reachable#canCall(old($Heap), root#0, n#27, S#0));
      free invariant {:id "id975"} $w$loop#0
         ==> (forall n#27: ref :: 
          { M3.__default.Reachable(old($Heap), root#0, n#27, S#0) } 
            { $Unbox(read($Heap, n#27, M3.Node.marked)): bool } 
            { Set#IsMember(S#0, $Box(n#27)) } 
          $Is(n#27, Tclass.M3.Node())
             ==> 
            Set#IsMember(S#0, $Box(n#27)) && $Unbox(read($Heap, n#27, M3.Node.marked)): bool
             ==> M3.__default.Reachable(old($Heap), root#0, n#27, S#0));
      free invariant true;
      invariant {:id "id978"} $w$loop#0
         ==> (forall n#29: ref :: 
          { Set#IsMember(unmarkedNodes#0, $Box(n#29)) } 
            { $Unbox(read($Heap, n#29, M3.Node.marked)): bool } 
            { Set#IsMember(S#0, $Box(n#29)) } 
          $Is(n#29, Tclass.M3.Node())
             ==> 
            Set#IsMember(S#0, $Box(n#29))
               && !$Unbox(read($Heap, n#29, M3.Node.marked)): bool
             ==> Set#IsMember(unmarkedNodes#0, $Box(n#29)));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || Set#IsMember(S#0, $Box($o)));
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant Set#Subset(unmarkedNodes#0, $decr_init$loop#00)
         && (Set#Equal(unmarkedNodes#0, $decr_init$loop#00)
           ==> Seq#Rank(stackNodes#0) <= Seq#Rank($decr_init$loop#01)
             && (Seq#Rank(stackNodes#0) == Seq#Rank($decr_init$loop#01)
               ==> Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq)
                   - $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
                 <= $decr_init$loop#02));
    {
        if (!$w$loop#0)
        {
            // Begin Comprehension WF check
            havoc i#0;
            if (true)
            {
                if (LitInt(0) <= i#0)
                {
                }

                if (LitInt(0) <= i#0 && i#0 < Seq#Length(stackNodes#0))
                {
                    assume {:id "id861"} {:subsumption 0} 0 <= i#0 && i#0 < Seq#Length(stackNodes#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id862"} (forall i#1: int :: 
              { $Unbox(Seq#Index(stackNodes#0, i#1)): ref } 
              LitInt(0) <= i#1 && i#1 < Seq#Length(stackNodes#0)
                 ==> Set#IsMember(S#0, Seq#Index(stackNodes#0, i#1)));
            if (Set#IsMember(S#0, $Box(t#0)))
            {
            }

            assume true;
            assume {:id "id864"} Set#IsMember(S#0, $Box(t#0)) && !Seq#Contains(stackNodes#0, $Box(t#0));
            if (Seq#Length(stackNodes#0) == LitInt(0))
            {
                newtype$check#3 := null;
            }
            else
            {
                assume {:id "id867"} {:subsumption 0} 0 <= Seq#Length(stackNodes#0) - 1
                   && Seq#Length(stackNodes#0) - 1 < Seq#Length(stackNodes#0);
            }

            assume true;
            assume {:id "id868"} p#0
               == (if Seq#Length(stackNodes#0) == LitInt(0)
                 then null
                 else $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref);
            // Begin Comprehension WF check
            havoc n#10;
            if ($Is(n#10, Tclass.M3.Node()) && $IsAlloc(n#10, Tclass.M3.Node(), $Heap))
            {
                if (Seq#Contains(stackNodes#0, $Box(n#10)))
                {
                    assume {:id "id870"} {:subsumption 0} n#10 != null;
                    assume {:id "id871"} {:subsumption 0} n#10 != null;
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id872"} (forall n#11: ref :: 
              { $Unbox(read($Heap, n#11, M3.Node.children)): Seq } 
                { $Unbox(read($Heap, n#11, M3.Node.childrenVisited)): int } 
                { Seq#Contains(stackNodes#0, $Box(n#11)) } 
              $Is(n#11, Tclass.M3.Node())
                 ==> 
                Seq#Contains(stackNodes#0, $Box(n#11))
                 ==> $Unbox(read($Heap, n#11, M3.Node.childrenVisited)): int
                   < Seq#Length($Unbox(read($Heap, n#11, M3.Node.children)): Seq));
            assume {:id "id874"} {:subsumption 0} t#0 != null;
            assume {:id "id875"} {:subsumption 0} t#0 != null;
            assume true;
            assume {:id "id876"} $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
               <= Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq);
            // Begin Comprehension WF check
            havoc n#12;
            if ($Is(n#12, Tclass.M3.Node()) && $IsAlloc(n#12, Tclass.M3.Node(), $Heap))
            {
                if (Set#IsMember(S#0, $Box(n#12)))
                {
                }

                if (Set#IsMember(S#0, $Box(n#12)) && !Seq#Contains(stackNodes#0, $Box(n#12)))
                {
                }

                if (Set#IsMember(S#0, $Box(n#12))
                   && !Seq#Contains(stackNodes#0, $Box(n#12))
                   && n#12 != t#0)
                {
                    assume {:id "id878"} {:subsumption 0} n#12 != null;
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id879"} (forall n#13: ref :: 
              { $Unbox(read($Heap, n#13, M3.Node.childrenVisited)): int } 
                { Seq#Contains(stackNodes#0, $Box(n#13)) } 
                { Set#IsMember(S#0, $Box(n#13)) } 
              $Is(n#13, Tclass.M3.Node())
                 ==> 
                Set#IsMember(S#0, $Box(n#13))
                   && !Seq#Contains(stackNodes#0, $Box(n#13))
                   && n#13 != t#0
                 ==> $Unbox(read($Heap, n#13, M3.Node.childrenVisited)): int == LitInt(0));
            // Begin Comprehension WF check
            havoc n#14;
            if ($Is(n#14, Tclass.M3.Node()) && $IsAlloc(n#14, Tclass.M3.Node(), $Heap))
            {
                if (Seq#Contains(stackNodes#0, $Box(n#14)))
                {
                    assume {:id "id881"} {:subsumption 0} n#14 != null;
                    assume {:id "id882"} {:subsumption 0} n#14 != null;
                    assume {:id "id883"} $IsAlloc(n#14, Tclass.M3.Node(), old($Heap));
                    if (Seq#Length($Unbox(read($Heap, n#14, M3.Node.children)): Seq)
                       == Seq#Length($Unbox(read(old($Heap), n#14, M3.Node.children)): Seq))
                    {
                        // Begin Comprehension WF check
                        havoc j#0;
                        if (true)
                        {
                            if (LitInt(0) <= j#0)
                            {
                                assume {:id "id884"} {:subsumption 0} n#14 != null;
                            }

                            if (LitInt(0) <= j#0
                               && j#0 < Seq#Length($Unbox(read($Heap, n#14, M3.Node.children)): Seq))
                            {
                                assume {:id "id885"} {:subsumption 0} n#14 != null;
                                if (j#0 != $Unbox(read($Heap, n#14, M3.Node.childrenVisited)): int)
                                {
                                    assume {:id "id886"} {:subsumption 0} n#14 != null;
                                    assume {:id "id887"} {:subsumption 0} 0 <= j#0 && j#0 < Seq#Length($Unbox(read($Heap, n#14, M3.Node.children)): Seq);
                                    assume {:id "id888"} {:subsumption 0} n#14 != null;
                                    assume {:id "id889"} $IsAlloc(n#14, Tclass.M3.Node(), old($Heap));
                                    assume {:id "id890"} {:subsumption 0} 0 <= j#0
                                       && j#0 < Seq#Length($Unbox(read(old($Heap), n#14, M3.Node.children)): Seq);
                                }
                            }
                        }

                        // End Comprehension WF check
                    }
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id891"} (forall n#15: ref :: 
              { $Unbox(read($Heap, n#15, M3.Node.childrenVisited)): int } 
                { $Unbox(read(old($Heap), n#15, M3.Node.children)): Seq } 
                { $Unbox(read($Heap, n#15, M3.Node.children)): Seq } 
                { Seq#Contains(stackNodes#0, $Box(n#15)) } 
              $Is(n#15, Tclass.M3.Node())
                 ==> (Seq#Contains(stackNodes#0, $Box(n#15))
                     ==> Seq#Length($Unbox(read($Heap, n#15, M3.Node.children)): Seq)
                       == Seq#Length($Unbox(read(old($Heap), n#15, M3.Node.children)): Seq))
                   && (Seq#Contains(stackNodes#0, $Box(n#15))
                     ==> (forall j#1: int :: 
                      { $Unbox(Seq#Index($Unbox(read(old($Heap), n#15, M3.Node.children)): Seq, j#1)): ref } 
                        { $Unbox(Seq#Index($Unbox(read($Heap, n#15, M3.Node.children)): Seq, j#1)): ref } 
                      LitInt(0) <= j#1
                           && j#1 < Seq#Length($Unbox(read($Heap, n#15, M3.Node.children)): Seq)
                         ==> j#1 == $Unbox(read($Heap, n#15, M3.Node.childrenVisited)): int
                           || $Unbox(Seq#Index($Unbox(read($Heap, n#15, M3.Node.children)): Seq, j#1)): ref
                             == $Unbox(Seq#Index($Unbox(read(old($Heap), n#15, M3.Node.children)): Seq, j#1)): ref)));
            // Begin Comprehension WF check
            havoc n#16;
            if ($Is(n#16, Tclass.M3.Node()) && $IsAlloc(n#16, Tclass.M3.Node(), $Heap))
            {
                if (Set#IsMember(S#0, $Box(n#16)))
                {
                }

                if (Set#IsMember(S#0, $Box(n#16)) && !Seq#Contains(stackNodes#0, $Box(n#16)))
                {
                    assume {:id "id893"} {:subsumption 0} n#16 != null;
                    assume {:id "id894"} {:subsumption 0} n#16 != null;
                    assume {:id "id895"} $IsAlloc(n#16, Tclass.M3.Node(), old($Heap));
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id896"} (forall n#17: ref :: 
              { $Unbox(read(old($Heap), n#17, M3.Node.children)): Seq } 
                { $Unbox(read($Heap, n#17, M3.Node.children)): Seq } 
                { Seq#Contains(stackNodes#0, $Box(n#17)) } 
                { Set#IsMember(S#0, $Box(n#17)) } 
              $Is(n#17, Tclass.M3.Node())
                 ==> 
                Set#IsMember(S#0, $Box(n#17)) && !Seq#Contains(stackNodes#0, $Box(n#17))
                 ==> Seq#Equal($Unbox(read($Heap, n#17, M3.Node.children)): Seq, 
                  $Unbox(read(old($Heap), n#17, M3.Node.children)): Seq));
            if (0 < Seq#Length(stackNodes#0))
            {
                assume {:id "id898"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(stackNodes#0);
                assume {:id "id899"} {:subsumption 0} $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref != null;
                assume {:id "id900"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(stackNodes#0);
                assume {:id "id901"} {:subsumption 0} $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref != null;
                assume {:id "id902"} {:subsumption 0} 0
                     <= $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref, M3.Node.childrenVisited)): int
                   && $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref, M3.Node.childrenVisited)): int
                     < Seq#Length($Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref, M3.Node.children)): Seq);
                newtype$check#4 := null;
            }

            assume true;
            assume {:id "id903"} 0 < Seq#Length(stackNodes#0)
               ==> $Unbox(Seq#Index($Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref, M3.Node.children)): Seq, 
                    $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref, M3.Node.childrenVisited)): int)): ref
                 == null;
            // Begin Comprehension WF check
            havoc k#0;
            if (true)
            {
                if (0 < k#0)
                {
                }

                if (0 < k#0 && k#0 < Seq#Length(stackNodes#0))
                {
                    assume {:id "id905"} {:subsumption 0} 0 <= k#0 && k#0 < Seq#Length(stackNodes#0);
                    assume {:id "id906"} {:subsumption 0} $Unbox(Seq#Index(stackNodes#0, k#0)): ref != null;
                    assume {:id "id907"} {:subsumption 0} 0 <= k#0 && k#0 < Seq#Length(stackNodes#0);
                    assume {:id "id908"} {:subsumption 0} $Unbox(Seq#Index(stackNodes#0, k#0)): ref != null;
                    assume {:id "id909"} {:subsumption 0} 0
                         <= $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#0)): ref, M3.Node.childrenVisited)): int
                       && $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#0)): ref, M3.Node.childrenVisited)): int
                         < Seq#Length($Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#0)): ref, M3.Node.children)): Seq);
                    assume {:id "id910"} {:subsumption 0} 0 <= k#0 - 1 && k#0 - 1 < Seq#Length(stackNodes#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id911"} (forall k#1: int :: 
              { $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.childrenVisited)): int } 
                { $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.children)): Seq } 
              0 < k#1 && k#1 < Seq#Length(stackNodes#0)
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.children)): Seq, 
                      $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.childrenVisited)): int)): ref
                   == $Unbox(Seq#Index(stackNodes#0, k#1 - 1)): ref);
            // Begin Comprehension WF check
            havoc k#2;
            if (true)
            {
                if (LitInt(0) <= k#2)
                {
                }

                if (LitInt(0) <= k#2 && k#2 < Seq#Length(stackNodes#0) - 1)
                {
                    assume {:id "id913"} {:subsumption 0} 0 <= k#2 && k#2 < Seq#Length(stackNodes#0);
                    assume {:id "id914"} {:subsumption 0} $Unbox(Seq#Index(stackNodes#0, k#2)): ref != null;
                    assume {:id "id915"} $IsAlloc($Unbox(Seq#Index(stackNodes#0, k#2)): ref, Tclass.M3.Node(), old($Heap));
                    assume {:id "id916"} {:subsumption 0} 0 <= k#2 && k#2 < Seq#Length(stackNodes#0);
                    assume {:id "id917"} {:subsumption 0} $Unbox(Seq#Index(stackNodes#0, k#2)): ref != null;
                    assume {:id "id918"} {:subsumption 0} 0
                         <= $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#2)): ref, M3.Node.childrenVisited)): int
                       && $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#2)): ref, M3.Node.childrenVisited)): int
                         < Seq#Length($Unbox(read(old($Heap), $Unbox(Seq#Index(stackNodes#0, k#2)): ref, M3.Node.children)): Seq);
                    assume {:id "id919"} {:subsumption 0} 0 <= k#2 + 1 && k#2 + 1 < Seq#Length(stackNodes#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id920"} (forall k#3: int :: 
              { $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#3)): ref, M3.Node.childrenVisited)): int } 
                { $Unbox(Seq#Index(stackNodes#0, k#3)): ref } 
              LitInt(0) <= k#3 && k#3 < Seq#Length(stackNodes#0) - 1
                 ==> $Unbox(Seq#Index($Unbox(read(old($Heap), $Unbox(Seq#Index(stackNodes#0, k#3)): ref, M3.Node.children)): Seq, 
                      $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#3)): ref, M3.Node.childrenVisited)): int)): ref
                   == $Unbox(Seq#Index(stackNodes#0, k#3 + 1)): ref);
            if (0 < Seq#Length(stackNodes#0))
            {
                assume {:id "id922"} {:subsumption 0} 0 <= Seq#Length(stackNodes#0) - 1
                   && Seq#Length(stackNodes#0) - 1 < Seq#Length(stackNodes#0);
                assume {:id "id923"} {:subsumption 0} $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref != null;
                assume {:id "id924"} $IsAlloc($Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref, 
                  Tclass.M3.Node(), 
                  old($Heap));
                assume {:id "id925"} {:subsumption 0} 0 <= Seq#Length(stackNodes#0) - 1
                   && Seq#Length(stackNodes#0) - 1 < Seq#Length(stackNodes#0);
                assume {:id "id926"} {:subsumption 0} $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref != null;
                assume {:id "id927"} {:subsumption 0} 0
                     <= $Unbox(read($Heap, 
                        $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref, 
                        M3.Node.childrenVisited)): int
                   && $Unbox(read($Heap, 
                        $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref, 
                        M3.Node.childrenVisited)): int
                     < Seq#Length($Unbox(read(old($Heap), 
                          $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref, 
                          M3.Node.children)): Seq);
            }

            assume true;
            assume {:id "id928"} 0 < Seq#Length(stackNodes#0)
               ==> $Unbox(Seq#Index($Unbox(read(old($Heap), 
                        $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref, 
                        M3.Node.children)): Seq, 
                    $Unbox(read($Heap, 
                        $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref, 
                        M3.Node.childrenVisited)): int)): ref
                 == t#0;
            assume {:id "id930"} {:subsumption 0} root#0 != null;
            assume true;
            assume {:id "id931"} $Unbox(read($Heap, root#0, M3.Node.marked)): bool;
            // Begin Comprehension WF check
            havoc n#18;
            if ($Is(n#18, Tclass.M3.Node()) && $IsAlloc(n#18, Tclass.M3.Node(), $Heap))
            {
                if (Set#IsMember(S#0, $Box(n#18)))
                {
                    assume {:id "id933"} {:subsumption 0} n#18 != null;
                }

                if (Set#IsMember(S#0, $Box(n#18)) && $Unbox(read($Heap, n#18, M3.Node.marked)): bool)
                {
                }

                if (Set#IsMember(S#0, $Box(n#18))
                   && $Unbox(read($Heap, n#18, M3.Node.marked)): bool
                   && !Seq#Contains(stackNodes#0, $Box(n#18)))
                {
                }

                if (Set#IsMember(S#0, $Box(n#18))
                   && $Unbox(read($Heap, n#18, M3.Node.marked)): bool
                   && !Seq#Contains(stackNodes#0, $Box(n#18))
                   && n#18 != t#0)
                {
                    // Begin Comprehension WF check
                    havoc ch#6;
                    if ($Is(ch#6, Tclass.M3.Node?()) && $IsAlloc(ch#6, Tclass.M3.Node?(), $Heap))
                    {
                        assume {:id "id934"} {:subsumption 0} n#18 != null;
                        if (Seq#Contains($Unbox(read($Heap, n#18, M3.Node.children)): Seq, $Box(ch#6)))
                        {
                            newtype$check#5 := null;
                        }

                        if (Seq#Contains($Unbox(read($Heap, n#18, M3.Node.children)): Seq, $Box(ch#6))
                           && ch#6 != null)
                        {
                            assume {:id "id935"} {:subsumption 0} ch#6 != null;
                        }
                    }

                    // End Comprehension WF check
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id936"} (forall n#19: ref :: 
              { $Unbox(read($Heap, n#19, M3.Node.children)): Seq } 
                { Seq#Contains(stackNodes#0, $Box(n#19)) } 
                { $Unbox(read($Heap, n#19, M3.Node.marked)): bool } 
                { Set#IsMember(S#0, $Box(n#19)) } 
              $Is(n#19, Tclass.M3.Node())
                 ==> 
                Set#IsMember(S#0, $Box(n#19))
                   && $Unbox(read($Heap, n#19, M3.Node.marked)): bool
                   && !Seq#Contains(stackNodes#0, $Box(n#19))
                   && n#19 != t#0
                 ==> (forall ch#7: ref :: 
                  { $Unbox(read($Heap, ch#7, M3.Node.marked)): bool } 
                    { Seq#Contains($Unbox(read($Heap, n#19, M3.Node.children)): Seq, $Box(ch#7)) } 
                  $Is(ch#7, Tclass.M3.Node?())
                     ==> 
                    Seq#Contains($Unbox(read($Heap, n#19, M3.Node.children)): Seq, $Box(ch#7))
                       && ch#7 != null
                     ==> $Unbox(read($Heap, ch#7, M3.Node.marked)): bool));
            // Begin Comprehension WF check
            havoc n#20;
            if ($Is(n#20, Tclass.M3.Node()) && $IsAlloc(n#20, Tclass.M3.Node(), $Heap))
            {
                if (!Seq#Contains(stackNodes#0, $Box(n#20)))
                {
                }

                if (Seq#Contains(stackNodes#0, $Box(n#20)) || n#20 == t#0)
                {
                    assume {:id "id938"} {:subsumption 0} n#20 != null;
                    if ($Unbox(read($Heap, n#20, M3.Node.marked)): bool)
                    {
                        // Begin Comprehension WF check
                        havoc j#2;
                        if (true)
                        {
                            if (LitInt(0) <= j#2)
                            {
                                assume {:id "id939"} {:subsumption 0} n#20 != null;
                            }

                            if (LitInt(0) <= j#2
                               && j#2 < $Unbox(read($Heap, n#20, M3.Node.childrenVisited)): int)
                            {
                                assume {:id "id940"} {:subsumption 0} n#20 != null;
                                assume {:id "id941"} {:subsumption 0} 0 <= j#2 && j#2 < Seq#Length($Unbox(read($Heap, n#20, M3.Node.children)): Seq);
                                newtype$check#6 := null;
                                if ($Unbox(Seq#Index($Unbox(read($Heap, n#20, M3.Node.children)): Seq, j#2)): ref
                                   != null)
                                {
                                    assume {:id "id942"} {:subsumption 0} n#20 != null;
                                    assume {:id "id943"} {:subsumption 0} 0 <= j#2 && j#2 < Seq#Length($Unbox(read($Heap, n#20, M3.Node.children)): Seq);
                                    assume {:id "id944"} {:subsumption 0} $Unbox(Seq#Index($Unbox(read($Heap, n#20, M3.Node.children)): Seq, j#2)): ref
                                       != null;
                                }
                            }
                        }

                        // End Comprehension WF check
                    }
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id945"} (forall n#21: ref :: 
                { $Unbox(read($Heap, n#21, M3.Node.marked)): bool } 
                  { Seq#Contains(stackNodes#0, $Box(n#21)) } 
                $Is(n#21, Tclass.M3.Node()) && $IsAlloc(n#21, Tclass.M3.Node(), $Heap)
                   ==> 
                  Seq#Contains(stackNodes#0, $Box(n#21)) || n#21 == t#0
                   ==> $Unbox(read($Heap, n#21, M3.Node.marked)): bool)
               && (forall n#21: ref :: 
                { $Unbox(read($Heap, n#21, M3.Node.children)): Seq } 
                  { $Unbox(read($Heap, n#21, M3.Node.childrenVisited)): int } 
                  { Seq#Contains(stackNodes#0, $Box(n#21)) } 
                $Is(n#21, Tclass.M3.Node()) && $IsAlloc(n#21, Tclass.M3.Node(), $Heap)
                   ==> 
                  Seq#Contains(stackNodes#0, $Box(n#21)) || n#21 == t#0
                   ==> (forall j#3: int :: 
                    { $Unbox(Seq#Index($Unbox(read($Heap, n#21, M3.Node.children)): Seq, j#3)): ref } 
                    LitInt(0) <= j#3
                         && j#3 < $Unbox(read($Heap, n#21, M3.Node.childrenVisited)): int
                       ==> $Unbox(Seq#Index($Unbox(read($Heap, n#21, M3.Node.children)): Seq, j#3)): ref
                           == null
                         || $Unbox(read($Heap, 
                            $Unbox(Seq#Index($Unbox(read($Heap, n#21, M3.Node.children)): Seq, j#3)): ref, 
                            M3.Node.marked)): bool));
            if ($IsAllocBox($Box(path#0), Tclass.M3.Path(), old($Heap)))
            {
                ##source#1 := root#0;
                ##p#0 := path#0;
                assume {:id "id948"} $Is(t#0, Tclass.M3.Node());
                ##sink#1 := t#0;
                ##S#1 := S#0;
                assume {:id "id949"} $IsAlloc(root#0, Tclass.M3.Node(), old($Heap));
                assume {:id "id950"} $IsAlloc(path#0, Tclass.M3.Path(), old($Heap));
                assume {:id "id951"} $IsAlloc(t#0, Tclass.M3.Node?(), old($Heap));
                assume {:id "id952"} $IsAlloc(S#0, TSet(Tclass.M3.Node()), old($Heap));
                assume M3.__default.ReachableVia#canCall(old($Heap), root#0, path#0, t#0, S#0);
            }

            assume $IsAllocBox($Box(path#0), Tclass.M3.Path(), old($Heap))
               ==> M3.__default.ReachableVia#canCall(old($Heap), root#0, path#0, t#0, S#0);
            assume {:id "id953"} $IsAllocBox($Box(path#0), Tclass.M3.Path(), old($Heap))
               && M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, path#0, t#0, S#0);
            // Begin Comprehension WF check
            havoc n#24;
            if ($Is(n#24, Tclass.M3.Node()) && $IsAlloc(n#24, Tclass.M3.Node(), $Heap))
            {
                if (Set#IsMember(S#0, $Box(n#24)))
                {
                    assume {:id "id960"} {:subsumption 0} n#24 != null;
                }

                if (Set#IsMember(S#0, $Box(n#24)) && $Unbox(read($Heap, n#24, M3.Node.marked)): bool)
                {
                    havoc pth#Z#0;
                    assume {:id "id961"} {:subsumption 0} n#24 != null;
                    assume {:id "id962"} let#0#0#0 == $Unbox(read($Heap, n#24, M3.Node.pathFromRoot)): DatatypeType;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(let#0#0#0, Tclass.M3.Path());
                    assume {:id "id963"} pth#Z#0 == let#0#0#0;
                    if ($IsAllocBox($Box(pth#Z#0), Tclass.M3.Path(), old($Heap)))
                    {
                        ##source#2 := root#0;
                        ##p#1 := pth#Z#0;
                        ##sink#2 := n#24;
                        ##S#2 := S#0;
                        assume {:id "id964"} $IsAlloc(root#0, Tclass.M3.Node(), old($Heap));
                        assume {:id "id965"} $IsAlloc(pth#Z#0, Tclass.M3.Path(), old($Heap));
                        assume {:id "id966"} $IsAlloc(n#24, Tclass.M3.Node(), old($Heap));
                        assume {:id "id967"} $IsAlloc(S#0, TSet(Tclass.M3.Node()), old($Heap));
                        assume M3.__default.ReachableVia#canCall(old($Heap), root#0, pth#Z#0, n#24, S#0);
                    }
                }
            }

            // End Comprehension WF check
            assume (forall n#25: ref :: 
              { M3.__default.ReachableVia($LS($LZ), 
                  old($Heap), 
                  root#0, 
                  $Unbox(read(old($Heap), n#25, M3.Node.pathFromRoot)): DatatypeType, 
                  n#25, 
                  S#0) } 
                { $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType } 
                { $Unbox(read($Heap, n#25, M3.Node.marked)): bool } 
                { Set#IsMember(S#0, $Box(n#25)) } 
              $Is(n#25, Tclass.M3.Node())
                 ==> 
                Set#IsMember(S#0, $Box(n#25))
                 ==> 
                $Unbox(read($Heap, n#25, M3.Node.marked)): bool
                 ==> (var pth#0 := $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType; 
                  $IsAllocBox($Box(pth#0), Tclass.M3.Path(), old($Heap))
                     ==> M3.__default.ReachableVia#canCall(old($Heap), root#0, pth#0, n#25, S#0)));
            assume {:id "id968"} (forall n#25: ref :: 
              { M3.__default.ReachableVia($LS($LZ), 
                  old($Heap), 
                  root#0, 
                  $Unbox(read(old($Heap), n#25, M3.Node.pathFromRoot)): DatatypeType, 
                  n#25, 
                  S#0) } 
                { $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType } 
                { $Unbox(read($Heap, n#25, M3.Node.marked)): bool } 
                { Set#IsMember(S#0, $Box(n#25)) } 
              $Is(n#25, Tclass.M3.Node())
                 ==> 
                Set#IsMember(S#0, $Box(n#25)) && $Unbox(read($Heap, n#25, M3.Node.marked)): bool
                 ==> (var pth#0 := $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType; 
                  $IsAllocBox($Box(pth#0), Tclass.M3.Path(), old($Heap))
                     && M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, pth#0, n#25, S#0)));
            // Begin Comprehension WF check
            havoc n#26;
            if ($Is(n#26, Tclass.M3.Node()) && $IsAlloc(n#26, Tclass.M3.Node(), $Heap))
            {
                if (Set#IsMember(S#0, $Box(n#26)))
                {
                    assume {:id "id970"} {:subsumption 0} n#26 != null;
                }

                if (Set#IsMember(S#0, $Box(n#26)) && $Unbox(read($Heap, n#26, M3.Node.marked)): bool)
                {
                    ##source#3 := root#0;
                    ##sink#3 := n#26;
                    ##S#3 := S#0;
                    assume {:id "id971"} $IsAlloc(root#0, Tclass.M3.Node(), old($Heap));
                    assume {:id "id972"} $IsAlloc(n#26, Tclass.M3.Node(), old($Heap));
                    assume {:id "id973"} $IsAlloc(S#0, TSet(Tclass.M3.Node()), old($Heap));
                    assume M3.__default.Reachable#canCall(old($Heap), root#0, n#26, S#0);
                }
            }

            // End Comprehension WF check
            assume (forall n#27: ref :: 
              { M3.__default.Reachable(old($Heap), root#0, n#27, S#0) } 
                { $Unbox(read($Heap, n#27, M3.Node.marked)): bool } 
                { Set#IsMember(S#0, $Box(n#27)) } 
              $Is(n#27, Tclass.M3.Node())
                 ==> 
                Set#IsMember(S#0, $Box(n#27))
                 ==> 
                $Unbox(read($Heap, n#27, M3.Node.marked)): bool
                 ==> M3.__default.Reachable#canCall(old($Heap), root#0, n#27, S#0));
            assume {:id "id974"} (forall n#27: ref :: 
              { M3.__default.Reachable(old($Heap), root#0, n#27, S#0) } 
                { $Unbox(read($Heap, n#27, M3.Node.marked)): bool } 
                { Set#IsMember(S#0, $Box(n#27)) } 
              $Is(n#27, Tclass.M3.Node())
                 ==> 
                Set#IsMember(S#0, $Box(n#27)) && $Unbox(read($Heap, n#27, M3.Node.marked)): bool
                 ==> M3.__default.Reachable(old($Heap), root#0, n#27, S#0));
            // Begin Comprehension WF check
            havoc n#28;
            if ($Is(n#28, Tclass.M3.Node()) && $IsAlloc(n#28, Tclass.M3.Node(), $Heap))
            {
                if (Set#IsMember(S#0, $Box(n#28)))
                {
                    assert {:id "id976"} {:subsumption 0} n#28 != null;
                }

                if (Set#IsMember(S#0, $Box(n#28))
                   && !$Unbox(read($Heap, n#28, M3.Node.marked)): bool)
                {
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id977"} (forall n#29: ref :: 
              { Set#IsMember(unmarkedNodes#0, $Box(n#29)) } 
                { $Unbox(read($Heap, n#29, M3.Node.marked)): bool } 
                { Set#IsMember(S#0, $Box(n#29)) } 
              $Is(n#29, Tclass.M3.Node())
                 ==> 
                Set#IsMember(S#0, $Box(n#29))
                   && !$Unbox(read($Heap, n#29, M3.Node.marked)): bool
                 ==> Set#IsMember(unmarkedNodes#0, $Box(n#29)));
            assume true;
            assume true;
            assert {:id "id979"} t#0 != null;
            assert {:id "id980"} t#0 != null;
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := unmarkedNodes#0;
        $decr$loop#01 := stackNodes#0;
        $decr$loop#02 := Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq)
           - $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(260,7)
        assume {:id "id981"} t#0 != null;
        assume {:id "id982"} t#0 != null;
        assume true;
        if ($Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
           == Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq))
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(110,27)
            assume {:id "id983"} t#0 != null;
            assume true;
            assume {:id "id984"} $_ModifiesFrame[t#0, M3.Node.childrenVisited];
            assume {:id "id985"} $Is(LitInt(0), Tclass._System.nat());
            assume true;
            $rhs#0_0_0 := LitInt(0);
            $Heap := update($Heap, t#0, M3.Node.childrenVisited, $Box($rhs#0_0_0));
            assume $IsGoodHeap($Heap);
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy[M1][M2][M3](111,9)
            newtype$check#0_0_0 := null;
            assume true;
            if (p#0 == null)
            {
                push;
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy[M1][M2][M3](111,24)
                pop;
                pop;
                pop;
                goto after_0;

                pop;
            }
            else
            {
            }

            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(113,26)
            assume true;
            assume true;
            assume {:id "id988"} p#0 != null;
            assume true;
            $obj2 := p#0;
            assume {:id "id989"} $_ModifiesFrame[$obj2, M3.Node.children];
            assume true;
            $rhs#0_0_1 := p#0;
            assume {:id "id991"} p#0 != null;
            assume {:id "id992"} p#0 != null;
            assume {:id "id993"} 0 <= $Unbox(read($Heap, p#0, M3.Node.childrenVisited)): int
               && $Unbox(read($Heap, p#0, M3.Node.childrenVisited)): int
                 < Seq#Length($Unbox(read($Heap, p#0, M3.Node.children)): Seq);
            assume true;
            $rhs#0_0_2 := $Unbox(Seq#Index($Unbox(read($Heap, p#0, M3.Node.children)): Seq, 
                $Unbox(read($Heap, p#0, M3.Node.childrenVisited)): int)): ref;
            assume {:id "id995"} p#0 != null;
            assume {:id "id996"} p#0 != null;
            assume {:id "id997"} 0 <= $Unbox(read($Heap, p#0, M3.Node.childrenVisited)): int
               && $Unbox(read($Heap, p#0, M3.Node.childrenVisited)): int
                 < Seq#Length($Unbox(read($Heap, p#0, M3.Node.children)): Seq);
            assume true;
            $rhs#0_0_3 := Seq#Update($Unbox(read($Heap, p#0, M3.Node.children)): Seq, 
              $Unbox(read($Heap, p#0, M3.Node.childrenVisited)): int, 
              $Box(t#0));
            t#0 := $rhs#0_0_1;
            p#0 := $rhs#0_0_2;
            $Heap := update($Heap, $obj2, M3.Node.children, $Box($rhs#0_0_3));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(114,20)
            assume true;
            assume {:id "id1002"} 0 <= Seq#Length(stackNodes#0) - 1
               && Seq#Length(stackNodes#0) - 1 <= Seq#Length(stackNodes#0);
            assume true;
            stackNodes#0 := Seq#Take(stackNodes#0, Seq#Length(stackNodes#0) - 1);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(115,27)
            assume {:id "id1004"} t#0 != null;
            assume true;
            assume {:id "id1005"} $_ModifiesFrame[t#0, M3.Node.childrenVisited];
            assume {:id "id1006"} t#0 != null;
            assume {:id "id1007"} $Is($Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int + 1, Tclass._System.nat());
            assume true;
            $rhs#0_0_4 := $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int + 1;
            $Heap := update($Heap, t#0, M3.Node.childrenVisited, $Box($rhs#0_0_4));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(224,14)
            assume true;
            assume {:id "id1010"} t#0 != null;
            assume true;
            path#0 := $Unbox(read($Heap, t#0, M3.Node.pathFromRoot)): DatatypeType;
            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(261,14)
            assume {:id "id1012"} t#0 != null;
            assume {:id "id1013"} t#0 != null;
            assume {:id "id1014"} 0 <= $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
               && $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
                 < Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq);
            newtype$check#0_1_0 := null;
            if ($Unbox(Seq#Index($Unbox(read($Heap, t#0, M3.Node.children)): Seq, 
                  $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int)): ref
               != null)
            {
                assume {:id "id1015"} t#0 != null;
                assume {:id "id1016"} t#0 != null;
                assume {:id "id1017"} 0 <= $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
                   && $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
                     < Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq);
                assume {:id "id1018"} $Unbox(Seq#Index($Unbox(read($Heap, t#0, M3.Node.children)): Seq, 
                      $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int)): ref
                   != null;
            }

            assume true;
            if ($Unbox(Seq#Index($Unbox(read($Heap, t#0, M3.Node.children)): Seq, 
                    $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int)): ref
                 == null
               || $Unbox(read($Heap, 
                  $Unbox(Seq#Index($Unbox(read($Heap, t#0, M3.Node.children)): Seq, 
                      $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int)): ref, 
                  M3.Node.marked)): bool)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(119,27)
                assume {:id "id1019"} t#0 != null;
                assume true;
                assume {:id "id1020"} $_ModifiesFrame[t#0, M3.Node.childrenVisited];
                assume {:id "id1021"} t#0 != null;
                assume {:id "id1022"} $Is($Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int + 1, Tclass._System.nat());
                assume true;
                $rhs#0_1_0_0 := $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int + 1;
                $Heap := update($Heap, t#0, M3.Node.childrenVisited, $Box($rhs#0_1_0_0));
                assume $IsGoodHeap($Heap);
                pop;
            }
            else
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(229,14)
                assume true;
                assume {:id "id1025"} $Is(t#0, Tclass.M3.Node());
                assume true;
                path#0 := #M3.Path.Extend(path#0, t#0);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(123,20)
                assume true;
                assume {:id "id1027"} $Is(Seq#Append(stackNodes#0, Seq#Build(Seq#Empty(): Seq, $Box(t#0))), 
                  TSeq(Tclass.M3.Node()));
                assume true;
                stackNodes#0 := Seq#Append(stackNodes#0, Seq#Build(Seq#Empty(): Seq, $Box(t#0)));
                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(124,26)
                assume true;
                assume true;
                assume {:id "id1029"} t#0 != null;
                assume true;
                $obj2 := t#0;
                assume {:id "id1030"} $_ModifiesFrame[$obj2, M3.Node.children];
                assume {:id "id1031"} t#0 != null;
                assume {:id "id1032"} t#0 != null;
                assume {:id "id1033"} 0 <= $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
                   && $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
                     < Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq);
                assume true;
                $rhs#0_1_1_0 := $Unbox(Seq#Index($Unbox(read($Heap, t#0, M3.Node.children)): Seq, 
                    $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int)): ref;
                assume true;
                $rhs#0_1_1_1 := t#0;
                assume {:id "id1036"} t#0 != null;
                assume {:id "id1037"} t#0 != null;
                assume {:id "id1038"} 0 <= $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
                   && $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
                     < Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq);
                assume true;
                $rhs#0_1_1_2 := Seq#Update($Unbox(read($Heap, t#0, M3.Node.children)): Seq, 
                  $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int, 
                  $Box(p#0));
                t#0 := $rhs#0_1_1_0;
                p#0 := $rhs#0_1_1_1;
                $Heap := update($Heap, $obj2, M3.Node.children, $Box($rhs#0_1_1_2));
                assume $IsGoodHeap($Heap);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(125,18)
                assume {:id "id1043"} t#0 != null;
                assume true;
                assume {:id "id1044"} $_ModifiesFrame[t#0, M3.Node.marked];
                assume true;
                $rhs#0_1_1_3 := Lit(true);
                $Heap := update($Heap, t#0, M3.Node.marked, $Box($rhs#0_1_1_3));
                assume $IsGoodHeap($Heap);
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy[M2][M3](168,9)
                assume true;
                assume {:id "id1047"} !Seq#Contains(stackNodes#0, $Box(t#0));
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(231,24)
                assume {:id "id1048"} t#0 != null;
                assume true;
                assume {:id "id1049"} $_ModifiesFrame[t#0, M3.Node.pathFromRoot];
                assume true;
                $rhs#0_1_1_4 := path#0;
                $Heap := update($Heap, t#0, M3.Node.pathFromRoot, $Box($rhs#0_1_1_4));
                assume $IsGoodHeap($Heap);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(264,23)
                assume true;
                assume true;
                unmarkedNodes#0 := Set#Difference(unmarkedNodes#0, Set#UnionOne(Set#Empty(): Set, $Box(t#0)));
                pop;
            }

            pop;
        }

        pop;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy(256,5)
        assert {:id "id1053"} 0 <= $decr$loop#02
           || (Set#Subset(unmarkedNodes#0, $decr$loop#00)
             && !Set#Subset($decr$loop#00, unmarkedNodes#0))
           || Seq#Rank(stackNodes#0) < Seq#Rank($decr$loop#01)
           || Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq)
               - $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
             == $decr$loop#02;
        assert {:id "id1054"} (Set#Subset(unmarkedNodes#0, $decr$loop#00)
             && !Set#Subset($decr$loop#00, unmarkedNodes#0))
           || (Set#Equal(unmarkedNodes#0, $decr$loop#00)
             && (Seq#Rank(stackNodes#0) < Seq#Rank($decr$loop#01)
               || (Seq#Rank(stackNodes#0) == Seq#Rank($decr$loop#01)
                 && Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq)
                     - $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
                   < $decr$loop#02)));
        assume (forall i#1: int :: 
            { $Unbox(Seq#Index(stackNodes#0, i#1)): ref } 
            LitInt(0) <= i#1 && i#1 < Seq#Length(stackNodes#0)
               ==> Set#IsMember(S#0, Seq#Index(stackNodes#0, i#1)))
           ==> 
          Set#IsMember(S#0, $Box(t#0))
           ==> 
          !Seq#Contains(stackNodes#0, $Box(t#0))
           ==> 
          p#0
             == (if Seq#Length(stackNodes#0) == LitInt(0)
               then null
               else $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref)
           ==> 
          (forall n#11: ref :: 
            { $Unbox(read($Heap, n#11, M3.Node.children)): Seq } 
              { $Unbox(read($Heap, n#11, M3.Node.childrenVisited)): int } 
              { Seq#Contains(stackNodes#0, $Box(n#11)) } 
            $Is(n#11, Tclass.M3.Node())
               ==> 
              Seq#Contains(stackNodes#0, $Box(n#11))
               ==> $Unbox(read($Heap, n#11, M3.Node.childrenVisited)): int
                 < Seq#Length($Unbox(read($Heap, n#11, M3.Node.children)): Seq))
           ==> 
          $Unbox(read($Heap, t#0, M3.Node.childrenVisited)): int
             <= Seq#Length($Unbox(read($Heap, t#0, M3.Node.children)): Seq)
           ==> 
          (forall n#13: ref :: 
            { $Unbox(read($Heap, n#13, M3.Node.childrenVisited)): int } 
              { Seq#Contains(stackNodes#0, $Box(n#13)) } 
              { Set#IsMember(S#0, $Box(n#13)) } 
            $Is(n#13, Tclass.M3.Node())
               ==> 
              Set#IsMember(S#0, $Box(n#13))
                 && !Seq#Contains(stackNodes#0, $Box(n#13))
                 && n#13 != t#0
               ==> $Unbox(read($Heap, n#13, M3.Node.childrenVisited)): int == LitInt(0))
           ==> 
          (forall n#15: ref :: 
            { $Unbox(read($Heap, n#15, M3.Node.childrenVisited)): int } 
              { $Unbox(read(old($Heap), n#15, M3.Node.children)): Seq } 
              { $Unbox(read($Heap, n#15, M3.Node.children)): Seq } 
              { Seq#Contains(stackNodes#0, $Box(n#15)) } 
            $Is(n#15, Tclass.M3.Node())
               ==> (Seq#Contains(stackNodes#0, $Box(n#15))
                   ==> Seq#Length($Unbox(read($Heap, n#15, M3.Node.children)): Seq)
                     == Seq#Length($Unbox(read(old($Heap), n#15, M3.Node.children)): Seq))
                 && (Seq#Contains(stackNodes#0, $Box(n#15))
                   ==> (forall j#1: int :: 
                    { $Unbox(Seq#Index($Unbox(read(old($Heap), n#15, M3.Node.children)): Seq, j#1)): ref } 
                      { $Unbox(Seq#Index($Unbox(read($Heap, n#15, M3.Node.children)): Seq, j#1)): ref } 
                    LitInt(0) <= j#1
                         && j#1 < Seq#Length($Unbox(read($Heap, n#15, M3.Node.children)): Seq)
                       ==> j#1 == $Unbox(read($Heap, n#15, M3.Node.childrenVisited)): int
                         || $Unbox(Seq#Index($Unbox(read($Heap, n#15, M3.Node.children)): Seq, j#1)): ref
                           == $Unbox(Seq#Index($Unbox(read(old($Heap), n#15, M3.Node.children)): Seq, j#1)): ref)))
           ==> 
          (forall n#17: ref :: 
            { $Unbox(read(old($Heap), n#17, M3.Node.children)): Seq } 
              { $Unbox(read($Heap, n#17, M3.Node.children)): Seq } 
              { Seq#Contains(stackNodes#0, $Box(n#17)) } 
              { Set#IsMember(S#0, $Box(n#17)) } 
            $Is(n#17, Tclass.M3.Node())
               ==> 
              Set#IsMember(S#0, $Box(n#17)) && !Seq#Contains(stackNodes#0, $Box(n#17))
               ==> Seq#Equal($Unbox(read($Heap, n#17, M3.Node.children)): Seq, 
                $Unbox(read(old($Heap), n#17, M3.Node.children)): Seq))
           ==> 
          (0 < Seq#Length(stackNodes#0)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref, M3.Node.children)): Seq, 
                $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, LitInt(0))): ref, M3.Node.childrenVisited)): int)): ref
             == null)
           ==> 
          (forall k#1: int :: 
            { $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.childrenVisited)): int } 
              { $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.children)): Seq } 
            0 < k#1 && k#1 < Seq#Length(stackNodes#0)
               ==> $Unbox(Seq#Index($Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.children)): Seq, 
                    $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#1)): ref, M3.Node.childrenVisited)): int)): ref
                 == $Unbox(Seq#Index(stackNodes#0, k#1 - 1)): ref)
           ==> 
          (forall k#3: int :: 
            { $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#3)): ref, M3.Node.childrenVisited)): int } 
              { $Unbox(Seq#Index(stackNodes#0, k#3)): ref } 
            LitInt(0) <= k#3 && k#3 < Seq#Length(stackNodes#0) - 1
               ==> $Unbox(Seq#Index($Unbox(read(old($Heap), $Unbox(Seq#Index(stackNodes#0, k#3)): ref, M3.Node.children)): Seq, 
                    $Unbox(read($Heap, $Unbox(Seq#Index(stackNodes#0, k#3)): ref, M3.Node.childrenVisited)): int)): ref
                 == $Unbox(Seq#Index(stackNodes#0, k#3 + 1)): ref)
           ==> 
          (0 < Seq#Length(stackNodes#0)
           ==> $Unbox(Seq#Index($Unbox(read(old($Heap), 
                    $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref, 
                    M3.Node.children)): Seq, 
                $Unbox(read($Heap, 
                    $Unbox(Seq#Index(stackNodes#0, Seq#Length(stackNodes#0) - 1)): ref, 
                    M3.Node.childrenVisited)): int)): ref
             == t#0)
           ==> 
          $Unbox(read($Heap, root#0, M3.Node.marked)): bool
           ==> 
          (forall n#19: ref :: 
            { $Unbox(read($Heap, n#19, M3.Node.children)): Seq } 
              { Seq#Contains(stackNodes#0, $Box(n#19)) } 
              { $Unbox(read($Heap, n#19, M3.Node.marked)): bool } 
              { Set#IsMember(S#0, $Box(n#19)) } 
            $Is(n#19, Tclass.M3.Node())
               ==> 
              Set#IsMember(S#0, $Box(n#19))
                 && $Unbox(read($Heap, n#19, M3.Node.marked)): bool
                 && !Seq#Contains(stackNodes#0, $Box(n#19))
                 && n#19 != t#0
               ==> (forall ch#7: ref :: 
                { $Unbox(read($Heap, ch#7, M3.Node.marked)): bool } 
                  { Seq#Contains($Unbox(read($Heap, n#19, M3.Node.children)): Seq, $Box(ch#7)) } 
                $Is(ch#7, Tclass.M3.Node?())
                   ==> 
                  Seq#Contains($Unbox(read($Heap, n#19, M3.Node.children)): Seq, $Box(ch#7))
                     && ch#7 != null
                   ==> $Unbox(read($Heap, ch#7, M3.Node.marked)): bool))
           ==> 
          (forall n#21: ref :: 
              { $Unbox(read($Heap, n#21, M3.Node.marked)): bool } 
                { Seq#Contains(stackNodes#0, $Box(n#21)) } 
              $Is(n#21, Tclass.M3.Node()) && $IsAlloc(n#21, Tclass.M3.Node(), $Heap)
                 ==> 
                Seq#Contains(stackNodes#0, $Box(n#21)) || n#21 == t#0
                 ==> $Unbox(read($Heap, n#21, M3.Node.marked)): bool)
             && (forall n#21: ref :: 
              { $Unbox(read($Heap, n#21, M3.Node.children)): Seq } 
                { $Unbox(read($Heap, n#21, M3.Node.childrenVisited)): int } 
                { Seq#Contains(stackNodes#0, $Box(n#21)) } 
              $Is(n#21, Tclass.M3.Node()) && $IsAlloc(n#21, Tclass.M3.Node(), $Heap)
                 ==> 
                Seq#Contains(stackNodes#0, $Box(n#21)) || n#21 == t#0
                 ==> (forall j#3: int :: 
                  { $Unbox(Seq#Index($Unbox(read($Heap, n#21, M3.Node.children)): Seq, j#3)): ref } 
                  LitInt(0) <= j#3
                       && j#3 < $Unbox(read($Heap, n#21, M3.Node.childrenVisited)): int
                     ==> $Unbox(Seq#Index($Unbox(read($Heap, n#21, M3.Node.children)): Seq, j#3)): ref
                         == null
                       || $Unbox(read($Heap, 
                          $Unbox(Seq#Index($Unbox(read($Heap, n#21, M3.Node.children)): Seq, j#3)): ref, 
                          M3.Node.marked)): bool))
           ==> 
          $IsAllocBox($Box(path#0), Tclass.M3.Path(), old($Heap))
           ==> M3.__default.ReachableVia#canCall(old($Heap), root#0, path#0, t#0, S#0)
             && (M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, path#0, t#0, S#0)
               ==> (forall n#25: ref :: 
                  { M3.__default.ReachableVia($LS($LZ), 
                      old($Heap), 
                      root#0, 
                      $Unbox(read(old($Heap), n#25, M3.Node.pathFromRoot)): DatatypeType, 
                      n#25, 
                      S#0) } 
                    { $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType } 
                    { $Unbox(read($Heap, n#25, M3.Node.marked)): bool } 
                    { Set#IsMember(S#0, $Box(n#25)) } 
                  $Is(n#25, Tclass.M3.Node())
                     ==> 
                    Set#IsMember(S#0, $Box(n#25))
                     ==> 
                    $Unbox(read($Heap, n#25, M3.Node.marked)): bool
                     ==> (var pth#0 := $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType; 
                      $IsAllocBox($Box(pth#0), Tclass.M3.Path(), old($Heap))
                         ==> M3.__default.ReachableVia#canCall(old($Heap), root#0, pth#0, n#25, S#0)))
                 && ((forall n#25: ref :: 
                    { M3.__default.ReachableVia($LS($LZ), 
                        old($Heap), 
                        root#0, 
                        $Unbox(read(old($Heap), n#25, M3.Node.pathFromRoot)): DatatypeType, 
                        n#25, 
                        S#0) } 
                      { $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType } 
                      { $Unbox(read($Heap, n#25, M3.Node.marked)): bool } 
                      { Set#IsMember(S#0, $Box(n#25)) } 
                    $Is(n#25, Tclass.M3.Node())
                       ==> 
                      Set#IsMember(S#0, $Box(n#25)) && $Unbox(read($Heap, n#25, M3.Node.marked)): bool
                       ==> (var pth#0 := $Unbox(read($Heap, n#25, M3.Node.pathFromRoot)): DatatypeType; 
                        $IsAllocBox($Box(pth#0), Tclass.M3.Path(), old($Heap))
                           && M3.__default.ReachableVia($LS($LZ), old($Heap), root#0, pth#0, n#25, S#0)))
                   ==> (forall n#27: ref :: 
                    { M3.__default.Reachable(old($Heap), root#0, n#27, S#0) } 
                      { $Unbox(read($Heap, n#27, M3.Node.marked)): bool } 
                      { Set#IsMember(S#0, $Box(n#27)) } 
                    $Is(n#27, Tclass.M3.Node())
                       ==> 
                      Set#IsMember(S#0, $Box(n#27))
                       ==> 
                      $Unbox(read($Heap, n#27, M3.Node.marked)): bool
                       ==> M3.__default.Reachable#canCall(old($Heap), root#0, n#27, S#0))));
    }

  after_0:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy[M3](236,5)
    assume {:id "id1055"} {:subsumption 0} root#0 != null;
    if ($Unbox(read($Heap, root#0, M3.Node.marked)): bool)
    {
        // Begin Comprehension WF check
        havoc n#30;
        if ($Is(n#30, Tclass.M3.Node()) && $IsAlloc(n#30, Tclass.M3.Node(), $Heap))
        {
            if (Set#IsMember(S#0, $Box(n#30)))
            {
                assume {:id "id1056"} {:subsumption 0} n#30 != null;
            }

            if (Set#IsMember(S#0, $Box(n#30)) && $Unbox(read($Heap, n#30, M3.Node.marked)): bool)
            {
                // Begin Comprehension WF check
                havoc ch#8;
                if ($Is(ch#8, Tclass.M3.Node?()) && $IsAlloc(ch#8, Tclass.M3.Node?(), $Heap))
                {
                    assume {:id "id1057"} {:subsumption 0} n#30 != null;
                    if (Seq#Contains($Unbox(read($Heap, n#30, M3.Node.children)): Seq, $Box(ch#8)))
                    {
                        newtype$check#7 := null;
                    }

                    if (Seq#Contains($Unbox(read($Heap, n#30, M3.Node.children)): Seq, $Box(ch#8))
                       && ch#8 != null)
                    {
                        assume {:id "id1058"} {:subsumption 0} ch#8 != null;
                    }
                }

                // End Comprehension WF check
            }
        }

        // End Comprehension WF check
    }

    assume true;
    assume true;
    assume true;
    assume {:id "id1059"} $Unbox(read($Heap, root#0, M3.Node.marked)): bool
       && (forall n#31: ref :: 
        { $Unbox(read($Heap, n#31, M3.Node.children)): Seq } 
          { $Unbox(read($Heap, n#31, M3.Node.marked)): bool } 
          { Set#IsMember(S#0, $Box(n#31)) } 
        $Is(n#31, Tclass.M3.Node())
           ==> 
          Set#IsMember(S#0, $Box(n#31)) && $Unbox(read($Heap, n#31, M3.Node.marked)): bool
           ==> (forall ch#9: ref :: 
            { $Unbox(read($Heap, ch#9, M3.Node.marked)): bool } 
              { Seq#Contains($Unbox(read($Heap, n#31, M3.Node.children)): Seq, $Box(ch#9)) } 
            $Is(ch#9, Tclass.M3.Node?())
               ==> 
              Seq#Contains($Unbox(read($Heap, n#31, M3.Node.children)): Seq, $Box(ch#9))
                 && ch#9 != null
               ==> $Unbox(read($Heap, ch#9, M3.Node.marked)): bool));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SchorrWaite-stages.dfy[M3](239,5)
    // Begin Comprehension WF check
    havoc n#32;
    if ($Is(n#32, Tclass.M3.Node()) && $IsAlloc(n#32, Tclass.M3.Node(), $Heap))
    {
        if (Set#IsMember(S#0, $Box(n#32)))
        {
            assume {:id "id1060"} {:subsumption 0} n#32 != null;
        }

        if (Set#IsMember(S#0, $Box(n#32)) && $Unbox(read($Heap, n#32, M3.Node.marked)): bool)
        {
            ##source#4 := root#0;
            ##sink#4 := n#32;
            ##S#4 := S#0;
            assume {:id "id1061"} $IsAlloc(root#0, Tclass.M3.Node(), old($Heap));
            assume {:id "id1062"} $IsAlloc(n#32, Tclass.M3.Node(), old($Heap));
            assume {:id "id1063"} $IsAlloc(S#0, TSet(Tclass.M3.Node()), old($Heap));
            assume M3.__default.Reachable#canCall(old($Heap), root#0, n#32, S#0);
        }
    }

    // End Comprehension WF check
    assume (forall n#33: ref :: 
      { M3.__default.Reachable(old($Heap), root#0, n#33, S#0) } 
        { $Unbox(read($Heap, n#33, M3.Node.marked)): bool } 
        { Set#IsMember(S#0, $Box(n#33)) } 
      $Is(n#33, Tclass.M3.Node())
         ==> 
        Set#IsMember(S#0, $Box(n#33))
         ==> 
        $Unbox(read($Heap, n#33, M3.Node.marked)): bool
         ==> M3.__default.Reachable#canCall(old($Heap), root#0, n#33, S#0));
    assume {:id "id1064"} (forall n#33: ref :: 
      { M3.__default.Reachable(old($Heap), root#0, n#33, S#0) } 
        { $Unbox(read($Heap, n#33, M3.Node.marked)): bool } 
        { Set#IsMember(S#0, $Box(n#33)) } 
      $Is(n#33, Tclass.M3.Node())
         ==> 
        Set#IsMember(S#0, $Box(n#33)) && $Unbox(read($Heap, n#33, M3.Node.marked)): bool
         ==> M3.__default.Reachable(old($Heap), root#0, n#33, S#0));
}



// function declaration for M3._default.Reachable
function M3.__default.Reachable($heap: Heap, source#0: ref, sink#0: ref, S#0: Set) : bool
uses {
// definition axiom for M3.__default.Reachable (revealed)
axiom {:id "id1065"} 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
    { M3.__default.Reachable($Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
    M3.__default.Reachable#canCall($Heap, source#0, sink#0, S#0)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(source#0, Tclass.M3.Node())
           && $Is(sink#0, Tclass.M3.Node())
           && $Is(S#0, TSet(Tclass.M3.Node())))
       ==> (forall via#0: DatatypeType :: 
          { M3.__default.ReachableVia($LS($LZ), $Heap, source#0, via#0, sink#0, S#0) } 
          $Is(via#0, Tclass.M3.Path())
             ==> M3.__default.ReachableVia#canCall($Heap, source#0, via#0, sink#0, S#0))
         && M3.__default.Reachable($Heap, source#0, sink#0, S#0)
           == (exists via#0: DatatypeType :: 
            { M3.__default.ReachableVia($LS($LZ), $Heap, source#0, via#0, sink#0, S#0) } 
            $Is(via#0, Tclass.M3.Path())
               && M3.__default.ReachableVia($LS($LZ), $Heap, source#0, via#0, sink#0, S#0)));
}

function M3.__default.Reachable#canCall($heap: Heap, source#0: ref, sink#0: ref, S#0: Set) : bool;

// frame axiom for M3.__default.Reachable
axiom (forall $h0: Heap, $h1: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), M3.__default.Reachable($h1, source#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (M3.__default.Reachable#canCall($h0, source#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.M3.Node())
           && $Is(sink#0, Tclass.M3.Node())
           && $Is(S#0, TSet(Tclass.M3.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> M3.__default.Reachable($h0, source#0, sink#0, S#0)
       == M3.__default.Reachable($h1, source#0, sink#0, S#0));

function M3.__default.Reachable#requires(Heap, ref, ref, Set) : bool;

// #requires axiom for M3.__default.Reachable
axiom (forall $Heap: Heap, source#0: ref, sink#0: ref, S#0: Set :: 
  { M3.__default.Reachable#requires($Heap, source#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.M3.Node())
       && $Is(sink#0, Tclass.M3.Node())
       && $Is(S#0, TSet(Tclass.M3.Node()))
     ==> M3.__default.Reachable#requires($Heap, source#0, sink#0, S#0) == true);

procedure {:verboseName "M3.Reachable (well-formedness)"} CheckWellformed$$M3.__default.Reachable(source#0: ref where $Is(source#0, Tclass.M3.Node()), 
    sink#0: ref where $Is(sink#0, Tclass.M3.Node()), 
    S#0: Set where $Is(S#0, TSet(Tclass.M3.Node())));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M3._default.ReachableVia
function M3.__default.ReachableVia($ly: LayerType, 
    $heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set)
   : bool
uses {
// consequence axiom for M3.__default.ReachableVia
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, 
      $Heap: Heap, 
      source#0: ref, 
      p#0: DatatypeType, 
      sink#0: ref, 
      S#0: Set :: 
    { M3.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0) } 
    M3.__default.ReachableVia#canCall($Heap, source#0, p#0, sink#0, S#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(source#0, Tclass.M3.Node())
           && $IsAlloc(source#0, Tclass.M3.Node(), $Heap)
           && 
          $Is(p#0, Tclass.M3.Path())
           && $IsAlloc(p#0, Tclass.M3.Path(), $Heap)
           && 
          $Is(sink#0, Tclass.M3.Node())
           && $IsAlloc(sink#0, Tclass.M3.Node(), $Heap)
           && 
          $Is(S#0, TSet(Tclass.M3.Node()))
           && $IsAlloc(S#0, TSet(Tclass.M3.Node()), $Heap))
       ==> (forall $olderHeap: Heap :: 
        { $OlderTag($olderHeap) } 
        $IsGoodHeap($olderHeap)
             && $OlderTag($olderHeap)
             && 
            M3.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0)
             && 
            $IsAlloc(source#0, Tclass.M3.Node(), $olderHeap)
             && $IsAlloc(sink#0, Tclass.M3.Node(), $olderHeap)
             && $IsAlloc(S#0, TSet(Tclass.M3.Node()), $olderHeap)
           ==> $IsAlloc(p#0, Tclass.M3.Path(), $olderHeap)));
// definition axiom for M3.__default.ReachableVia (revealed)
axiom {:id "id1068"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, 
      $Heap: Heap, 
      source#0: ref, 
      p#0: DatatypeType, 
      sink#0: ref, 
      S#0: Set :: 
    { M3.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0), $IsGoodHeap($Heap) } 
    M3.__default.ReachableVia#canCall($Heap, source#0, p#0, sink#0, S#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(source#0, Tclass.M3.Node())
           && $Is(p#0, Tclass.M3.Path())
           && $Is(sink#0, Tclass.M3.Node())
           && $Is(S#0, TSet(Tclass.M3.Node())))
       ==> (!M3.Path.Empty_q(p#0)
           ==> (var n#1 := M3.Path._h1(p#0); 
            (var prefix#1 := M3.Path._h0(p#0); 
              Set#IsMember(S#0, $Box(n#1))
                 ==> 
                Seq#Contains($Unbox(read($Heap, n#1, M3.Node.children)): Seq, $Box(sink#0))
                 ==> M3.__default.ReachableVia#canCall($Heap, source#0, prefix#1, n#1, S#0))))
         && M3.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0)
           == (if M3.Path.Empty_q(p#0)
             then source#0 == sink#0
             else (var n#0 := M3.Path._h1(p#0); 
              (var prefix#0 := M3.Path._h0(p#0); 
                Set#IsMember(S#0, $Box(n#0))
                   && Seq#Contains($Unbox(read($Heap, n#0, M3.Node.children)): Seq, $Box(sink#0))
                   && M3.__default.ReachableVia($ly, $Heap, source#0, prefix#0, n#0, S#0)))));
}

function M3.__default.ReachableVia#canCall($heap: Heap, source#0: ref, p#0: DatatypeType, sink#0: ref, S#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { M3.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0) } 
  M3.__default.ReachableVia($LS($ly), $Heap, source#0, p#0, sink#0, S#0)
     == M3.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { M3.__default.ReachableVia(AsFuelBottom($ly), $Heap, source#0, p#0, sink#0, S#0) } 
  M3.__default.ReachableVia($ly, $Heap, source#0, p#0, sink#0, S#0)
     == M3.__default.ReachableVia($LZ, $Heap, source#0, p#0, sink#0, S#0));

// frame axiom for M3.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), M3.__default.ReachableVia($ly, $h1, source#0, p#0, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (M3.__default.ReachableVia#canCall($h0, source#0, p#0, sink#0, S#0)
         || (
          $Is(source#0, Tclass.M3.Node())
           && $Is(p#0, Tclass.M3.Path())
           && $Is(sink#0, Tclass.M3.Node())
           && $Is(S#0, TSet(Tclass.M3.Node()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> M3.__default.ReachableVia($ly, $h0, source#0, p#0, sink#0, S#0)
       == M3.__default.ReachableVia($ly, $h1, source#0, p#0, sink#0, S#0));

function M3.__default.ReachableVia#requires(LayerType, Heap, ref, DatatypeType, ref, Set) : bool;

// #requires axiom for M3.__default.ReachableVia
axiom (forall $ly: LayerType, 
    $Heap: Heap, 
    source#0: ref, 
    p#0: DatatypeType, 
    sink#0: ref, 
    S#0: Set :: 
  { M3.__default.ReachableVia#requires($ly, $Heap, source#0, p#0, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(source#0, Tclass.M3.Node())
       && $Is(p#0, Tclass.M3.Path())
       && $Is(sink#0, Tclass.M3.Node())
       && $Is(S#0, TSet(Tclass.M3.Node()))
     ==> M3.__default.ReachableVia#requires($ly, $Heap, source#0, p#0, sink#0, S#0)
       == true);

procedure {:verboseName "M3.ReachableVia (well-formedness)"} CheckWellformed$$M3.__default.ReachableVia(source#0: ref where $Is(source#0, Tclass.M3.Node()), 
    p#0: DatatypeType where $Is(p#0, Tclass.M3.Path()), 
    sink#0: ref where $Is(sink#0, Tclass.M3.Node()), 
    S#0: Set where $Is(S#0, TSet(Tclass.M3.Node())));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures (forall $olderHeap: Heap :: 
    { $OlderTag($olderHeap) } 
    $IsGoodHeap($olderHeap)
         && $OlderTag($olderHeap)
         && 
        M3.__default.ReachableVia($LS($LZ), $Heap, source#0, p#0, sink#0, S#0)
         && 
        $IsAlloc(source#0, Tclass.M3.Node(), $olderHeap)
         && $IsAlloc(sink#0, Tclass.M3.Node(), $olderHeap)
         && $IsAlloc(S#0, TSet(Tclass.M3.Node()), $olderHeap)
       ==> $IsAlloc(p#0, Tclass.M3.Path(), $olderHeap));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3.ReachableVia (well-formedness)"} CheckWellformed$$M3.__default.ReachableVia(source#0: ref, p#0: DatatypeType, sink#0: ref, S#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: ref;
  var n#Z#0: ref;
  var let#0#0#0: ref;
  var prefix#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##source#0: ref;
  var ##p#0: DatatypeType;
  var ##sink#0: ref;
  var ##S#0: Set;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(S#0, $Box($o)));
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
        if (p#0 == #M3.Path.Empty())
        {
            assume {:id "id1078"} M3.__default.ReachableVia($LS($LZ), $Heap, source#0, p#0, sink#0, S#0)
               == 
              (source#0
               == sink#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(M3.__default.ReachableVia($LS($LZ), $Heap, source#0, p#0, sink#0, S#0), TBool);
            assume {:id "id1079"} b$reqreads#0;
            assume {:id "id1080"} b$reqreads#1;
            return;
        }
        else if (p#0 == #M3.Path.Extend(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass.M3.Path());
            assume $Is(_mcc#1#0, Tclass.M3.Node());
            havoc n#Z#0;
            assume {:id "id1069"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.M3.Node());
            assume {:id "id1070"} n#Z#0 == let#0#0#0;
            havoc prefix#Z#0;
            assume {:id "id1071"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass.M3.Path());
            assume {:id "id1072"} prefix#Z#0 == let#1#0#0;
            if (Set#IsMember(S#0, $Box(n#Z#0)))
            {
                assume {:id "id1073"} n#Z#0 != null;
                b$reqreads#0 := $_ReadsFrame[n#Z#0, M3.Node.children];
            }

            if (Set#IsMember(S#0, $Box(n#Z#0))
               && Seq#Contains($Unbox(read($Heap, n#Z#0, M3.Node.children)): Seq, $Box(sink#0)))
            {
                ##source#0 := source#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##source#0, Tclass.M3.Node(), $Heap);
                ##p#0 := prefix#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0, Tclass.M3.Path(), $Heap);
                ##sink#0 := n#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##sink#0, Tclass.M3.Node(), $Heap);
                ##S#0 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0, TSet(Tclass.M3.Node()), $Heap);
                b$reqreads#1 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(##S#0, $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assume {:id "id1074"} DtRank(##p#0) < DtRank(p#0);
                assume M3.__default.ReachableVia#canCall($Heap, source#0, prefix#Z#0, n#Z#0, S#0);
            }

            assume {:id "id1075"} M3.__default.ReachableVia($LS($LZ), $Heap, source#0, p#0, sink#0, S#0)
               == (
                Set#IsMember(S#0, $Box(n#Z#0))
                 && Seq#Contains($Unbox(read($Heap, n#Z#0, M3.Node.children)): Seq, $Box(sink#0))
                 && M3.__default.ReachableVia($LS($LZ), $Heap, source#0, prefix#Z#0, n#Z#0, S#0));
            assume Set#IsMember(S#0, $Box(n#Z#0))
               ==> 
              Seq#Contains($Unbox(read($Heap, n#Z#0, M3.Node.children)): Seq, $Box(sink#0))
               ==> M3.__default.ReachableVia#canCall($Heap, source#0, prefix#Z#0, n#Z#0, S#0);
            // CheckWellformedWithResult: any expression
            assume $Is(M3.__default.ReachableVia($LS($LZ), $Heap, source#0, p#0, sink#0, S#0), TBool);
            assume {:id "id1076"} b$reqreads#0;
            assume {:id "id1077"} b$reqreads#1;
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



const unique class.M3.Node?: ClassName;

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass.M3.Node?()) } 
  $Is($o, Tclass.M3.Node?()) <==> $o == null || dtype($o) == Tclass.M3.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.M3.Node?(), $h) } 
  $IsAlloc($o, Tclass.M3.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const M3.Node.pathFromRoot: Field
uses {
axiom FDim(M3.Node.pathFromRoot) == 0
   && FieldOfDecl(class.M3.Node?, field$pathFromRoot) == M3.Node.pathFromRoot
   && $IsGhostField(M3.Node.pathFromRoot);
}

// Node.pathFromRoot: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.Node.pathFromRoot)): DatatypeType } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.M3.Node?()
     ==> $Is($Unbox(read($h, $o, M3.Node.pathFromRoot)): DatatypeType, Tclass.M3.Path()));

// Node.pathFromRoot: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.Node.pathFromRoot)): DatatypeType } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M3.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, M3.Node.pathFromRoot)): DatatypeType, Tclass.M3.Path(), $h));

const M3.Node.children: Field
uses {
axiom FDim(M3.Node.children) == 0
   && FieldOfDecl(class.M3.Node?, field$children) == M3.Node.children
   && !$IsGhostField(M3.Node.children);
}

// Node.children: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.Node.children)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.M3.Node?()
     ==> $Is($Unbox(read($h, $o, M3.Node.children)): Seq, TSeq(Tclass.M3.Node?())));

// Node.children: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.Node.children)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M3.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, M3.Node.children)): Seq, TSeq(Tclass.M3.Node?()), $h));

const M3.Node.marked: Field
uses {
axiom FDim(M3.Node.marked) == 0
   && FieldOfDecl(class.M3.Node?, field$marked) == M3.Node.marked
   && !$IsGhostField(M3.Node.marked);
}

// Node.marked: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.Node.marked)): bool } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.M3.Node?()
     ==> $Is($Unbox(read($h, $o, M3.Node.marked)): bool, TBool));

// Node.marked: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.Node.marked)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M3.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, M3.Node.marked)): bool, TBool, $h));

const M3.Node.childrenVisited: Field
uses {
axiom FDim(M3.Node.childrenVisited) == 0
   && FieldOfDecl(class.M3.Node?, field$childrenVisited) == M3.Node.childrenVisited
   && !$IsGhostField(M3.Node.childrenVisited);
}

// Node.childrenVisited: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.Node.childrenVisited)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.M3.Node?()
     ==> $Is($Unbox(read($h, $o, M3.Node.childrenVisited)): int, Tclass._System.nat()));

// Node.childrenVisited: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M3.Node.childrenVisited)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M3.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, M3.Node.childrenVisited)): int, Tclass._System.nat(), $h));

// $Is axiom for non-null type M3.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.M3.Node()) } { $Is(c#0, Tclass.M3.Node?()) } 
  $Is(c#0, Tclass.M3.Node()) <==> $Is(c#0, Tclass.M3.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type M3.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.M3.Node(), $h) } 
    { $IsAlloc(c#0, Tclass.M3.Node?(), $h) } 
  $IsAlloc(c#0, Tclass.M3.Node(), $h) <==> $IsAlloc(c#0, Tclass.M3.Node?(), $h));

// Constructor function declaration
function #M3.Path.Empty() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M3.Path.Empty()) == ##M3.Path.Empty;
// Constructor $Is
axiom $Is(#M3.Path.Empty(), Tclass.M3.Path());
// Constructor literal
axiom #M3.Path.Empty() == Lit(#M3.Path.Empty());
}

const unique ##M3.Path.Empty: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M3.Path.Empty()) == ##M3.Path.Empty;
}

function M3.Path.Empty_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M3.Path.Empty_q(d) } 
  M3.Path.Empty_q(d) <==> DatatypeCtorId(d) == ##M3.Path.Empty);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M3.Path.Empty_q(d) } 
  M3.Path.Empty_q(d) ==> d == #M3.Path.Empty());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#M3.Path.Empty(), Tclass.M3.Path(), $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(#M3.Path.Empty(), Tclass.M3.Path(), $h));

// Constructor function declaration
function #M3.Path.Extend(DatatypeType, ref) : DatatypeType;

const unique ##M3.Path.Extend: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType, a#4#1#0: ref :: 
  { #M3.Path.Extend(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#M3.Path.Extend(a#4#0#0, a#4#1#0)) == ##M3.Path.Extend);
}

function M3.Path.Extend_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M3.Path.Extend_q(d) } 
  M3.Path.Extend_q(d) <==> DatatypeCtorId(d) == ##M3.Path.Extend);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M3.Path.Extend_q(d) } 
  M3.Path.Extend_q(d)
     ==> (exists a#5#0#0: DatatypeType, a#5#1#0: ref :: 
      d == #M3.Path.Extend(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall a#6#0#0: DatatypeType, a#6#1#0: ref :: 
  { $Is(#M3.Path.Extend(a#6#0#0, a#6#1#0), Tclass.M3.Path()) } 
  $Is(#M3.Path.Extend(a#6#0#0, a#6#1#0), Tclass.M3.Path())
     <==> $Is(a#6#0#0, Tclass.M3.Path()) && $Is(a#6#1#0, Tclass.M3.Node()));

// Constructor $IsAlloc
axiom (forall a#6#0#0: DatatypeType, a#6#1#0: ref, $h: Heap :: 
  { $IsAlloc(#M3.Path.Extend(a#6#0#0, a#6#1#0), Tclass.M3.Path(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M3.Path.Extend(a#6#0#0, a#6#1#0), Tclass.M3.Path(), $h)
       <==> $IsAlloc(a#6#0#0, Tclass.M3.Path(), $h)
         && $IsAlloc(a#6#1#0, Tclass.M3.Node(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M3.Path._h0(d), Tclass.M3.Path(), $h) } 
  $IsGoodHeap($h) && M3.Path.Extend_q(d) && $IsAlloc(d, Tclass.M3.Path(), $h)
     ==> $IsAlloc(M3.Path._h0(d), Tclass.M3.Path(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M3.Path._h1(d), Tclass.M3.Node(), $h) } 
  $IsGoodHeap($h) && M3.Path.Extend_q(d) && $IsAlloc(d, Tclass.M3.Path(), $h)
     ==> $IsAlloc(M3.Path._h1(d), Tclass.M3.Node(), $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType, a#7#1#0: ref :: 
  { #M3.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #M3.Path.Extend(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#M3.Path.Extend(a#7#0#0, a#7#1#0)));

function M3.Path._h0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: ref :: 
  { #M3.Path.Extend(a#8#0#0, a#8#1#0) } 
  M3.Path._h0(#M3.Path.Extend(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: ref :: 
  { #M3.Path.Extend(a#9#0#0, a#9#1#0) } 
  DtRank(a#9#0#0) < DtRank(#M3.Path.Extend(a#9#0#0, a#9#1#0)));

function M3.Path._h1(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: ref :: 
  { #M3.Path.Extend(a#10#0#0, a#10#1#0) } 
  M3.Path._h1(#M3.Path.Extend(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Depth-one case-split function
function $IsA#M3.Path(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M3.Path(d) } 
  $IsA#M3.Path(d) ==> M3.Path.Empty_q(d) || M3.Path.Extend_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M3.Path.Extend_q(d), $Is(d, Tclass.M3.Path()) } 
    { M3.Path.Empty_q(d), $Is(d, Tclass.M3.Path()) } 
  $Is(d, Tclass.M3.Path()) ==> M3.Path.Empty_q(d) || M3.Path.Extend_q(d));

// Datatype extensional equality declaration
function M3.Path#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M3.Path.Empty
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M3.Path#Equal(a, b), M3.Path.Empty_q(a) } 
    { M3.Path#Equal(a, b), M3.Path.Empty_q(b) } 
  M3.Path.Empty_q(a) && M3.Path.Empty_q(b) ==> M3.Path#Equal(a, b));

// Datatype extensional equality definition: #M3.Path.Extend
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M3.Path#Equal(a, b), M3.Path.Extend_q(a) } 
    { M3.Path#Equal(a, b), M3.Path.Extend_q(b) } 
  M3.Path.Extend_q(a) && M3.Path.Extend_q(b)
     ==> (M3.Path#Equal(a, b)
       <==> M3.Path#Equal(M3.Path._h0(a), M3.Path._h0(b))
         && M3.Path._h1(a) == M3.Path._h1(b)));

// Datatype extensionality axiom: M3.Path
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M3.Path#Equal(a, b) } 
  M3.Path#Equal(a, b) <==> a == b);

const unique class.M3.Path: ClassName;

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

const unique tytagFamily$Node: TyTagFamily;

const unique tytagFamily$Path: TyTagFamily;

const unique field$children: NameFamily;

const unique field$marked: NameFamily;

const unique field$childrenVisited: NameFamily;

const unique field$pathFromRoot: NameFamily;
