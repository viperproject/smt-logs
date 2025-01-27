// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy

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

const reveal__module._default.secret: bool;

const reveal__module._default.recursive_f: bool;

const reveal__module._default.bad_ensures: bool;

const reveal__module._default.f: bool;

const reveal__module._default.g: bool;

const unique class._module.__default: ClassName;

// function declaration for _module._default.Fib
function _module.__default.Fib($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.Fib
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Fib($ly, n#0) } 
    _module.__default.Fib#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> LitInt(0) <= _module.__default.Fib($ly, n#0));
// definition axiom for _module.__default.Fib (revealed)
axiom {:id "id0"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Fib($LS($ly), n#0) } 
    _module.__default.Fib#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (2 <= n#0
           ==> _module.__default.Fib#canCall(n#0 - 2) && _module.__default.Fib#canCall(n#0 - 1))
         && _module.__default.Fib($LS($ly), n#0)
           == (if n#0 < 2
             then n#0
             else _module.__default.Fib($ly, n#0 - 2) + _module.__default.Fib($ly, n#0 - 1)));
// definition axiom for _module.__default.Fib for all literals (revealed)
axiom {:id "id1"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.Fib($LS($ly), LitInt(n#0)) } 
    _module.__default.Fib#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= LitInt(n#0))
       ==> (!Lit(n#0 < 2)
           ==> _module.__default.Fib#canCall(LitInt(n#0 - 2))
             && _module.__default.Fib#canCall(LitInt(n#0 - 1)))
         && _module.__default.Fib($LS($ly), LitInt(n#0))
           == (if n#0 < 2
             then n#0
             else _module.__default.Fib($LS($ly), LitInt(n#0 - 2))
               + _module.__default.Fib($LS($ly), LitInt(n#0 - 1))));
}

function _module.__default.Fib#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Fib($LS($ly), n#0) } 
  _module.__default.Fib($LS($ly), n#0) == _module.__default.Fib($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Fib(AsFuelBottom($ly), n#0) } 
  _module.__default.Fib($ly, n#0) == _module.__default.Fib($LZ, n#0));

function _module.__default.Fib#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Fib
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Fib#requires($ly, n#0) } 
  _module.__default.Fib#requires($ly, n#0) == (LitInt(0) <= n#0));

procedure {:verboseName "Fib (well-formedness)"} CheckWellformed$$_module.__default.Fib(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id2"} LitInt(0) <= _module.__default.Fib($LS($LS($LZ)), n#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fib (well-formedness)"} CheckWellformed$$_module.__default.Fib(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;
  var ##n#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id3"} LitInt(0) <= n#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, TInt, $Heap);
        assert {:id "id4"} {:subsumption 0} LitInt(0) <= ##n#0;
        assume LitInt(0) <= ##n#0;
        assert {:id "id5"} 0 <= n#0 || ##n#0 == n#0;
        assert {:id "id6"} n#0 == n#0 || ##n#0 < n#0;
        assume n#0 == n#0 || _module.__default.Fib#canCall(n#0);
        assume {:id "id7"} LitInt(0) <= _module.__default.Fib($LS($LZ), n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 < 2)
        {
            assume {:id "id8"} _module.__default.Fib($LS($LZ), n#0) == n#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Fib($LS($LZ), n#0), TInt);
            return;
        }
        else
        {
            ##n#1 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, TInt, $Heap);
            assert {:id "id9"} {:subsumption 0} LitInt(0) <= ##n#1;
            assume LitInt(0) <= ##n#1;
            assert {:id "id10"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id11"} ##n#1 < n#0;
            assume _module.__default.Fib#canCall(n#0 - 2);
            ##n#2 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2, TInt, $Heap);
            assert {:id "id12"} {:subsumption 0} LitInt(0) <= ##n#2;
            assume LitInt(0) <= ##n#2;
            assert {:id "id13"} 0 <= n#0 || ##n#2 == n#0;
            assert {:id "id14"} ##n#2 < n#0;
            assume _module.__default.Fib#canCall(n#0 - 1);
            assume {:id "id15"} _module.__default.Fib($LS($LZ), n#0)
               == _module.__default.Fib($LS($LZ), n#0 - 2)
                 + _module.__default.Fib($LS($LZ), n#0 - 1);
            assume _module.__default.Fib#canCall(n#0 - 2) && _module.__default.Fib#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Fib($LS($LZ), n#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.Sum
function _module.__default.Sum(a#0: DatatypeType) : int
uses {
// consequence axiom for _module.__default.Sum
axiom 1 <= $FunctionContextHeight
   ==> (forall a#0: DatatypeType :: 
    { _module.__default.Sum(a#0) } 
    _module.__default.Sum#canCall(a#0)
         || (1 < $FunctionContextHeight && $Is(a#0, Tclass._module.List()))
       ==> LitInt(0) <= _module.__default.Sum(a#0));
// definition axiom for _module.__default.Sum (revealed)
axiom {:id "id16"} 1 <= $FunctionContextHeight
   ==> (forall a#0: DatatypeType :: 
    { _module.__default.Sum(a#0) } 
    _module.__default.Sum#canCall(a#0)
         || (1 < $FunctionContextHeight && $Is(a#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(a#0)
           ==> (var x#1 := _module.List._h0(a#0); 
            0 <= x#1 ==> _module.__default.Fib#canCall(x#1)))
         && _module.__default.Sum(a#0)
           == (if _module.List.Nil_q(a#0)
             then 0
             else (var tail#0 := _module.List._h1(a#0); 
              (var x#0 := _module.List._h0(a#0); 
                (if x#0 < 0 then 0 else _module.__default.Fib($LS($LZ), x#0))))));
// definition axiom for _module.__default.Sum for all literals (revealed)
axiom {:id "id17"} 1 <= $FunctionContextHeight
   ==> (forall a#0: DatatypeType :: 
    {:weight 3} { _module.__default.Sum(Lit(a#0)) } 
    _module.__default.Sum#canCall(Lit(a#0))
         || (1 < $FunctionContextHeight && $Is(a#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(a#0)))
           ==> (var x#3 := LitInt(_module.List._h0(Lit(a#0))); 
            0 <= x#3 ==> _module.__default.Fib#canCall(x#3)))
         && _module.__default.Sum(Lit(a#0))
           == (if _module.List.Nil_q(Lit(a#0))
             then 0
             else (var tail#2 := Lit(_module.List._h1(Lit(a#0))); 
              (var x#2 := LitInt(_module.List._h0(Lit(a#0))); 
                (if x#2 < 0 then 0 else _module.__default.Fib($LS($LZ), x#2))))));
}

function _module.__default.Sum#canCall(a#0: DatatypeType) : bool;

function Tclass._module.List() : Ty
uses {
// Tclass._module.List Tag
axiom Tag(Tclass._module.List()) == Tagclass._module.List
   && TagFamily(Tclass._module.List()) == tytagFamily$List;
}

const unique Tagclass._module.List: TyTag;

// Box/unbox axiom for Tclass._module.List
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.List()) } 
  $IsBox(bx, Tclass._module.List())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.List()));

function _module.__default.Sum#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.Sum
axiom (forall a#0: DatatypeType :: 
  { _module.__default.Sum#requires(a#0) } 
  $Is(a#0, Tclass._module.List()) ==> _module.__default.Sum#requires(a#0) == true);

procedure {:verboseName "Sum (well-formedness)"} CheckWellformed$$_module.__default.Sum(a#0: DatatypeType where $Is(a#0, Tclass._module.List()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id18"} LitInt(0) <= _module.__default.Sum(a#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sum (well-formedness)"} CheckWellformed$$_module.__default.Sum(a#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##a#0: DatatypeType;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: int;
  var let#1#0#0: int;
  var ##n#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        ##a#0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0, Tclass._module.List(), $Heap);
        assert {:id "id19"} _module.List#Equal(a#0, a#0) || DtRank(##a#0) < DtRank(a#0);
        assume _module.List#Equal(a#0, a#0) || _module.__default.Sum#canCall(a#0);
        assume {:id "id20"} LitInt(0) <= _module.__default.Sum(a#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (a#0 == #_module.List.Nil())
        {
            assume {:id "id28"} _module.__default.Sum(a#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Sum(a#0), TInt);
            return;
        }
        else if (a#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc tail#Z#0;
            assume {:id "id21"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id22"} tail#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id23"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id24"} x#Z#0 == let#1#0#0;
            if (x#Z#0 < 0)
            {
                assume {:id "id25"} _module.__default.Sum(a#0) == LitInt(0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Sum(a#0), TInt);
                return;
            }
            else
            {
                ##n#0 := x#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, TInt, $Heap);
                assert {:id "id26"} {:subsumption 0} LitInt(0) <= ##n#0;
                assume LitInt(0) <= ##n#0;
                assume _module.__default.Fib#canCall(x#Z#0);
                assume {:id "id27"} _module.__default.Sum(a#0) == _module.__default.Fib($LS($LZ), x#Z#0);
                assume _module.__default.Fib#canCall(x#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Sum(a#0), TInt);
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.FibWithoutPost
function _module.__default.FibWithoutPost($ly: LayerType, n#0: int) : int
uses {
// definition axiom for _module.__default.FibWithoutPost (revealed)
axiom {:id "id29"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.FibWithoutPost($LS($ly), n#0) } 
    _module.__default.FibWithoutPost#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (2 <= n#0
           ==> _module.__default.FibWithoutPost#canCall(n#0 - 2)
             && _module.__default.FibWithoutPost#canCall(n#0 - 1))
         && _module.__default.FibWithoutPost($LS($ly), n#0)
           == (if n#0 < 2
             then n#0
             else _module.__default.FibWithoutPost($ly, n#0 - 2)
               + _module.__default.FibWithoutPost($ly, n#0 - 1)));
// definition axiom for _module.__default.FibWithoutPost for all literals (revealed)
axiom {:id "id30"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.FibWithoutPost($LS($ly), LitInt(n#0)) } 
    _module.__default.FibWithoutPost#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= LitInt(n#0))
       ==> (!Lit(n#0 < 2)
           ==> _module.__default.FibWithoutPost#canCall(LitInt(n#0 - 2))
             && _module.__default.FibWithoutPost#canCall(LitInt(n#0 - 1)))
         && _module.__default.FibWithoutPost($LS($ly), LitInt(n#0))
           == (if n#0 < 2
             then n#0
             else _module.__default.FibWithoutPost($LS($ly), LitInt(n#0 - 2))
               + _module.__default.FibWithoutPost($LS($ly), LitInt(n#0 - 1))));
}

function _module.__default.FibWithoutPost#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.FibWithoutPost($LS($ly), n#0) } 
  _module.__default.FibWithoutPost($LS($ly), n#0)
     == _module.__default.FibWithoutPost($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.FibWithoutPost(AsFuelBottom($ly), n#0) } 
  _module.__default.FibWithoutPost($ly, n#0)
     == _module.__default.FibWithoutPost($LZ, n#0));

function _module.__default.FibWithoutPost#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.FibWithoutPost
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.FibWithoutPost#requires($ly, n#0) } 
  _module.__default.FibWithoutPost#requires($ly, n#0) == (LitInt(0) <= n#0));

procedure {:verboseName "FibWithoutPost (well-formedness)"} CheckWellformed$$_module.__default.FibWithoutPost(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FibWithoutPost (well-formedness)"} CheckWellformed$$_module.__default.FibWithoutPost(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id31"} LitInt(0) <= n#0;
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
        if (n#0 < 2)
        {
            assume {:id "id32"} _module.__default.FibWithoutPost($LS($LZ), n#0) == n#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.FibWithoutPost($LS($LZ), n#0), TInt);
            return;
        }
        else
        {
            ##n#0 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            assert {:id "id33"} {:subsumption 0} LitInt(0) <= ##n#0;
            assume LitInt(0) <= ##n#0;
            assert {:id "id34"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id35"} ##n#0 < n#0;
            assume _module.__default.FibWithoutPost#canCall(n#0 - 2);
            ##n#1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, TInt, $Heap);
            assert {:id "id36"} {:subsumption 0} LitInt(0) <= ##n#1;
            assume LitInt(0) <= ##n#1;
            assert {:id "id37"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id38"} ##n#1 < n#0;
            assume _module.__default.FibWithoutPost#canCall(n#0 - 1);
            assume {:id "id39"} _module.__default.FibWithoutPost($LS($LZ), n#0)
               == _module.__default.FibWithoutPost($LS($LZ), n#0 - 2)
                 + _module.__default.FibWithoutPost($LS($LZ), n#0 - 1);
            assume _module.__default.FibWithoutPost#canCall(n#0 - 2)
               && _module.__default.FibWithoutPost#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.FibWithoutPost($LS($LZ), n#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.SumBad
function _module.__default.SumBad(a#0: DatatypeType) : int
uses {
// consequence axiom for _module.__default.SumBad
axiom 2 <= $FunctionContextHeight
   ==> (forall a#0: DatatypeType :: 
    { _module.__default.SumBad(a#0) } 
    _module.__default.SumBad#canCall(a#0)
         || (2 < $FunctionContextHeight && $Is(a#0, Tclass._module.List()))
       ==> LitInt(0) <= _module.__default.Sum(a#0)
         && LitInt(0) <= _module.__default.SumBad(a#0));
// definition axiom for _module.__default.SumBad (revealed)
axiom {:id "id40"} 2 <= $FunctionContextHeight
   ==> (forall a#0: DatatypeType :: 
    { _module.__default.SumBad(a#0) } 
    _module.__default.SumBad#canCall(a#0)
         || (2 < $FunctionContextHeight && $Is(a#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(a#0)
           ==> (var x#1 := _module.List._h0(a#0); 
            0 <= x#1 ==> _module.__default.FibWithoutPost#canCall(x#1)))
         && _module.__default.SumBad(a#0)
           == (if _module.List.Nil_q(a#0)
             then 0
             else (var tail#0 := _module.List._h1(a#0); 
              (var x#0 := _module.List._h0(a#0); 
                (if x#0 < 0 then 0 else _module.__default.FibWithoutPost($LS($LZ), x#0))))));
// definition axiom for _module.__default.SumBad for all literals (revealed)
axiom {:id "id41"} 2 <= $FunctionContextHeight
   ==> (forall a#0: DatatypeType :: 
    {:weight 3} { _module.__default.SumBad(Lit(a#0)) } 
    _module.__default.SumBad#canCall(Lit(a#0))
         || (2 < $FunctionContextHeight && $Is(a#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(a#0)))
           ==> (var x#3 := LitInt(_module.List._h0(Lit(a#0))); 
            0 <= x#3 ==> _module.__default.FibWithoutPost#canCall(x#3)))
         && _module.__default.SumBad(Lit(a#0))
           == (if _module.List.Nil_q(Lit(a#0))
             then 0
             else (var tail#2 := Lit(_module.List._h1(Lit(a#0))); 
              (var x#2 := LitInt(_module.List._h0(Lit(a#0))); 
                (if x#2 < 0 then 0 else _module.__default.FibWithoutPost($LS($LZ), x#2))))));
}

function _module.__default.SumBad#canCall(a#0: DatatypeType) : bool;

function _module.__default.SumBad#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.SumBad
axiom (forall a#0: DatatypeType :: 
  { _module.__default.SumBad#requires(a#0) } 
  $Is(a#0, Tclass._module.List())
     ==> _module.__default.SumBad#requires(a#0) == true);

procedure {:verboseName "SumBad (well-formedness)"} CheckWellformed$$_module.__default.SumBad(a#0: DatatypeType where $Is(a#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id42"} LitInt(0) <= _module.__default.Sum(a#0);
  ensures {:id "id43"} LitInt(0) <= _module.__default.SumBad(a#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SumBad (well-formedness)"} CheckWellformed$$_module.__default.SumBad(a#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##a#0: DatatypeType;
  var ##a#1: DatatypeType;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: int;
  var let#1#0#0: int;
  var ##n#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        ##a#0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0, Tclass._module.List(), $Heap);
        assume _module.__default.Sum#canCall(a#0);
        assume {:id "id44"} LitInt(0) <= _module.__default.Sum(a#0);
        ##a#1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#1, Tclass._module.List(), $Heap);
        assert {:id "id45"} _module.List#Equal(a#0, a#0) || DtRank(##a#1) < DtRank(a#0);
        assume _module.List#Equal(a#0, a#0) || _module.__default.SumBad#canCall(a#0);
        assume {:id "id46"} LitInt(0) <= _module.__default.SumBad(a#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (a#0 == #_module.List.Nil())
        {
            assume {:id "id54"} _module.__default.SumBad(a#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SumBad(a#0), TInt);
            return;
        }
        else if (a#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc tail#Z#0;
            assume {:id "id47"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id48"} tail#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id49"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id50"} x#Z#0 == let#1#0#0;
            if (x#Z#0 < 0)
            {
                assume {:id "id51"} _module.__default.SumBad(a#0) == LitInt(0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.SumBad(a#0), TInt);
                return;
            }
            else
            {
                ##n#0 := x#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, TInt, $Heap);
                assert {:id "id52"} {:subsumption 0} LitInt(0) <= ##n#0;
                assume LitInt(0) <= ##n#0;
                assume _module.__default.FibWithoutPost#canCall(x#Z#0);
                assume {:id "id53"} _module.__default.SumBad(a#0)
                   == _module.__default.FibWithoutPost($LS($LZ), x#Z#0);
                assume _module.__default.FibWithoutPost#canCall(x#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.SumBad(a#0), TInt);
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.FibWithExtraPost
function _module.__default.FibWithExtraPost($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.FibWithExtraPost
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.FibWithExtraPost($ly, n#0) } 
    _module.__default.FibWithExtraPost#canCall(n#0) || 0 < $FunctionContextHeight
       ==> (LitInt(2) <= n#0
           ==> LitInt(0) <= _module.__default.FibWithExtraPost($ly, n#0 - 1))
         && (LitInt(1) <= n#0
           ==> LitInt(0) <= _module.__default.FibWithExtraPost($ly, n#0 - 1))
         && LitInt(0) <= _module.__default.FibWithExtraPost($ly, n#0));
// definition axiom for _module.__default.FibWithExtraPost (revealed)
axiom {:id "id55"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.FibWithExtraPost($LS($ly), n#0) } 
    _module.__default.FibWithExtraPost#canCall(n#0) || 0 < $FunctionContextHeight
       ==> (0 <= n#0
           ==> 
          2 <= n#0
           ==> _module.__default.FibWithExtraPost#canCall(n#0 - 2)
             && _module.__default.FibWithExtraPost#canCall(n#0 - 1))
         && _module.__default.FibWithExtraPost($LS($ly), n#0)
           == (if n#0 < 0
             then 0
             else (if n#0 < 2
               then n#0
               else _module.__default.FibWithExtraPost($ly, n#0 - 2)
                 + _module.__default.FibWithExtraPost($ly, n#0 - 1))));
// definition axiom for _module.__default.FibWithExtraPost for all literals (revealed)
axiom {:id "id56"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.FibWithExtraPost($LS($ly), LitInt(n#0)) } 
    _module.__default.FibWithExtraPost#canCall(LitInt(n#0))
         || 0 < $FunctionContextHeight
       ==> (!Lit(n#0 < 0)
           ==> 
          !Lit(n#0 < 2)
           ==> _module.__default.FibWithExtraPost#canCall(LitInt(n#0 - 2))
             && _module.__default.FibWithExtraPost#canCall(LitInt(n#0 - 1)))
         && _module.__default.FibWithExtraPost($LS($ly), LitInt(n#0))
           == (if n#0 < 0
             then 0
             else (if n#0 < 2
               then n#0
               else _module.__default.FibWithExtraPost($LS($ly), LitInt(n#0 - 2))
                 + _module.__default.FibWithExtraPost($LS($ly), LitInt(n#0 - 1)))));
}

function _module.__default.FibWithExtraPost#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.FibWithExtraPost($LS($ly), n#0) } 
  _module.__default.FibWithExtraPost($LS($ly), n#0)
     == _module.__default.FibWithExtraPost($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.FibWithExtraPost(AsFuelBottom($ly), n#0) } 
  _module.__default.FibWithExtraPost($ly, n#0)
     == _module.__default.FibWithExtraPost($LZ, n#0));

function _module.__default.FibWithExtraPost#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.FibWithExtraPost
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.FibWithExtraPost#requires($ly, n#0) } 
  _module.__default.FibWithExtraPost#requires($ly, n#0) == true);

procedure {:verboseName "FibWithExtraPost (well-formedness)"} CheckWellformed$$_module.__default.FibWithExtraPost(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id57"} LitInt(2) <= n#0
     ==> LitInt(0) <= _module.__default.FibWithExtraPost($LS($LS($LZ)), n#0 - 1);
  ensures {:id "id58"} LitInt(1) <= n#0
     ==> LitInt(0) <= _module.__default.FibWithExtraPost($LS($LS($LZ)), n#0 - 1);
  ensures {:id "id59"} LitInt(0) <= _module.__default.FibWithExtraPost($LS($LS($LZ)), n#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FibWithExtraPost (well-formedness)"} CheckWellformed$$_module.__default.FibWithExtraPost(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;
  var ##n#2: int;
  var ##n#3: int;
  var ##n#4: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            assume {:id "id60"} LitInt(2) <= n#0;
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            assert {:id "id61"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id62"} n#0 - 1 == n#0 || ##n#0 < n#0;
            assume n#0 - 1 == n#0 || _module.__default.FibWithExtraPost#canCall(n#0 - 1);
            assume {:id "id63"} LitInt(0) <= _module.__default.FibWithExtraPost($LS($LZ), n#0 - 1);
        }
        else
        {
            assume {:id "id64"} LitInt(2) <= n#0
               ==> LitInt(0) <= _module.__default.FibWithExtraPost($LS($LZ), n#0 - 1);
        }

        if (*)
        {
            assume {:id "id65"} LitInt(1) <= n#0;
            ##n#1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, TInt, $Heap);
            assert {:id "id66"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id67"} n#0 - 1 == n#0 || ##n#1 < n#0;
            assume n#0 - 1 == n#0 || _module.__default.FibWithExtraPost#canCall(n#0 - 1);
            assume {:id "id68"} LitInt(0) <= _module.__default.FibWithExtraPost($LS($LZ), n#0 - 1);
        }
        else
        {
            assume {:id "id69"} LitInt(1) <= n#0
               ==> LitInt(0) <= _module.__default.FibWithExtraPost($LS($LZ), n#0 - 1);
        }

        ##n#2 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#2, TInt, $Heap);
        assert {:id "id70"} 0 <= n#0 || ##n#2 == n#0;
        assert {:id "id71"} n#0 == n#0 || ##n#2 < n#0;
        assume n#0 == n#0 || _module.__default.FibWithExtraPost#canCall(n#0);
        assume {:id "id72"} LitInt(0) <= _module.__default.FibWithExtraPost($LS($LZ), n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 < 0)
        {
            assume {:id "id73"} _module.__default.FibWithExtraPost($LS($LZ), n#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.FibWithExtraPost($LS($LZ), n#0), TInt);
            return;
        }
        else
        {
            if (n#0 < 2)
            {
                assume {:id "id74"} _module.__default.FibWithExtraPost($LS($LZ), n#0) == n#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.FibWithExtraPost($LS($LZ), n#0), TInt);
                return;
            }
            else
            {
                ##n#3 := n#0 - 2;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#3, TInt, $Heap);
                assert {:id "id75"} 0 <= n#0 || ##n#3 == n#0;
                assert {:id "id76"} ##n#3 < n#0;
                assume _module.__default.FibWithExtraPost#canCall(n#0 - 2);
                ##n#4 := n#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#4, TInt, $Heap);
                assert {:id "id77"} 0 <= n#0 || ##n#4 == n#0;
                assert {:id "id78"} ##n#4 < n#0;
                assume _module.__default.FibWithExtraPost#canCall(n#0 - 1);
                assume {:id "id79"} _module.__default.FibWithExtraPost($LS($LZ), n#0)
                   == _module.__default.FibWithExtraPost($LS($LZ), n#0 - 2)
                     + _module.__default.FibWithExtraPost($LS($LZ), n#0 - 1);
                assume _module.__default.FibWithExtraPost#canCall(n#0 - 2)
                   && _module.__default.FibWithExtraPost#canCall(n#0 - 1);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.FibWithExtraPost($LS($LZ), n#0), TInt);
                return;
            }
        }

        assume false;
    }
}



// function declaration for _module._default.GoodPost
function _module.__default.GoodPost($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.GoodPost
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.GoodPost($ly, n#0) } 
    _module.__default.GoodPost#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(1) <= n#0
           ==> _module.__default.GoodPost($ly, n#0 - 1)
             == _module.__default.GoodPost($ly, n#0 - 1))
         && _module.__default.GoodPost($ly, Mul(LitInt(2), n#0) - n#0)
           == _module.__default.GoodPost($ly, Mul(LitInt(2), n#0 + 5) - 10 - n#0));
// definition axiom for _module.__default.GoodPost (revealed)
axiom {:id "id80"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.GoodPost($LS($ly), n#0) } 
    _module.__default.GoodPost#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (2 <= n#0
           ==> _module.__default.GoodPost#canCall(n#0 - 2)
             && _module.__default.GoodPost#canCall(n#0 - 1))
         && _module.__default.GoodPost($LS($ly), n#0)
           == (if n#0 < 2
             then n#0
             else _module.__default.GoodPost($ly, n#0 - 2)
               + _module.__default.GoodPost($ly, n#0 - 1)));
// definition axiom for _module.__default.GoodPost for all literals (revealed)
axiom {:id "id81"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.GoodPost($LS($ly), LitInt(n#0)) } 
    _module.__default.GoodPost#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= LitInt(n#0))
       ==> (!Lit(n#0 < 2)
           ==> _module.__default.GoodPost#canCall(LitInt(n#0 - 2))
             && _module.__default.GoodPost#canCall(LitInt(n#0 - 1)))
         && _module.__default.GoodPost($LS($ly), LitInt(n#0))
           == (if n#0 < 2
             then n#0
             else _module.__default.GoodPost($LS($ly), LitInt(n#0 - 2))
               + _module.__default.GoodPost($LS($ly), LitInt(n#0 - 1))));
}

function _module.__default.GoodPost#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.GoodPost($LS($ly), n#0) } 
  _module.__default.GoodPost($LS($ly), n#0)
     == _module.__default.GoodPost($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.GoodPost(AsFuelBottom($ly), n#0) } 
  _module.__default.GoodPost($ly, n#0) == _module.__default.GoodPost($LZ, n#0));

function _module.__default.GoodPost#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.GoodPost
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.GoodPost#requires($ly, n#0) } 
  _module.__default.GoodPost#requires($ly, n#0) == (LitInt(0) <= n#0));

procedure {:verboseName "GoodPost (well-formedness)"} CheckWellformed$$_module.__default.GoodPost(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id82"} LitInt(1) <= n#0
     ==> _module.__default.GoodPost($LS($LS($LZ)), n#0 - 1)
       == _module.__default.GoodPost($LS($LS($LZ)), n#0 - 1);
  ensures {:id "id83"} _module.__default.GoodPost($LS($LS($LZ)), Mul(LitInt(2), n#0) - n#0)
     == _module.__default.GoodPost($LS($LS($LZ)), Mul(LitInt(2), n#0 + 5) - 10 - n#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GoodPost (well-formedness)"} CheckWellformed$$_module.__default.GoodPost(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;
  var ##n#2: int;
  var ##n#3: int;
  var ##n#4: int;
  var ##n#5: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id84"} LitInt(0) <= n#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            assume {:id "id85"} LitInt(1) <= n#0;
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            assert {:id "id86"} {:subsumption 0} LitInt(0) <= ##n#0;
            assume LitInt(0) <= ##n#0;
            assert {:id "id87"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id88"} n#0 - 1 == n#0 || ##n#0 < n#0;
            assume n#0 - 1 == n#0 || _module.__default.GoodPost#canCall(n#0 - 1);
            ##n#1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, TInt, $Heap);
            assert {:id "id89"} {:subsumption 0} LitInt(0) <= ##n#1;
            assume LitInt(0) <= ##n#1;
            assert {:id "id90"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id91"} n#0 - 1 == n#0 || ##n#1 < n#0;
            assume n#0 - 1 == n#0 || _module.__default.GoodPost#canCall(n#0 - 1);
            assume {:id "id92"} _module.__default.GoodPost($LS($LZ), n#0 - 1)
               == _module.__default.GoodPost($LS($LZ), n#0 - 1);
        }
        else
        {
            assume {:id "id93"} LitInt(1) <= n#0
               ==> _module.__default.GoodPost($LS($LZ), n#0 - 1)
                 == _module.__default.GoodPost($LS($LZ), n#0 - 1);
        }

        ##n#2 := Mul(LitInt(2), n#0) - n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#2, TInt, $Heap);
        assert {:id "id94"} {:subsumption 0} LitInt(0) <= ##n#2;
        assume LitInt(0) <= ##n#2;
        assert {:id "id95"} 0 <= n#0 || ##n#2 == n#0;
        assert {:id "id96"} Mul(LitInt(2), n#0) - n#0 == n#0 || ##n#2 < n#0;
        assume Mul(LitInt(2), n#0) - n#0 == n#0
           || _module.__default.GoodPost#canCall(Mul(LitInt(2), n#0) - n#0);
        ##n#3 := Mul(LitInt(2), n#0 + 5) - 10 - n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#3, TInt, $Heap);
        assert {:id "id97"} {:subsumption 0} LitInt(0) <= ##n#3;
        assume LitInt(0) <= ##n#3;
        assert {:id "id98"} 0 <= n#0 || ##n#3 == n#0;
        assert {:id "id99"} Mul(LitInt(2), n#0 + 5) - 10 - n#0 == n#0 || ##n#3 < n#0;
        assume Mul(LitInt(2), n#0 + 5) - 10 - n#0 == n#0
           || _module.__default.GoodPost#canCall(Mul(LitInt(2), n#0 + 5) - 10 - n#0);
        assume {:id "id100"} _module.__default.GoodPost($LS($LZ), Mul(LitInt(2), n#0) - n#0)
           == _module.__default.GoodPost($LS($LZ), Mul(LitInt(2), n#0 + 5) - 10 - n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(54,3)
        assume true;
        assert {:id "id101"} Mul(LitInt(2), n#0) - n#0 == Mul(LitInt(2), n#0 + 5) - 10 - n#0;
        if (n#0 < 2)
        {
            assume {:id "id102"} _module.__default.GoodPost($LS($LZ), n#0) == n#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.GoodPost($LS($LZ), n#0), TInt);
            return;
        }
        else
        {
            ##n#4 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#4, TInt, $Heap);
            assert {:id "id103"} {:subsumption 0} LitInt(0) <= ##n#4;
            assume LitInt(0) <= ##n#4;
            assert {:id "id104"} 0 <= n#0 || ##n#4 == n#0;
            assert {:id "id105"} ##n#4 < n#0;
            assume _module.__default.GoodPost#canCall(n#0 - 2);
            ##n#5 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#5, TInt, $Heap);
            assert {:id "id106"} {:subsumption 0} LitInt(0) <= ##n#5;
            assume LitInt(0) <= ##n#5;
            assert {:id "id107"} 0 <= n#0 || ##n#5 == n#0;
            assert {:id "id108"} ##n#5 < n#0;
            assume _module.__default.GoodPost#canCall(n#0 - 1);
            assume {:id "id109"} _module.__default.GoodPost($LS($LZ), n#0)
               == _module.__default.GoodPost($LS($LZ), n#0 - 2)
                 + _module.__default.GoodPost($LS($LZ), n#0 - 1);
            assume _module.__default.GoodPost#canCall(n#0 - 2)
               && _module.__default.GoodPost#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.GoodPost($LS($LZ), n#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.DivergentPost
function _module.__default.DivergentPost($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.DivergentPost
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.DivergentPost($ly, n#0) } 
    _module.__default.DivergentPost#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> _module.__default.DivergentPost($ly, n#0 + 1)
         == _module.__default.DivergentPost($ly, n#0 + 1));
// definition axiom for _module.__default.DivergentPost (revealed)
axiom {:id "id110"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.DivergentPost($LS($ly), n#0) } 
    _module.__default.DivergentPost#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (2 <= n#0
           ==> _module.__default.DivergentPost#canCall(n#0 - 2)
             && _module.__default.DivergentPost#canCall(n#0 - 1))
         && _module.__default.DivergentPost($LS($ly), n#0)
           == (if n#0 < 2
             then n#0
             else _module.__default.DivergentPost($ly, n#0 - 2)
               + _module.__default.DivergentPost($ly, n#0 - 1)));
// definition axiom for _module.__default.DivergentPost for all literals (revealed)
axiom {:id "id111"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.DivergentPost($LS($ly), LitInt(n#0)) } 
    _module.__default.DivergentPost#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= LitInt(n#0))
       ==> (!Lit(n#0 < 2)
           ==> _module.__default.DivergentPost#canCall(LitInt(n#0 - 2))
             && _module.__default.DivergentPost#canCall(LitInt(n#0 - 1)))
         && _module.__default.DivergentPost($LS($ly), LitInt(n#0))
           == (if n#0 < 2
             then n#0
             else _module.__default.DivergentPost($LS($ly), LitInt(n#0 - 2))
               + _module.__default.DivergentPost($LS($ly), LitInt(n#0 - 1))));
}

function _module.__default.DivergentPost#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.DivergentPost($LS($ly), n#0) } 
  _module.__default.DivergentPost($LS($ly), n#0)
     == _module.__default.DivergentPost($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.DivergentPost(AsFuelBottom($ly), n#0) } 
  _module.__default.DivergentPost($ly, n#0)
     == _module.__default.DivergentPost($LZ, n#0));

function _module.__default.DivergentPost#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.DivergentPost
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.DivergentPost#requires($ly, n#0) } 
  _module.__default.DivergentPost#requires($ly, n#0) == (LitInt(0) <= n#0));

procedure {:verboseName "DivergentPost (well-formedness)"} CheckWellformed$$_module.__default.DivergentPost(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id112"} _module.__default.DivergentPost($LS($LS($LZ)), n#0 + 1)
     == _module.__default.DivergentPost($LS($LS($LZ)), n#0 + 1);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DivergentPost (well-formedness)"} CheckWellformed$$_module.__default.DivergentPost(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;
  var ##n#2: int;
  var ##n#3: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id113"} LitInt(0) <= n#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        ##n#0 := n#0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, TInt, $Heap);
        assert {:id "id114"} {:subsumption 0} LitInt(0) <= ##n#0;
        assume LitInt(0) <= ##n#0;
        assert {:id "id115"} 0 <= n#0 || ##n#0 == n#0;
        assert {:id "id116"} n#0 + 1 == n#0 || ##n#0 < n#0;
        assume n#0 + 1 == n#0 || _module.__default.DivergentPost#canCall(n#0 + 1);
        ##n#1 := n#0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#1, TInt, $Heap);
        assert {:id "id117"} {:subsumption 0} LitInt(0) <= ##n#1;
        assume LitInt(0) <= ##n#1;
        assert {:id "id118"} 0 <= n#0 || ##n#1 == n#0;
        assert {:id "id119"} n#0 + 1 == n#0 || ##n#1 < n#0;
        assume n#0 + 1 == n#0 || _module.__default.DivergentPost#canCall(n#0 + 1);
        assume {:id "id120"} _module.__default.DivergentPost($LS($LZ), n#0 + 1)
           == _module.__default.DivergentPost($LS($LZ), n#0 + 1);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(63,3)
        assume true;
        assert {:id "id121"} Mul(LitInt(2), n#0) - n#0 == Mul(LitInt(2), n#0 + 5) - 10 - n#0;
        if (n#0 < 2)
        {
            assume {:id "id122"} _module.__default.DivergentPost($LS($LZ), n#0) == n#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.DivergentPost($LS($LZ), n#0), TInt);
            return;
        }
        else
        {
            ##n#2 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2, TInt, $Heap);
            assert {:id "id123"} {:subsumption 0} LitInt(0) <= ##n#2;
            assume LitInt(0) <= ##n#2;
            assert {:id "id124"} 0 <= n#0 || ##n#2 == n#0;
            assert {:id "id125"} ##n#2 < n#0;
            assume _module.__default.DivergentPost#canCall(n#0 - 2);
            ##n#3 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#3, TInt, $Heap);
            assert {:id "id126"} {:subsumption 0} LitInt(0) <= ##n#3;
            assume LitInt(0) <= ##n#3;
            assert {:id "id127"} 0 <= n#0 || ##n#3 == n#0;
            assert {:id "id128"} ##n#3 < n#0;
            assume _module.__default.DivergentPost#canCall(n#0 - 1);
            assume {:id "id129"} _module.__default.DivergentPost($LS($LZ), n#0)
               == _module.__default.DivergentPost($LS($LZ), n#0 - 2)
                 + _module.__default.DivergentPost($LS($LZ), n#0 - 1);
            assume _module.__default.DivergentPost#canCall(n#0 - 2)
               && _module.__default.DivergentPost#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.DivergentPost($LS($LZ), n#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.HoldsAtLeastForZero
function _module.__default.HoldsAtLeastForZero(x#0: int) : bool
uses {
// consequence axiom for _module.__default.HoldsAtLeastForZero
axiom 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.HoldsAtLeastForZero(x#0) } 
    _module.__default.HoldsAtLeastForZero#canCall(x#0) || 0 < $FunctionContextHeight
       ==> 
      x#0 == LitInt(0)
       ==> _module.__default.HoldsAtLeastForZero(x#0));
// definition axiom for _module.__default.HoldsAtLeastForZero (revealed)
axiom {:id "id130"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.HoldsAtLeastForZero(x#0) } 
    _module.__default.HoldsAtLeastForZero#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.HoldsAtLeastForZero(x#0) == (x#0 < -2));
// definition axiom for _module.__default.HoldsAtLeastForZero for all literals (revealed)
axiom {:id "id131"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.HoldsAtLeastForZero(LitInt(x#0)) } 
    _module.__default.HoldsAtLeastForZero#canCall(LitInt(x#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.HoldsAtLeastForZero(LitInt(x#0)) == Lit(x#0 < -2));
}

function _module.__default.HoldsAtLeastForZero#canCall(x#0: int) : bool;

function _module.__default.HoldsAtLeastForZero#requires(int) : bool;

// #requires axiom for _module.__default.HoldsAtLeastForZero
axiom (forall x#0: int :: 
  { _module.__default.HoldsAtLeastForZero#requires(x#0) } 
  _module.__default.HoldsAtLeastForZero#requires(x#0) == true);

procedure {:verboseName "HoldsAtLeastForZero (well-formedness)"} CheckWellformed$$_module.__default.HoldsAtLeastForZero(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id132"} x#0 == LitInt(0) ==> _module.__default.HoldsAtLeastForZero(x#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "HoldsAtLeastForZero (well-formedness)"} CheckWellformed$$_module.__default.HoldsAtLeastForZero(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            assume {:id "id133"} x#0 == LitInt(0);
            ##x#0 := x#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assert {:id "id134"} 0 <= x#0 || ##x#0 == x#0;
            assert {:id "id135"} x#0 == x#0 || ##x#0 < x#0;
            assume x#0 == x#0 || _module.__default.HoldsAtLeastForZero#canCall(x#0);
            assume {:id "id136"} _module.__default.HoldsAtLeastForZero(x#0);
        }
        else
        {
            assume {:id "id137"} x#0 == LitInt(0) ==> _module.__default.HoldsAtLeastForZero(x#0);
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id138"} _module.__default.HoldsAtLeastForZero(x#0) == (x#0 < -2);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.HoldsAtLeastForZero(x#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.IncA
function _module.__default.IncA(x#0: int) : int
uses {
// consequence axiom for _module.__default.IncA
axiom 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.IncA(x#0) } 
    _module.__default.IncA#canCall(x#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= x#0)
       ==> x#0 < _module.__default.IncA(x#0) && LitInt(0) <= _module.__default.IncA(x#0));
// definition axiom for _module.__default.IncA (revealed)
axiom {:id "id139"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, x#0: int :: 
    { _module.__default.IncA(x#0), $IsGoodHeap($Heap) } 
    _module.__default.IncA#canCall(x#0)
         || (0 < $FunctionContextHeight && $IsGoodHeap($Heap) && LitInt(0) <= x#0)
       ==> (x#0 != LitInt(17) ==> $let#0$canCall(x#0))
         && _module.__default.IncA(x#0)
           == (if x#0 == LitInt(17) then 18 else (var y#0 := $let#0_y(x#0); y#0)));
// definition axiom for _module.__default.IncA for all literals (revealed)
axiom {:id "id140"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, x#0: int :: 
    {:weight 3} { _module.__default.IncA(LitInt(x#0)), $IsGoodHeap($Heap) } 
    _module.__default.IncA#canCall(LitInt(x#0))
         || (0 < $FunctionContextHeight && $IsGoodHeap($Heap) && LitInt(0) <= x#0)
       ==> (LitInt(x#0) != LitInt(17) ==> $let#0$canCall(LitInt(x#0)))
         && _module.__default.IncA(LitInt(x#0))
           == (if LitInt(x#0) == LitInt(17)
             then 18
             else (var y#1 := $let#0_y(LitInt(x#0)); y#1)));
}

function _module.__default.IncA#canCall(x#0: int) : bool;

function _module.__default.IncA#requires(int) : bool;

// #requires axiom for _module.__default.IncA
axiom (forall $Heap: Heap, x#0: int :: 
  { _module.__default.IncA#requires(x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && LitInt(0) <= x#0
     ==> _module.__default.IncA#requires(x#0) == true);

function $let#0_y(x: int) : int;

function $let#0$canCall(x: int) : bool;

axiom (forall x: int :: { $let#0_y(x) } $let#0$canCall(x) ==> x < $let#0_y(x));

procedure {:verboseName "IncA (well-formedness)"} CheckWellformed$$_module.__default.IncA(x#0: int where LitInt(0) <= x#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id141"} x#0 < _module.__default.IncA(x#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IncA (well-formedness)"} CheckWellformed$$_module.__default.IncA(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;
  var y#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.__default.IncA(x#0);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, Tclass._System.nat(), $Heap);
        assert {:id "id142"} 0 <= x#0 || ##x#0 == x#0;
        assert {:id "id143"} x#0 == x#0 || ##x#0 < x#0;
        assume x#0 == x#0 || _module.__default.IncA#canCall(x#0);
        assume {:id "id144"} x#0 < _module.__default.IncA(x#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (x#0 == LitInt(17))
        {
            assert {:id "id145"} $Is(LitInt(18), Tclass._System.nat());
            assume {:id "id146"} _module.__default.IncA(x#0) == LitInt(18);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.IncA(x#0), Tclass._System.nat());
            return;
        }
        else
        {
            havoc y#2;
            if (true)
            {
            }

            assert {:id "id147"} ($Is(x#0 + 1, TInt) && x#0 < x#0 + 1)
               || 
              ($Is(LitInt(0), TInt) && x#0 < 0)
               || (exists y#3: int :: x#0 < y#3);
            assume true;
            assume x#0 < y#2;
            assume $let#0$canCall(x#0);
            assert {:id "id148"} $Is(y#2, Tclass._System.nat());
            assume {:id "id149"} _module.__default.IncA(x#0) == y#2;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.IncA(x#0), Tclass._System.nat());
            return;
        }

        assume false;
    }
}



procedure {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M (call)"} Call$$_module.__default.M();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "M (correctness)"} Impl$$_module.__default.M() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (correctness)"} Impl$$_module.__default.M() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: int where LitInt(0) <= z#0;
  var ##x#0: int;

    // AddMethodImpl: M, Impl$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(88,9)
    assume true;
    assert {:id "id150"} $Is(LitInt(10), Tclass._System.nat());
    ##x#0 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._System.nat(), $Heap);
    assume _module.__default.IncA#canCall(LitInt(10));
    assume _module.__default.IncA#canCall(LitInt(10));
    z#0 := LitInt(_module.__default.IncA(LitInt(10)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(89,3)
    assume true;
    assert {:id "id152"} z#0 != 0;
}



// function declaration for _module._default.IncB
function _module.__default.IncB(i#0: int) : int
uses {
// consequence axiom for _module.__default.IncB
axiom 0 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    { _module.__default.IncB(i#0) } 
    _module.__default.IncB#canCall(i#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> LitInt(0) <= _module.__default.IncB(i#0));
// definition axiom for _module.__default.IncB (revealed)
axiom {:id "id153"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, i#0: int :: 
    { _module.__default.IncB(i#0), $IsGoodHeap($Heap) } 
    _module.__default.IncB#canCall(i#0)
         || (0 < $FunctionContextHeight && $IsGoodHeap($Heap) && LitInt(0) <= i#0)
       ==> $let#3$canCall(i#0)
         && _module.__default.IncB(i#0) == (var n#0 := $let#3_n(i#0); n#0));
// definition axiom for _module.__default.IncB for all literals (revealed)
axiom {:id "id154"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, i#0: int :: 
    {:weight 3} { _module.__default.IncB(LitInt(i#0)), $IsGoodHeap($Heap) } 
    _module.__default.IncB#canCall(LitInt(i#0))
         || (0 < $FunctionContextHeight && $IsGoodHeap($Heap) && LitInt(0) <= i#0)
       ==> $let#3$canCall(LitInt(i#0))
         && _module.__default.IncB(LitInt(i#0)) == (var n#1 := $let#3_n(LitInt(i#0)); n#1));
}

function _module.__default.IncB#canCall(i#0: int) : bool;

function _module.__default.IncB#requires(int) : bool;

// #requires axiom for _module.__default.IncB
axiom (forall $Heap: Heap, i#0: int :: 
  { _module.__default.IncB#requires(i#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && LitInt(0) <= i#0
     ==> _module.__default.IncB#requires(i#0) == true);

function $let#3_n(i: int) : int;

function $let#3$canCall(i: int) : bool;

axiom (forall i: int :: { $let#3_n(i) } $let#3$canCall(i) ==> $let#3_n(i) > i);

procedure {:verboseName "IncB (well-formedness)"} CheckWellformed$$_module.__default.IncB(i#0: int where LitInt(0) <= i#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IncB (well-formedness)"} CheckWellformed$$_module.__default.IncB(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var n#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.__default.IncB(i#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc n#2;
        if (true)
        {
        }

        assert {:id "id155"} ($Is(i#0 + 1, TInt) && i#0 + 1 > i#0)
           || 
          ($Is(LitInt(0), TInt) && 0 > i#0)
           || (exists n#3: int :: n#3 > i#0);
        assume true;
        assume n#2 > i#0;
        assume $let#3$canCall(i#0);
        assert {:id "id156"} $Is(n#2, Tclass._System.nat());
        assume {:id "id157"} _module.__default.IncB(i#0) == n#2;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.IncB(i#0), Tclass._System.nat());
        return;

        assume false;
    }
}



// function declaration for _module._default.IncC
function _module.__default.IncC(i#0: int) : int
uses {
// consequence axiom for _module.__default.IncC
axiom 0 <= $FunctionContextHeight
   ==> (forall i#0: int :: 
    { _module.__default.IncC(i#0) } 
    _module.__default.IncC#canCall(i#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= i#0)
       ==> _module.__default.IncC(i#0) >= LitInt(0));
// definition axiom for _module.__default.IncC (revealed)
axiom {:id "id158"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, i#0: int :: 
    { _module.__default.IncC(i#0), $IsGoodHeap($Heap) } 
    _module.__default.IncC#canCall(i#0)
         || (0 < $FunctionContextHeight && $IsGoodHeap($Heap) && LitInt(0) <= i#0)
       ==> $let#6$canCall(i#0)
         && _module.__default.IncC(i#0) == (var n#0 := $let#6_n(i#0); n#0));
// definition axiom for _module.__default.IncC for all literals (revealed)
axiom {:id "id159"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, i#0: int :: 
    {:weight 3} { _module.__default.IncC(LitInt(i#0)), $IsGoodHeap($Heap) } 
    _module.__default.IncC#canCall(LitInt(i#0))
         || (0 < $FunctionContextHeight && $IsGoodHeap($Heap) && LitInt(0) <= i#0)
       ==> $let#6$canCall(LitInt(i#0))
         && _module.__default.IncC(LitInt(i#0)) == (var n#1 := $let#6_n(LitInt(i#0)); n#1));
}

function _module.__default.IncC#canCall(i#0: int) : bool;

function _module.__default.IncC#requires(int) : bool;

// #requires axiom for _module.__default.IncC
axiom (forall $Heap: Heap, i#0: int :: 
  { _module.__default.IncC#requires(i#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && LitInt(0) <= i#0
     ==> _module.__default.IncC#requires(i#0) == true);

function $let#6_n(i: int) : int;

function $let#6$canCall(i: int) : bool;

axiom (forall i: int :: { $let#6_n(i) } $let#6$canCall(i) ==> $let#6_n(i) > i);

procedure {:verboseName "IncC (well-formedness)"} CheckWellformed$$_module.__default.IncC(i#0: int where LitInt(0) <= i#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id160"} _module.__default.IncC(i#0) >= LitInt(0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IncC (well-formedness)"} CheckWellformed$$_module.__default.IncC(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##i#0: int;
  var n#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        ##i#0 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##i#0, Tclass._System.nat(), $Heap);
        assert {:id "id161"} 0 <= i#0 || ##i#0 == i#0;
        assert {:id "id162"} i#0 == i#0 || ##i#0 < i#0;
        assume i#0 == i#0 || _module.__default.IncC#canCall(i#0);
        assume {:id "id163"} _module.__default.IncC(i#0) >= LitInt(0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc n#2;
        if (true)
        {
        }

        assert {:id "id164"} ($Is(i#0 + 1, TInt) && i#0 + 1 > i#0)
           || 
          ($Is(LitInt(0), TInt) && 0 > i#0)
           || (exists n#3: int :: n#3 > i#0);
        assume true;
        assume n#2 > i#0;
        assume $let#6$canCall(i#0);
        assume {:id "id165"} _module.__default.IncC(i#0) == n#2;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.IncC(i#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module._default.secret
function _module.__default.secret($reveal: bool, x#0: int, y#0: int) : int
uses {
// consequence axiom for _module.__default.secret
axiom 0 <= $FunctionContextHeight
   ==> (forall $reveal: bool, x#0: int, y#0: int :: 
    { _module.__default.secret($reveal, x#0, y#0) } 
    _module.__default.secret#canCall(x#0, y#0)
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= x#0
           && x#0 < 5
           && 
          LitInt(0) <= y#0
           && y#0 < 5)
       ==> _module.__default.secret(reveal__module._default.secret, x#0, y#0) < 10);
// definition axiom for _module.__default.secret (revealed)
axiom {:id "id166"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    { _module.__default.secret(true, x#0, y#0) } 
    _module.__default.secret#canCall(x#0, y#0)
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= x#0
           && x#0 < 5
           && 
          LitInt(0) <= y#0
           && y#0 < 5)
       ==> _module.__default.secret(true, x#0, y#0) == x#0 + y#0);
// definition axiom for _module.__default.secret for all literals (revealed)
axiom {:id "id167"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    {:weight 3} { _module.__default.secret(true, LitInt(x#0), LitInt(y#0)) } 
    _module.__default.secret#canCall(LitInt(x#0), LitInt(y#0))
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= LitInt(x#0)
           && x#0 < 5
           && 
          LitInt(0) <= LitInt(y#0)
           && y#0 < 5)
       ==> _module.__default.secret(true, LitInt(x#0), LitInt(y#0)) == LitInt(x#0 + y#0));
}

function _module.__default.secret#canCall(x#0: int, y#0: int) : bool;

function _module.__default.secret#requires(int, int) : bool;

// #requires axiom for _module.__default.secret
axiom (forall x#0: int, y#0: int :: 
  { _module.__default.secret#requires(x#0, y#0) } 
  _module.__default.secret#requires(x#0, y#0)
     == (LitInt(0) <= x#0 && x#0 < 5 && LitInt(0) <= y#0 && y#0 < 5));

procedure {:verboseName "secret (well-formedness)"} CheckWellformed$$_module.__default.secret(x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id168"} _module.__default.secret(reveal__module._default.secret, x#0, y#0) < 10;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "secret (well-formedness)"} CheckWellformed$$_module.__default.secret(x#0: int, y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;
  var ##y#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    if (LitInt(0) <= x#0)
    {
    }

    assume {:id "id169"} LitInt(0) <= x#0 && x#0 < 5;
    if (LitInt(0) <= y#0)
    {
    }

    assume {:id "id170"} LitInt(0) <= y#0 && y#0 < 5;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        ##y#0 := y#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0, TInt, $Heap);
        assert {:id "id171"} {:subsumption 0} LitInt(0) <= ##x#0;
        assert {:id "id172"} {:subsumption 0} ##x#0 < 5;
        assume LitInt(0) <= ##x#0 && ##x#0 < 5;
        assert {:id "id173"} {:subsumption 0} LitInt(0) <= ##y#0;
        assert {:id "id174"} {:subsumption 0} ##y#0 < 5;
        assume LitInt(0) <= ##y#0 && ##y#0 < 5;
        assert {:id "id175"} 0 <= x#0 || ##x#0 == x#0;
        assert {:id "id176"} 0 <= y#0 || ##x#0 < x#0 || ##y#0 == y#0;
        assert {:id "id177"} (x#0 == x#0 && y#0 == y#0) || ##x#0 < x#0 || (##x#0 == x#0 && ##y#0 < y#0);
        assume (x#0 == x#0 && y#0 == y#0) || _module.__default.secret#canCall(x#0, y#0);
        assume {:id "id178"} _module.__default.secret(reveal__module._default.secret, x#0, y#0) < 10;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id179"} _module.__default.secret(reveal__module._default.secret, x#0, y#0) == x#0 + y#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.secret(reveal__module._default.secret, x#0, y#0), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "test_secret (well-formedness)"} CheckWellFormed$$_module.__default.test__secret();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_secret (call)"} Call$$_module.__default.test__secret();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_secret (correctness)"} Impl$$_module.__default.test__secret() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_secret (correctness)"} Impl$$_module.__default.test__secret() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: int;
  var ##y#0: int;
  var ##x#1: int;
  var ##y#1: int;
  var ##x#2: int;
  var ##y#2: int;

    // AddMethodImpl: test_secret, Impl$$_module.__default.test__secret
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(117,3)
    ##x#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    ##y#0 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#0, TInt, $Heap);
    assert {:id "id180"} {:subsumption 0} LitInt(0) <= ##x#0;
    assert {:id "id181"} {:subsumption 0} ##x#0 < 5;
    assert {:id "id182"} {:subsumption 0} LitInt(0) <= ##y#0;
    assert {:id "id183"} {:subsumption 0} ##y#0 < 5;
    assume _module.__default.secret#canCall(LitInt(2), LitInt(3));
    assume _module.__default.secret#canCall(LitInt(2), LitInt(3));
    assert {:id "id184"} _module.__default.secret(reveal__module._default.secret, LitInt(2), LitInt(3))
       >= LitInt(5);
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(118,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(118,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id185"} Call$$_module.__default.reveal__secret();
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(119,3)
    ##x#1 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TInt, $Heap);
    ##y#1 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#1, TInt, $Heap);
    assert {:id "id186"} {:subsumption 0} LitInt(0) <= ##x#1;
    assert {:id "id187"} {:subsumption 0} ##x#1 < 5;
    assert {:id "id188"} {:subsumption 0} LitInt(0) <= ##y#1;
    assert {:id "id189"} {:subsumption 0} ##y#1 < 5;
    assume _module.__default.secret#canCall(LitInt(2), LitInt(3));
    assume _module.__default.secret#canCall(LitInt(2), LitInt(3));
    assert {:id "id190"} _module.__default.secret(reveal__module._default.secret, LitInt(2), LitInt(3))
       == LitInt(5);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(120,3)
    ##x#2 := LitInt(4);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, TInt, $Heap);
    ##y#2 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#2, TInt, $Heap);
    assert {:id "id191"} {:subsumption 0} LitInt(0) <= ##x#2;
    assert {:id "id192"} {:subsumption 0} ##x#2 < 5;
    assert {:id "id193"} {:subsumption 0} LitInt(0) <= ##y#2;
    assert {:id "id194"} {:subsumption 0} ##y#2 < 5;
    assume _module.__default.secret#canCall(LitInt(4), LitInt(1));
    assume _module.__default.secret#canCall(LitInt(4), LitInt(1));
    assert {:id "id195"} _module.__default.secret(reveal__module._default.secret, LitInt(4), LitInt(1))
       == LitInt(7);
}



// function declaration for _module._default.recursive_f
function _module.__default.recursive__f($ly: LayerType, $reveal: bool, x#0: int) : int
uses {
// definition axiom for _module.__default.recursive__f (revealed)
axiom {:id "id196"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: int :: 
    { _module.__default.recursive__f($LS($ly), true, x#0) } 
    _module.__default.recursive__f#canCall(x#0)
         || (0 < $FunctionContextHeight && x#0 >= LitInt(0))
       ==> (x#0 != LitInt(0) ==> _module.__default.recursive__f#canCall(x#0 - 1))
         && _module.__default.recursive__f($LS($ly), true, x#0)
           == (if x#0 == LitInt(0)
             then 0
             else 1
               + _module.__default.recursive__f($ly, reveal__module._default.recursive_f, x#0 - 1)));
// definition axiom for _module.__default.recursive__f for all literals (revealed)
axiom {:id "id197"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: int :: 
    {:weight 3} { _module.__default.recursive__f($LS($ly), true, LitInt(x#0)) } 
    _module.__default.recursive__f#canCall(LitInt(x#0))
         || (0 < $FunctionContextHeight && LitInt(x#0) >= LitInt(0))
       ==> (LitInt(x#0) != LitInt(0)
           ==> _module.__default.recursive__f#canCall(LitInt(x#0 - 1)))
         && _module.__default.recursive__f($LS($ly), true, LitInt(x#0))
           == (if LitInt(x#0) == LitInt(0)
             then 0
             else 1
               + _module.__default.recursive__f($LS($ly), reveal__module._default.recursive_f, LitInt(x#0 - 1))));
}

function _module.__default.recursive__f#canCall(x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, x#0: int :: 
  { _module.__default.recursive__f($LS($ly), $reveal, x#0) } 
  _module.__default.recursive__f($LS($ly), $reveal, x#0)
     == _module.__default.recursive__f($ly, $reveal, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, x#0: int :: 
  { _module.__default.recursive__f(AsFuelBottom($ly), $reveal, x#0) } 
  _module.__default.recursive__f($ly, $reveal, x#0)
     == _module.__default.recursive__f($LZ, $reveal, x#0));

function _module.__default.recursive__f#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.recursive__f
axiom (forall $ly: LayerType, x#0: int :: 
  { _module.__default.recursive__f#requires($ly, x#0) } 
  _module.__default.recursive__f#requires($ly, x#0) == (x#0 >= LitInt(0)));

procedure {:verboseName "recursive_f (well-formedness)"} CheckWellformed$$_module.__default.recursive__f(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "recursive_f (well-formedness)"} CheckWellformed$$_module.__default.recursive__f(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id198"} x#0 >= LitInt(0);
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
        if (x#0 == LitInt(0))
        {
            assume {:id "id199"} _module.__default.recursive__f($LS($LZ), reveal__module._default.recursive_f, x#0)
               == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.recursive__f($LS($LZ), reveal__module._default.recursive_f, x#0), 
              TInt);
            return;
        }
        else
        {
            ##x#0 := x#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assert {:id "id200"} {:subsumption 0} ##x#0 >= LitInt(0);
            assume ##x#0 >= LitInt(0);
            assert {:id "id201"} 0 <= x#0 || ##x#0 == x#0;
            assert {:id "id202"} ##x#0 < x#0;
            assume _module.__default.recursive__f#canCall(x#0 - 1);
            assume {:id "id203"} _module.__default.recursive__f($LS($LZ), reveal__module._default.recursive_f, x#0)
               == 1
                 + _module.__default.recursive__f($LS($LZ), reveal__module._default.recursive_f, x#0 - 1);
            assume _module.__default.recursive__f#canCall(x#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.recursive__f($LS($LZ), reveal__module._default.recursive_f, x#0), 
              TInt);
            return;
        }

        assume false;
    }
}



procedure {:verboseName "test_recursive_f (well-formedness)"} CheckWellFormed$$_module.__default.test__recursive__f();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_recursive_f (call)"} Call$$_module.__default.test__recursive__f();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test_recursive_f (correctness)"} Impl$$_module.__default.test__recursive__f() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_recursive_f (correctness)"} Impl$$_module.__default.test__recursive__f() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0_0: int;
  var ##x#1_0: int;
  var ##x#1_1: int;

    // AddMethodImpl: test_recursive_f, Impl$$_module.__default.test__recursive__f
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(134,3)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(135,5)
        ##x#0_0 := LitInt(4);
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_0, TInt, $Heap);
        assert {:id "id204"} {:subsumption 0} ##x#0_0 >= LitInt(0);
        assume _module.__default.recursive__f#canCall(LitInt(4));
        assume _module.__default.recursive__f#canCall(LitInt(4));
        assert {:id "id205"} {:subsumption 0} _module.__default.recursive__f($LS($LS($LZ)), reveal__module._default.recursive_f, LitInt(4))
           == LitInt(4);
        assume {:id "id206"} _module.__default.recursive__f($LS($LZ), reveal__module._default.recursive_f, LitInt(4))
           == LitInt(4);
    }
    else
    {
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(137,5)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(137,12)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id207"} Call$$_module.__default.reveal__recursive__f();
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(138,5)
        ##x#1_0 := LitInt(4);
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#1_0, TInt, $Heap);
        assert {:id "id208"} {:subsumption 0} ##x#1_0 >= LitInt(0);
        assume _module.__default.recursive__f#canCall(LitInt(4));
        assume _module.__default.recursive__f#canCall(LitInt(4));
        assert {:id "id209"} {:subsumption 0} _module.__default.recursive__f($LS($LS($LZ)), reveal__module._default.recursive_f, LitInt(4))
           == LitInt(4);
        assume {:id "id210"} _module.__default.recursive__f($LS($LZ), reveal__module._default.recursive_f, LitInt(4))
           == LitInt(4);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/FunctionSpecifications.dfy(139,5)
        ##x#1_1 := LitInt(3);
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#1_1, TInt, $Heap);
        assert {:id "id211"} {:subsumption 0} ##x#1_1 >= LitInt(0);
        assume _module.__default.recursive__f#canCall(LitInt(3));
        assume _module.__default.recursive__f#canCall(LitInt(3));
        assert {:id "id212"} {:subsumption 0} _module.__default.recursive__f($LS($LS($LZ)), reveal__module._default.recursive_f, LitInt(3))
           == LitInt(5);
        assume {:id "id213"} _module.__default.recursive__f($LS($LZ), reveal__module._default.recursive_f, LitInt(3))
           == LitInt(5);
    }
}



// function declaration for _module._default.bad_ensures
function _module.__default.bad__ensures($reveal: bool, x#0: int, y#0: int) : int
uses {
// consequence axiom for _module.__default.bad__ensures
axiom 0 <= $FunctionContextHeight
   ==> (forall $reveal: bool, x#0: int, y#0: int :: 
    { _module.__default.bad__ensures($reveal, x#0, y#0) } 
    _module.__default.bad__ensures#canCall(x#0, y#0)
         || (0 < $FunctionContextHeight && x#0 >= LitInt(0) && y#0 >= LitInt(0))
       ==> _module.__default.bad__ensures(reveal__module._default.bad_ensures, x#0, y#0)
         > 0);
// definition axiom for _module.__default.bad__ensures (revealed)
axiom {:id "id214"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    { _module.__default.bad__ensures(true, x#0, y#0) } 
    _module.__default.bad__ensures#canCall(x#0, y#0)
         || (0 < $FunctionContextHeight && x#0 >= LitInt(0) && y#0 >= LitInt(0))
       ==> _module.__default.bad__ensures(true, x#0, y#0) == x#0 + y#0);
// definition axiom for _module.__default.bad__ensures for all literals (revealed)
axiom {:id "id215"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    {:weight 3} { _module.__default.bad__ensures(true, LitInt(x#0), LitInt(y#0)) } 
    _module.__default.bad__ensures#canCall(LitInt(x#0), LitInt(y#0))
         || (0 < $FunctionContextHeight
           && 
          LitInt(x#0) >= LitInt(0)
           && LitInt(y#0) >= LitInt(0))
       ==> _module.__default.bad__ensures(true, LitInt(x#0), LitInt(y#0))
         == LitInt(x#0 + y#0));
}

function _module.__default.bad__ensures#canCall(x#0: int, y#0: int) : bool;

function _module.__default.bad__ensures#requires(int, int) : bool;

// #requires axiom for _module.__default.bad__ensures
axiom (forall x#0: int, y#0: int :: 
  { _module.__default.bad__ensures#requires(x#0, y#0) } 
  _module.__default.bad__ensures#requires(x#0, y#0)
     == (x#0 >= LitInt(0) && y#0 >= LitInt(0)));

procedure {:verboseName "bad_ensures (well-formedness)"} CheckWellformed$$_module.__default.bad__ensures(x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id216"} _module.__default.bad__ensures(reveal__module._default.bad_ensures, x#0, y#0)
     > 0;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "bad_ensures (well-formedness)"} CheckWellformed$$_module.__default.bad__ensures(x#0: int, y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: int;
  var ##y#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id217"} x#0 >= LitInt(0);
    assume {:id "id218"} y#0 >= LitInt(0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        ##y#0 := y#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0, TInt, $Heap);
        assert {:id "id219"} {:subsumption 0} ##x#0 >= LitInt(0);
        assert {:id "id220"} {:subsumption 0} ##y#0 >= LitInt(0);
        assume ##x#0 >= LitInt(0) && ##y#0 >= LitInt(0);
        assert {:id "id221"} 0 <= x#0 || ##x#0 == x#0;
        assert {:id "id222"} 0 <= y#0 || ##x#0 < x#0 || ##y#0 == y#0;
        assert {:id "id223"} (x#0 == x#0 && y#0 == y#0) || ##x#0 < x#0 || (##x#0 == x#0 && ##y#0 < y#0);
        assume (x#0 == x#0 && y#0 == y#0) || _module.__default.bad__ensures#canCall(x#0, y#0);
        assume {:id "id224"} _module.__default.bad__ensures(reveal__module._default.bad_ensures, x#0, y#0)
           > 0;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id225"} _module.__default.bad__ensures(reveal__module._default.bad_ensures, x#0, y#0)
           == x#0 + y#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.bad__ensures(reveal__module._default.bad_ensures, x#0, y#0), 
          TInt);
        return;

        assume false;
    }
}



// function declaration for _module._default.f
function _module.__default.f($ly: LayerType, $reveal: bool, i#0: int) : int
uses {
// definition axiom for _module.__default.f (revealed)
axiom {:id "id226"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, i#0: int :: 
    { _module.__default.f($LS($ly), true, i#0) } 
    _module.__default.f#canCall(i#0) || 0 < $FunctionContextHeight
       ==> _module.__default.f#canCall(i#0)
         && _module.__default.f($LS($ly), true, i#0)
           == _module.__default.f($ly, reveal__module._default.f, i#0) + 1);
// definition axiom for _module.__default.f for all literals (revealed)
axiom {:id "id227"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, i#0: int :: 
    {:weight 3} { _module.__default.f($LS($ly), true, LitInt(i#0)) } 
    _module.__default.f#canCall(LitInt(i#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.f#canCall(LitInt(i#0))
         && _module.__default.f($LS($ly), true, LitInt(i#0))
           == _module.__default.f($LS($ly), reveal__module._default.f, LitInt(i#0)) + 1);
}

function _module.__default.f#canCall(i#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, i#0: int :: 
  { _module.__default.f($LS($ly), $reveal, i#0) } 
  _module.__default.f($LS($ly), $reveal, i#0)
     == _module.__default.f($ly, $reveal, i#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, i#0: int :: 
  { _module.__default.f(AsFuelBottom($ly), $reveal, i#0) } 
  _module.__default.f($ly, $reveal, i#0) == _module.__default.f($LZ, $reveal, i#0));

function _module.__default.f#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.f
axiom (forall $ly: LayerType, i#0: int :: 
  { _module.__default.f#requires($ly, i#0) } 
  _module.__default.f#requires($ly, i#0) == true);

procedure {:verboseName "f (well-formedness)"} CheckWellformed$$_module.__default.f(i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "f (well-formedness)"} CheckWellformed$$_module.__default.f(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##i#0: int;


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
        ##i#0 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##i#0, TInt, $Heap);
        assert {:id "id228"} 0 <= i#0 || ##i#0 == i#0;
        assert {:id "id229"} ##i#0 < i#0;
        assume _module.__default.f#canCall(i#0);
        assume {:id "id230"} _module.__default.f($LS($LZ), reveal__module._default.f, i#0)
           == _module.__default.f($LS($LZ), reveal__module._default.f, i#0) + 1;
        assume _module.__default.f#canCall(i#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.f($LS($LZ), reveal__module._default.f, i#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module._default.g
function _module.__default.g($ly: LayerType, $reveal: bool, i#0: int) : int
uses {
// definition axiom for _module.__default.g (revealed)
axiom {:id "id231"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, i#0: int :: 
    { _module.__default.g($LS($ly), true, i#0) } 
    _module.__default.g#canCall(i#0) || 0 < $FunctionContextHeight
       ==> _module.__default.h#canCall(i#0)
         && _module.__default.g($LS($ly), true, i#0) == _module.__default.h($ly, i#0) + 1);
// definition axiom for _module.__default.g for all literals (revealed)
axiom {:id "id232"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, i#0: int :: 
    {:weight 3} { _module.__default.g($LS($ly), true, LitInt(i#0)) } 
    _module.__default.g#canCall(LitInt(i#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.h#canCall(LitInt(i#0))
         && _module.__default.g($LS($ly), true, LitInt(i#0))
           == LitInt(_module.__default.h($LS($ly), LitInt(i#0)) + 1));
}

function _module.__default.g#canCall(i#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, i#0: int :: 
  { _module.__default.g($LS($ly), $reveal, i#0) } 
  _module.__default.g($LS($ly), $reveal, i#0)
     == _module.__default.g($ly, $reveal, i#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, i#0: int :: 
  { _module.__default.g(AsFuelBottom($ly), $reveal, i#0) } 
  _module.__default.g($ly, $reveal, i#0) == _module.__default.g($LZ, $reveal, i#0));

function _module.__default.g#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.g
axiom (forall $ly: LayerType, i#0: int :: 
  { _module.__default.g#requires($ly, i#0) } 
  _module.__default.g#requires($ly, i#0) == true);

procedure {:verboseName "g (well-formedness)"} CheckWellformed$$_module.__default.g(i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "g (well-formedness)"} CheckWellformed$$_module.__default.g(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##i#0: int;


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
        ##i#0 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##i#0, TInt, $Heap);
        assert {:id "id233"} 0 <= i#0 || ##i#0 == i#0;
        assert {:id "id234"} ##i#0 < i#0;
        assume _module.__default.h#canCall(i#0);
        assume {:id "id235"} _module.__default.g($LS($LZ), reveal__module._default.g, i#0)
           == _module.__default.h($LS($LZ), i#0) + 1;
        assume _module.__default.h#canCall(i#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.g($LS($LZ), reveal__module._default.g, i#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module._default.h
function _module.__default.h($ly: LayerType, i#0: int) : int
uses {
// definition axiom for _module.__default.h (revealed)
axiom {:id "id236"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, i#0: int :: 
    { _module.__default.h($LS($ly), i#0) } 
    _module.__default.h#canCall(i#0) || 0 < $FunctionContextHeight
       ==> _module.__default.g#canCall(i#0)
         && _module.__default.h($LS($ly), i#0)
           == _module.__default.g($ly, reveal__module._default.g, i#0));
// definition axiom for _module.__default.h for all literals (revealed)
axiom {:id "id237"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, i#0: int :: 
    {:weight 3} { _module.__default.h($LS($ly), LitInt(i#0)) } 
    _module.__default.h#canCall(LitInt(i#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.g#canCall(LitInt(i#0))
         && _module.__default.h($LS($ly), LitInt(i#0))
           == _module.__default.g($LS($ly), reveal__module._default.g, LitInt(i#0)));
}

function _module.__default.h#canCall(i#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, i#0: int :: 
  { _module.__default.h($LS($ly), i#0) } 
  _module.__default.h($LS($ly), i#0) == _module.__default.h($ly, i#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, i#0: int :: 
  { _module.__default.h(AsFuelBottom($ly), i#0) } 
  _module.__default.h($ly, i#0) == _module.__default.h($LZ, i#0));

function _module.__default.h#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.h
axiom (forall $ly: LayerType, i#0: int :: 
  { _module.__default.h#requires($ly, i#0) } 
  _module.__default.h#requires($ly, i#0) == true);

procedure {:verboseName "h (well-formedness)"} CheckWellformed$$_module.__default.h(i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "h (well-formedness)"} CheckWellformed$$_module.__default.h(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##i#0: int;


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
        ##i#0 := i#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##i#0, TInt, $Heap);
        assert {:id "id238"} 0 <= i#0 || ##i#0 == i#0;
        assert {:id "id239"} ##i#0 < i#0;
        assume _module.__default.g#canCall(i#0);
        assume {:id "id240"} _module.__default.h($LS($LZ), i#0)
           == _module.__default.g($LS($LZ), reveal__module._default.g, i#0);
        assume _module.__default.g#canCall(i#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.h($LS($LZ), i#0), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "reveal_secret (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__secret();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_secret (call)"} {:verify false} Call$$_module.__default.reveal__secret();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.secret;



procedure {:verboseName "reveal_recursive_f (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__recursive__f();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_recursive_f (call)"} {:verify false} Call$$_module.__default.reveal__recursive__f();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.recursive_f;



procedure {:verboseName "reveal_bad_ensures (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__bad__ensures();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_bad_ensures (call)"} {:verify false} Call$$_module.__default.reveal__bad__ensures();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.bad_ensures;



procedure {:verboseName "reveal_f (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__f();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_f (call)"} {:verify false} Call$$_module.__default.reveal__f();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.f;



procedure {:verboseName "reveal_g (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__g();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_g (call)"} {:verify false} Call$$_module.__default.reveal__g();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.g;



// Constructor function declaration
function #_module.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
// Constructor $Is
axiom $Is(#_module.List.Nil(), Tclass._module.List());
// Constructor literal
axiom #_module.List.Nil() == Lit(#_module.List.Nil());
}

const unique ##_module.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
}

function _module.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) ==> d == #_module.List.Nil());

// Constructor function declaration
function #_module.List.Cons(int, DatatypeType) : DatatypeType;

const unique ##_module.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: int, a#4#1#0: DatatypeType :: 
  { #_module.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#_module.List.Cons(a#4#0#0, a#4#1#0)) == ##_module.List.Cons);
}

function _module.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d)
     ==> (exists a#5#0#0: int, a#5#1#0: DatatypeType :: 
      d == #_module.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall a#6#0#0: int, a#6#1#0: DatatypeType :: 
  { $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List()) } 
  $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List())
     <==> $Is(a#6#0#0, TInt) && $Is(a#6#1#0, Tclass._module.List()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.List._h0(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(), $h)
     ==> $IsAlloc(_module.List._h0(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.List._h1(d), Tclass._module.List(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(), $h)
     ==> $IsAlloc(_module.List._h1(d), Tclass._module.List(), $h));

// Constructor literal
axiom (forall a#7#0#0: int, a#7#1#0: DatatypeType :: 
  { #_module.List.Cons(LitInt(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.List.Cons(LitInt(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.List.Cons(a#7#0#0, a#7#1#0)));

function _module.List._h0(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#8#0#0: int, a#8#1#0: DatatypeType :: 
  { #_module.List.Cons(a#8#0#0, a#8#1#0) } 
  _module.List._h0(#_module.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

function _module.List._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: int, a#9#1#0: DatatypeType :: 
  { #_module.List.Cons(a#9#0#0, a#9#1#0) } 
  _module.List._h1(#_module.List.Cons(a#9#0#0, a#9#1#0)) == a#9#1#0);

// Inductive rank
axiom (forall a#10#0#0: int, a#10#1#0: DatatypeType :: 
  { #_module.List.Cons(a#10#0#0, a#10#1#0) } 
  DtRank(a#10#1#0) < DtRank(#_module.List.Cons(a#10#0#0, a#10#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.List(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.List())
     ==> $IsAlloc(d, Tclass._module.List(), $h));

// Depth-one case-split function
function $IsA#_module.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.List(d) } 
  $IsA#_module.List(d) ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d), $Is(d, Tclass._module.List()) } 
    { _module.List.Nil_q(d), $Is(d, Tclass._module.List()) } 
  $Is(d, Tclass._module.List())
     ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Datatype extensional equality declaration
function _module.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Nil_q(a) } 
    { _module.List#Equal(a, b), _module.List.Nil_q(b) } 
  _module.List.Nil_q(a) && _module.List.Nil_q(b) ==> _module.List#Equal(a, b));

// Datatype extensional equality definition: #_module.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Cons_q(a) } 
    { _module.List#Equal(a, b), _module.List.Cons_q(b) } 
  _module.List.Cons_q(a) && _module.List.Cons_q(b)
     ==> (_module.List#Equal(a, b)
       <==> _module.List._h0(a) == _module.List._h0(b)
         && _module.List#Equal(_module.List._h1(a), _module.List._h1(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

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

const unique tytagFamily$List: TyTagFamily;
