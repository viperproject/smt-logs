// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy

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

const unique class._module.__default: ClassName;

// function declaration for _module._default.SafeDivide
function _module.__default.SafeDivide(a#0: int, b#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.SafeDivide
axiom 1 <= $FunctionContextHeight
   ==> (forall a#0: int, b#0: int :: 
    { _module.__default.SafeDivide(a#0, b#0) } 
    _module.__default.SafeDivide#canCall(a#0, b#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= a#0 && LitInt(0) <= b#0)
       ==> $Is(_module.__default.SafeDivide(a#0, b#0), Tclass._module.NatOutcome()));
// definition axiom for _module.__default.SafeDivide (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall a#0: int, b#0: int :: 
    { _module.__default.SafeDivide(a#0, b#0) } 
    _module.__default.SafeDivide#canCall(a#0, b#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= a#0 && LitInt(0) <= b#0)
       ==> _module.__default.SafeDivide(a#0, b#0)
         == (if b#0 == LitInt(0)
           then #_module.NatOutcome.NatFailure(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(68))), $Box(char#FromInt(105))), 
                                      $Box(char#FromInt(118))), 
                                    $Box(char#FromInt(105))), 
                                  $Box(char#FromInt(100))), 
                                $Box(char#FromInt(101))), 
                              $Box(char#FromInt(32))), 
                            $Box(char#FromInt(98))), 
                          $Box(char#FromInt(121))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(122))), 
                    $Box(char#FromInt(101))), 
                  $Box(char#FromInt(114))), 
                $Box(char#FromInt(111)))))
           else #_module.NatOutcome.NatSuccess(Div(a#0, b#0))));
// definition axiom for _module.__default.SafeDivide for all literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall a#0: int, b#0: int :: 
    {:weight 3} { _module.__default.SafeDivide(LitInt(a#0), LitInt(b#0)) } 
    _module.__default.SafeDivide#canCall(LitInt(a#0), LitInt(b#0))
         || (1 < $FunctionContextHeight && LitInt(0) <= a#0 && LitInt(0) <= b#0)
       ==> _module.__default.SafeDivide(LitInt(a#0), LitInt(b#0))
         == (if LitInt(b#0) == LitInt(0)
           then #_module.NatOutcome.NatFailure(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(68))), $Box(char#FromInt(105))), 
                                      $Box(char#FromInt(118))), 
                                    $Box(char#FromInt(105))), 
                                  $Box(char#FromInt(100))), 
                                $Box(char#FromInt(101))), 
                              $Box(char#FromInt(32))), 
                            $Box(char#FromInt(98))), 
                          $Box(char#FromInt(121))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(122))), 
                    $Box(char#FromInt(101))), 
                  $Box(char#FromInt(114))), 
                $Box(char#FromInt(111)))))
           else #_module.NatOutcome.NatSuccess(LitInt(Div(a#0, LitInt(b#0))))));
}

function _module.__default.SafeDivide#canCall(a#0: int, b#0: int) : bool;

function Tclass._module.NatOutcome() : Ty
uses {
// Tclass._module.NatOutcome Tag
axiom Tag(Tclass._module.NatOutcome()) == Tagclass._module.NatOutcome
   && TagFamily(Tclass._module.NatOutcome()) == tytagFamily$NatOutcome;
}

const unique Tagclass._module.NatOutcome: TyTag;

// Box/unbox axiom for Tclass._module.NatOutcome
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatOutcome()) } 
  $IsBox(bx, Tclass._module.NatOutcome())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.NatOutcome()));

function _module.__default.SafeDivide#requires(int, int) : bool;

// #requires axiom for _module.__default.SafeDivide
axiom (forall a#0: int, b#0: int :: 
  { _module.__default.SafeDivide#requires(a#0, b#0) } 
  LitInt(0) <= a#0 && LitInt(0) <= b#0
     ==> _module.__default.SafeDivide#requires(a#0, b#0) == true);

procedure {:verboseName "SafeDivide (well-formedness)"} CheckWellformed$$_module.__default.SafeDivide(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SafeDivide (well-formedness)"} CheckWellformed$$_module.__default.SafeDivide(a#0: int, b#0: int)
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
        assume $Is(_module.__default.SafeDivide(a#0, b#0), Tclass._module.NatOutcome());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (b#0 == LitInt(0))
        {
            assume {:id "id2"} _module.__default.SafeDivide(a#0, b#0)
               == Lit(#_module.NatOutcome.NatFailure(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(68))), $Box(char#FromInt(105))), 
                                            $Box(char#FromInt(118))), 
                                          $Box(char#FromInt(105))), 
                                        $Box(char#FromInt(100))), 
                                      $Box(char#FromInt(101))), 
                                    $Box(char#FromInt(32))), 
                                  $Box(char#FromInt(98))), 
                                $Box(char#FromInt(121))), 
                              $Box(char#FromInt(32))), 
                            $Box(char#FromInt(122))), 
                          $Box(char#FromInt(101))), 
                        $Box(char#FromInt(114))), 
                      $Box(char#FromInt(111))))));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SafeDivide(a#0, b#0), Tclass._module.NatOutcome());
            return;
        }
        else
        {
            assert {:id "id3"} b#0 != 0;
            assert {:id "id4"} $Is(Div(a#0, b#0), Tclass._System.nat());
            assume {:id "id5"} _module.__default.SafeDivide(a#0, b#0)
               == #_module.NatOutcome.NatSuccess(Div(a#0, b#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SafeDivide(a#0, b#0), Tclass._module.NatOutcome());
            return;
        }

        assume false;
    }
}



procedure {:verboseName "UnsafeDivide (well-formedness)"} CheckWellFormed$$_module.__default.UnsafeDivide(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0)
   returns (r#0: int where LitInt(0) <= r#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UnsafeDivide (call)"} Call$$_module.__default.UnsafeDivide(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0)
   returns (r#0: int where LitInt(0) <= r#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UnsafeDivide (correctness)"} Impl$$_module.__default.UnsafeDivide(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0)
   returns (r#0: int where LitInt(0) <= r#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UnsafeDivide (correctness)"} Impl$$_module.__default.UnsafeDivide(a#0: int, b#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: UnsafeDivide, Impl$$_module.__default.UnsafeDivide
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(27,3)
    assume true;
    if (b#0 == 0)
    {
        assume true;
        assume false;
    }

    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(28,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(28,3)
    assume true;
    assert {:id "id6"} b#0 != 0;
    assert {:id "id7"} $Is(Div(a#0, b#0), Tclass._System.nat());
    assume true;
    r#0 := Div(a#0, b#0);
    return;
}



function Tclass._module.VoidOutcome() : Ty
uses {
// Tclass._module.VoidOutcome Tag
axiom Tag(Tclass._module.VoidOutcome()) == Tagclass._module.VoidOutcome
   && TagFamily(Tclass._module.VoidOutcome()) == tytagFamily$VoidOutcome;
}

const unique Tagclass._module.VoidOutcome: TyTag;

// Box/unbox axiom for Tclass._module.VoidOutcome
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.VoidOutcome()) } 
  $IsBox(bx, Tclass._module.VoidOutcome())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.VoidOutcome()));

procedure {:verboseName "FailUnless (well-formedness)"} CheckWellFormed$$_module.__default.FailUnless(p#0: bool)
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.VoidOutcome())
         && $IsAlloc(r#0, Tclass._module.VoidOutcome(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailUnless (call)"} Call$$_module.__default.FailUnless(p#0: bool)
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.VoidOutcome())
         && $IsAlloc(r#0, Tclass._module.VoidOutcome(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id12"} _module.VoidOutcome.VoidSuccess_q(r#0) ==> p#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailUnless (correctness)"} Impl$$_module.__default.FailUnless(p#0: bool)
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.VoidOutcome())
         && $IsAlloc(r#0, Tclass._module.VoidOutcome(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id13"} _module.VoidOutcome.VoidSuccess_q(r#0) ==> p#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailUnless (correctness)"} Impl$$_module.__default.FailUnless(p#0: bool) returns (r#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: FailUnless, Impl$$_module.__default.FailUnless
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(32,3)
    assume true;
    if (p#0)
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(33,5)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(33,5)
        assume true;
        assume true;
        r#0 := Lit(#_module.VoidOutcome.VoidSuccess());
        return;
    }
    else
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(35,5)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(35,5)
        assume true;
        assume true;
        r#0 := Lit(#_module.VoidOutcome.VoidFailure(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(101))), 
                                              $Box(char#FromInt(113))), 
                                            $Box(char#FromInt(117))), 
                                          $Box(char#FromInt(105))), 
                                        $Box(char#FromInt(114))), 
                                      $Box(char#FromInt(101))), 
                                    $Box(char#FromInt(109))), 
                                  $Box(char#FromInt(101))), 
                                $Box(char#FromInt(110))), 
                              $Box(char#FromInt(116))), 
                            $Box(char#FromInt(32))), 
                          $Box(char#FromInt(102))), 
                        $Box(char#FromInt(97))), 
                      $Box(char#FromInt(105))), 
                    $Box(char#FromInt(108))), 
                  $Box(char#FromInt(101))), 
                $Box(char#FromInt(100))))));
        return;
    }
}



// function declaration for _module._default.PassingTest
function _module.__default.PassingTest() : DatatypeType
uses {
// consequence axiom for _module.__default.PassingTest
axiom 1 <= $FunctionContextHeight
   ==> 
  _module.__default.PassingTest#canCall() || 1 < $FunctionContextHeight
   ==> $Is(_module.__default.PassingTest(), Tclass._module.VoidOutcome());
// definition axiom for _module.__default.PassingTest (revealed)
axiom {:id "id16"} 1 <= $FunctionContextHeight
   ==> 
  _module.__default.PassingTest#canCall() || 1 < $FunctionContextHeight
   ==> _module.__default.PassingTest() == Lit(#_module.VoidOutcome.VoidSuccess());
// definition axiom for _module.__default.PassingTest for all literals (revealed)
axiom {:id "id17"} 1 <= $FunctionContextHeight
   ==> 
  _module.__default.PassingTest#canCall() || 1 < $FunctionContextHeight
   ==> _module.__default.PassingTest() == Lit(#_module.VoidOutcome.VoidSuccess());
}

function _module.__default.PassingTest#canCall() : bool;

function _module.__default.PassingTest#requires() : bool
uses {
// #requires axiom for _module.__default.PassingTest
axiom _module.__default.PassingTest#requires() == true;
}

procedure {:verboseName "PassingTest (well-formedness)"} CheckWellformed$$_module.__default.PassingTest();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.FailingTest
function _module.__default.FailingTest() : DatatypeType
uses {
// consequence axiom for _module.__default.FailingTest
axiom 1 <= $FunctionContextHeight
   ==> 
  _module.__default.FailingTest#canCall() || 1 < $FunctionContextHeight
   ==> $Is(_module.__default.FailingTest(), Tclass._module.VoidOutcome());
// definition axiom for _module.__default.FailingTest (revealed)
axiom {:id "id19"} 1 <= $FunctionContextHeight
   ==> 
  _module.__default.FailingTest#canCall() || 1 < $FunctionContextHeight
   ==> _module.__default.FailingTest()
     == Lit(#_module.VoidOutcome.VoidFailure(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(87))), $Box(char#FromInt(104))), 
                      $Box(char#FromInt(111))), 
                    $Box(char#FromInt(111))), 
                  $Box(char#FromInt(112))), 
                $Box(char#FromInt(115))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(101))))));
// definition axiom for _module.__default.FailingTest for all literals (revealed)
axiom {:id "id20"} 1 <= $FunctionContextHeight
   ==> 
  _module.__default.FailingTest#canCall() || 1 < $FunctionContextHeight
   ==> _module.__default.FailingTest()
     == Lit(#_module.VoidOutcome.VoidFailure(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(87))), $Box(char#FromInt(104))), 
                      $Box(char#FromInt(111))), 
                    $Box(char#FromInt(111))), 
                  $Box(char#FromInt(112))), 
                $Box(char#FromInt(115))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(101))))));
}

function _module.__default.FailingTest#canCall() : bool;

function _module.__default.FailingTest#requires() : bool
uses {
// #requires axiom for _module.__default.FailingTest
axiom _module.__default.FailingTest#requires() == true;
}

procedure {:verboseName "FailingTest (well-formedness)"} CheckWellformed$$_module.__default.FailingTest();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestUsingExpect (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestUsingExpect();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestUsingExpect (call)"} Call$$_module.__default.PassingTestUsingExpect();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestUsingExpect (correctness)"} Impl$$_module.__default.PassingTestUsingExpect() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailingTestUsingExpect (well-formedness)"} CheckWellFormed$$_module.__default.FailingTestUsingExpect();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailingTestUsingExpect (call)"} Call$$_module.__default.FailingTestUsingExpect();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailingTestUsingExpect (correctness)"} Impl$$_module.__default.FailingTestUsingExpect() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailingTestUsingExpectWithMessage (well-formedness)"} CheckWellFormed$$_module.__default.FailingTestUsingExpectWithMessage();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailingTestUsingExpectWithMessage (call)"} Call$$_module.__default.FailingTestUsingExpectWithMessage();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailingTestUsingExpectWithMessage (correctness)"} Impl$$_module.__default.FailingTestUsingExpectWithMessage() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestUsingAssignOrHalt (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestUsingAssignOrHalt();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestUsingAssignOrHalt (call)"} Call$$_module.__default.PassingTestUsingAssignOrHalt();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestUsingAssignOrHalt (correctness)"} Impl$$_module.__default.PassingTestUsingAssignOrHalt() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestUsingAssignOrHalt (correctness)"} Impl$$_module.__default.PassingTestUsingAssignOrHalt() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var y#0: int;
  var q#0: int where LitInt(0) <= q#0;
  var valueOrError0#0: DatatypeType
     where $Is(valueOrError0#0, Tclass._module.NatOutcome())
       && $IsAlloc(valueOrError0#0, Tclass._module.NatOutcome(), $Heap);
  var ##a#0: int;
  var ##b#0: int;

    // AddMethodImpl: PassingTestUsingAssignOrHalt, Impl$$_module.__default.PassingTestUsingAssignOrHalt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(60,9)
    assume true;
    assume true;
    x#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(61,9)
    assume true;
    assume true;
    y#0 := LitInt(2);
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(62,9)
    havoc valueOrError0#0 /* where $Is(valueOrError0#0, Tclass._module.NatOutcome())
       && $IsAlloc(valueOrError0#0, Tclass._module.NatOutcome(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(62,19)
    assume true;
    assert {:id "id24"} $Is(x#0, Tclass._System.nat());
    ##a#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
    assert {:id "id25"} $Is(y#0, Tclass._System.nat());
    ##b#0 := y#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._System.nat(), $Heap);
    assume _module.__default.SafeDivide#canCall(x#0, y#0);
    assume _module.__default.SafeDivide#canCall(x#0, y#0);
    valueOrError0#0 := _module.__default.SafeDivide(x#0, y#0);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(62,12)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.NatOutcome(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError0#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError0#0);
    if (_module.NatOutcome.IsFailure(valueOrError0#0))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(62,9)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.NatOutcome(), $Heap);
    assert {:id "id27"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError0#0);
    assume !_module.NatOutcome.IsFailure(valueOrError0#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError0#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError0#0);
    q#0 := _module.NatOutcome.Extract(valueOrError0#0);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(63,3)
    assume true;
    if (q#0 != LitInt(2))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "FailingTestUsingAssignOrHalt (well-formedness)"} CheckWellFormed$$_module.__default.FailingTestUsingAssignOrHalt();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailingTestUsingAssignOrHalt (call)"} Call$$_module.__default.FailingTestUsingAssignOrHalt();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailingTestUsingAssignOrHalt (correctness)"} Impl$$_module.__default.FailingTestUsingAssignOrHalt() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailingTestUsingAssignOrHalt (correctness)"} Impl$$_module.__default.FailingTestUsingAssignOrHalt() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var y#0: int;
  var q#0: int where LitInt(0) <= q#0;
  var valueOrError0#0: DatatypeType
     where $Is(valueOrError0#0, Tclass._module.NatOutcome())
       && $IsAlloc(valueOrError0#0, Tclass._module.NatOutcome(), $Heap);
  var ##a#0: int;
  var ##b#0: int;

    // AddMethodImpl: FailingTestUsingAssignOrHalt, Impl$$_module.__default.FailingTestUsingAssignOrHalt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(67,9)
    assume true;
    assume true;
    x#0 := LitInt(5);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(68,9)
    assume true;
    assume true;
    y#0 := LitInt(0);
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(69,9)
    havoc valueOrError0#0 /* where $Is(valueOrError0#0, Tclass._module.NatOutcome())
       && $IsAlloc(valueOrError0#0, Tclass._module.NatOutcome(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(69,19)
    assume true;
    assert {:id "id31"} $Is(x#0, Tclass._System.nat());
    ##a#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
    assert {:id "id32"} $Is(y#0, Tclass._System.nat());
    ##b#0 := y#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._System.nat(), $Heap);
    assume _module.__default.SafeDivide#canCall(x#0, y#0);
    assume _module.__default.SafeDivide#canCall(x#0, y#0);
    valueOrError0#0 := _module.__default.SafeDivide(x#0, y#0);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(69,12)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.NatOutcome(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError0#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError0#0);
    if (_module.NatOutcome.IsFailure(valueOrError0#0))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(69,9)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.NatOutcome(), $Heap);
    assert {:id "id34"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError0#0);
    assume !_module.NatOutcome.IsFailure(valueOrError0#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError0#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError0#0);
    q#0 := _module.NatOutcome.Extract(valueOrError0#0);
}



procedure {:verboseName "PassingTestUsingNoLHSAssignOrHalt (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestUsingNoLHSAssignOrHalt();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestUsingNoLHSAssignOrHalt (call)"} Call$$_module.__default.PassingTestUsingNoLHSAssignOrHalt();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestUsingNoLHSAssignOrHalt (correctness)"} Impl$$_module.__default.PassingTestUsingNoLHSAssignOrHalt() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestUsingNoLHSAssignOrHalt (correctness)"} Impl$$_module.__default.PassingTestUsingNoLHSAssignOrHalt() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var valueOrError0#0: DatatypeType
     where $Is(valueOrError0#0, Tclass._module.VoidOutcome())
       && $IsAlloc(valueOrError0#0, Tclass._module.VoidOutcome(), $Heap);
  var $rhs##0: DatatypeType;
  var p##0: bool;

    // AddMethodImpl: PassingTestUsingNoLHSAssignOrHalt, Impl$$_module.__default.PassingTestUsingNoLHSAssignOrHalt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(73,3)
    havoc valueOrError0#0 /* where $Is(valueOrError0#0, Tclass._module.VoidOutcome())
       && $IsAlloc(valueOrError0#0, Tclass._module.VoidOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(73,23)
    assume true;
    // TrCallStmt: Adding lhs with type VoidOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    p##0 := Lit(true);
    call {:id "id36"} $rhs##0 := Call$$_module.__default.FailUnless(p##0);
    // TrCallStmt: After ProcessCallStmt
    valueOrError0#0 := $rhs##0;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(73,6)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.VoidOutcome(), $Heap);
    assume _module.VoidOutcome.IsFailure#canCall(valueOrError0#0);
    assume _module.VoidOutcome.IsFailure#canCall(valueOrError0#0);
    if (_module.VoidOutcome.IsFailure(valueOrError0#0))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "FailingTestUsingNoLHSAssignOrHalt (well-formedness)"} CheckWellFormed$$_module.__default.FailingTestUsingNoLHSAssignOrHalt();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailingTestUsingNoLHSAssignOrHalt (call)"} Call$$_module.__default.FailingTestUsingNoLHSAssignOrHalt();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailingTestUsingNoLHSAssignOrHalt (correctness)"} Impl$$_module.__default.FailingTestUsingNoLHSAssignOrHalt() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailingTestUsingNoLHSAssignOrHalt (correctness)"} Impl$$_module.__default.FailingTestUsingNoLHSAssignOrHalt() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var valueOrError0#0: DatatypeType
     where $Is(valueOrError0#0, Tclass._module.VoidOutcome())
       && $IsAlloc(valueOrError0#0, Tclass._module.VoidOutcome(), $Heap);
  var $rhs##0: DatatypeType;
  var p##0: bool;

    // AddMethodImpl: FailingTestUsingNoLHSAssignOrHalt, Impl$$_module.__default.FailingTestUsingNoLHSAssignOrHalt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(77,3)
    havoc valueOrError0#0 /* where $Is(valueOrError0#0, Tclass._module.VoidOutcome())
       && $IsAlloc(valueOrError0#0, Tclass._module.VoidOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(77,23)
    assume true;
    // TrCallStmt: Adding lhs with type VoidOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    p##0 := Lit(false);
    call {:id "id38"} $rhs##0 := Call$$_module.__default.FailUnless(p##0);
    // TrCallStmt: After ProcessCallStmt
    valueOrError0#0 := $rhs##0;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(77,6)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.VoidOutcome(), $Heap);
    assume _module.VoidOutcome.IsFailure#canCall(valueOrError0#0);
    assume _module.VoidOutcome.IsFailure#canCall(valueOrError0#0);
    if (_module.VoidOutcome.IsFailure(valueOrError0#0))
    {
        assume true;
        assume false;
    }
}



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
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Even()));

procedure {:verboseName "mockUnsafe (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.mockUnsafe()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Even?() : Ty
uses {
// Tclass._module.Even? Tag
axiom Tag(Tclass._module.Even?()) == Tagclass._module.Even?
   && TagFamily(Tclass._module.Even?()) == tytagFamily$Even;
}

const unique Tagclass._module.Even?: TyTag;

// Box/unbox axiom for Tclass._module.Even?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Even?()) } 
  $IsBox(bx, Tclass._module.Even?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Even?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "mockUnsafe (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.mockUnsafe() returns (e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;


    // AddMethodImpl: mockUnsafe, CheckWellFormed$$_module.__default.mockUnsafe
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e#0;
    assume {:id "id40"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
    assert {:id "id41"} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#0 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    assume _module.Even.Identity#canCall(e#0, LitInt(3));
    assume {:id "id42"} _module.Even.Identity(e#0, LitInt(3)) == LitInt(2);
}



procedure {:verboseName "mockUnsafe (call)"} {:extern} Call$$_module.__default.mockUnsafe()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool
     ==> _module.Even.Identity#canCall(e#0, LitInt(3));
  ensures {:id "id43"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  ensures {:id "id44"} _module.Even.Identity(e#0, LitInt(3)) == LitInt(2);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingWithError (well-formedness)"} CheckWellFormed$$_module.__default.PassingWithError();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingWithError (call)"} Call$$_module.__default.PassingWithError();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingWithError (correctness)"} Impl$$_module.__default.PassingWithError() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingWithError (correctness)"} Impl$$_module.__default.PassingWithError() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var ##a#0: int;
  var ##a#1: int;

    // AddMethodImpl: PassingWithError, Impl$$_module.__default.PassingWithError
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(122,27)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id45"} $rhs##0 := Call$$_module.__default.mockUnsafe();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(123,3)
    assert {:id "id47"} defass#e#0;
    assert {:id "id48"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#0 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    assume _module.Even.Identity#canCall(e#0, LitInt(3));
    assume _module.Even.Identity#canCall(e#0, LitInt(3));
    if (_module.Even.Identity(e#0, LitInt(3)) != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(124,3)
    assert {:id "id49"} defass#e#0;
    assert {:id "id50"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#1 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    assume _module.Even.Identity#canCall(e#0, LitInt(3));
    assume _module.Even.Identity#canCall(e#0, LitInt(3));
    assert {:id "id51"} _module.Even.Identity(e#0, LitInt(3)) != 2;
}



procedure {:verboseName "mockSimple (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.mockSimple()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "mockSimple (call)"} {:extern} Call$$_module.__default.mockSimple()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id53"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestUsingMock (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestUsingMock();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestUsingMock (call)"} Call$$_module.__default.PassingTestUsingMock();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestUsingMock (correctness)"} Impl$$_module.__default.PassingTestUsingMock() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestUsingMock (correctness)"} Impl$$_module.__default.PassingTestUsingMock() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var $rhs#0: int;

    // AddMethodImpl: PassingTestUsingMock, Impl$$_module.__default.PassingTestUsingMock
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(130,27)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id54"} $rhs##0 := Call$$_module.__default.mockSimple();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(131,11)
    assert {:id "id56"} defass#e#0;
    assert {:id "id57"} e#0 != null;
    assume true;
    assert {:id "id58"} $_ModifiesFrame[e#0, _module.Even.value];
    assume true;
    $rhs#0 := LitInt(4);
    $Heap := update($Heap, e#0, _module.Even.value, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(132,3)
    assert {:id "id61"} defass#e#0;
    assert {:id "id62"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    if (!_module.Even.IsValid($Heap, e#0))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "FailingTestUsingMock (well-formedness)"} CheckWellFormed$$_module.__default.FailingTestUsingMock();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailingTestUsingMock (call)"} Call$$_module.__default.FailingTestUsingMock();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailingTestUsingMock (correctness)"} Impl$$_module.__default.FailingTestUsingMock() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailingTestUsingMock (correctness)"} Impl$$_module.__default.FailingTestUsingMock() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var $rhs#0: int;

    // AddMethodImpl: FailingTestUsingMock, Impl$$_module.__default.FailingTestUsingMock
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(136,27)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id63"} $rhs##0 := Call$$_module.__default.mockSimple();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(137,11)
    assert {:id "id65"} defass#e#0;
    assert {:id "id66"} e#0 != null;
    assume true;
    assert {:id "id67"} $_ModifiesFrame[e#0, _module.Even.value];
    assume true;
    $rhs#0 := LitInt(5);
    $Heap := update($Heap, e#0, _module.Even.value, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(138,3)
    assert {:id "id70"} defass#e#0;
    assert {:id "id71"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    if (!_module.Even.IsValid($Heap, e#0))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "PassingTestWithSideEffectingMethod (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestWithSideEffectingMethod();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestWithSideEffectingMethod (call)"} Call$$_module.__default.PassingTestWithSideEffectingMethod();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestWithSideEffectingMethod (correctness)"} Impl$$_module.__default.PassingTestWithSideEffectingMethod() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestWithSideEffectingMethod (correctness)"} Impl$$_module.__default.PassingTestWithSideEffectingMethod() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var $rhs#0: int;

    // AddMethodImpl: PassingTestWithSideEffectingMethod, Impl$$_module.__default.PassingTestWithSideEffectingMethod
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(142,27)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id72"} $rhs##0 := Call$$_module.__default.mockSimple();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(143,11)
    assert {:id "id74"} defass#e#0;
    assert {:id "id75"} e#0 != null;
    assume true;
    assert {:id "id76"} $_ModifiesFrame[e#0, _module.Even.value];
    assume true;
    $rhs#0 := LitInt(3);
    $Heap := update($Heap, e#0, _module.Even.value, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(144,18)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id79"} defass#e#0;
    assume true;
    assert {:id "id80"} e#0 != null;
    assert {:id "id81"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == e#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id82"} Call$$_module.Even.SideEffecting(e#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(145,3)
    assert {:id "id83"} defass#e#0;
    assert {:id "id84"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    if (!_module.Even.IsValid($Heap, e#0))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "MockValidEven (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockValidEven()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MockValidEven (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockValidEven() returns (e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: MockValidEven, CheckWellFormed$$_module.__default.MockValidEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e#0;
    assume {:id "id85"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
    assert {:id "id86"} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    assume {:id "id87"} _module.Even.IsValid($Heap, e#0) == Lit(true);
}



procedure {:verboseName "MockValidEven (call)"} {:extern} Call$$_module.__default.MockValidEven()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id88"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  free ensures _module.Even.IsValid#canCall($Heap, e#0);
  ensures {:id "id89"} _module.Even.IsValid($Heap, e#0) == Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MockInValidEven (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockInValidEven()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MockInValidEven (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockInValidEven() returns (e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: MockInValidEven, CheckWellFormed$$_module.__default.MockInValidEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e#0;
    assume {:id "id90"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
    assert {:id "id91"} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    assume {:id "id92"} _module.Even.IsValid($Heap, e#0) == Lit(false);
}



procedure {:verboseName "MockInValidEven (call)"} {:extern} Call$$_module.__default.MockInValidEven()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id93"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  free ensures _module.Even.IsValid#canCall($Heap, e#0);
  ensures {:id "id94"} _module.Even.IsValid($Heap, e#0) == Lit(false);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestUsingValidMock (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestUsingValidMock();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestUsingValidMock (call)"} Call$$_module.__default.PassingTestUsingValidMock();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestUsingValidMock (correctness)"} Impl$$_module.__default.PassingTestUsingValidMock() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestUsingValidMock (correctness)"} Impl$$_module.__default.PassingTestUsingValidMock() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;

    // AddMethodImpl: PassingTestUsingValidMock, Impl$$_module.__default.PassingTestUsingValidMock
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(156,30)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id95"} $rhs##0 := Call$$_module.__default.MockValidEven();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(157,3)
    assert {:id "id97"} defass#e#0;
    assert {:id "id98"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    if (!_module.Even.IsValid($Heap, e#0))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "PassingTestUsingInValidMock (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestUsingInValidMock();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestUsingInValidMock (call)"} Call$$_module.__default.PassingTestUsingInValidMock();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestUsingInValidMock (correctness)"} Impl$$_module.__default.PassingTestUsingInValidMock() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestUsingInValidMock (correctness)"} Impl$$_module.__default.PassingTestUsingInValidMock() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;

    // AddMethodImpl: PassingTestUsingInValidMock, Impl$$_module.__default.PassingTestUsingInValidMock
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(161,32)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id99"} $rhs##0 := Call$$_module.__default.MockInValidEven();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(162,3)
    assert {:id "id101"} defass#e#0;
    assert {:id "id102"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    assume _module.Even.IsValid#canCall($Heap, e#0);
    if (_module.Even.IsValid($Heap, e#0))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "MockSum (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockSum()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MockSum (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockSum() returns (e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##a#0: int;
  var ##b#0: int;


    // AddMethodImpl: MockSum, CheckWellFormed$$_module.__default.MockSum
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e#0;
    assume {:id "id103"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
    assert {:id "id104"} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(2), LitInt(2));
    assume {:id "id105"} _module.Even.Sum(e#0, LitInt(2), LitInt(2)) == LitInt(3);
}



procedure {:verboseName "MockSum (call)"} {:extern} Call$$_module.__default.MockSum()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id106"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  free ensures _module.Even.Sum#canCall(e#0, LitInt(2), LitInt(2));
  ensures {:id "id107"} _module.Even.Sum(e#0, LitInt(2), LitInt(2)) == LitInt(3);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestMockSum (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestMockSum();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestMockSum (call)"} Call$$_module.__default.PassingTestMockSum();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestMockSum (correctness)"} Impl$$_module.__default.PassingTestMockSum() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestMockSum (correctness)"} Impl$$_module.__default.PassingTestMockSum() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var ##a#0: int;
  var ##b#0: int;

    // AddMethodImpl: PassingTestMockSum, Impl$$_module.__default.PassingTestMockSum
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(170,24)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id108"} $rhs##0 := Call$$_module.__default.MockSum();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(171,3)
    assert {:id "id110"} defass#e#0;
    assert {:id "id111"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(2), LitInt(2));
    assume _module.Even.Sum#canCall(e#0, LitInt(2), LitInt(2));
    if (_module.Even.Sum(e#0, LitInt(2), LitInt(2)) != LitInt(3))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "MockSumForall (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockSumForall()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MockSumForall (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockSumForall() returns (e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var ##a#0: int;
  var ##b#0: int;


    // AddMethodImpl: MockSumForall, CheckWellFormed$$_module.__default.MockSumForall
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e#0;
    assume {:id "id112"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
    havoc a#0;
    havoc b#0;
    assume true;
    assert {:id "id113"} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, a#0, b#0);
    assume {:id "id114"} _module.Even.Sum(e#0, a#0, b#0) == LitInt(3);
    assume {:id "id115"} (forall a#1: int, b#1: int :: 
      { _module.Even.Sum(e#0, a#1, b#1) } 
      _module.Even.Sum(e#0, a#1, b#1) == LitInt(3));
}



procedure {:verboseName "MockSumForall (call)"} {:extern} Call$$_module.__default.MockSumForall()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id116"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  free ensures (forall a#1: int, b#1: int :: 
    { _module.Even.Sum(e#0, a#1, b#1) } 
    _module.Even.Sum#canCall(e#0, a#1, b#1));
  ensures {:id "id117"} (forall a#1: int, b#1: int :: 
    { _module.Even.Sum(e#0, a#1, b#1) } 
    _module.Even.Sum(e#0, a#1, b#1) == LitInt(3));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestMockForall (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestMockForall();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestMockForall (call)"} Call$$_module.__default.PassingTestMockForall();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestMockForall (correctness)"} Impl$$_module.__default.PassingTestMockForall() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestMockForall (correctness)"} Impl$$_module.__default.PassingTestMockForall() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var ##a#0: int;
  var ##b#0: int;
  var ##a#1: int;
  var ##b#1: int;

    // AddMethodImpl: PassingTestMockForall, Impl$$_module.__default.PassingTestMockForall
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(179,30)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id118"} $rhs##0 := Call$$_module.__default.MockSumForall();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(180,3)
    assert {:id "id120"} defass#e#0;
    assert {:id "id121"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(2), LitInt(2));
    assume _module.Even.Sum#canCall(e#0, LitInt(2), LitInt(2));
    if (_module.Even.Sum(e#0, LitInt(2), LitInt(2)) != LitInt(3))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(181,3)
    assert {:id "id122"} defass#e#0;
    assert {:id "id123"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#1 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    ##b#1 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(3), LitInt(2));
    assume _module.Even.Sum#canCall(e#0, LitInt(3), LitInt(2));
    if (_module.Even.Sum(e#0, LitInt(3), LitInt(2)) != LitInt(3))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "MockSumAsMultiplication (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockSumAsMultiplication()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MockSumAsMultiplication (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockSumAsMultiplication() returns (e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var ##a#0: int;
  var ##b#0: int;


    // AddMethodImpl: MockSumAsMultiplication, CheckWellFormed$$_module.__default.MockSumAsMultiplication
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e#0;
    assume {:id "id124"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
    havoc a#0;
    assume true;
    assert {:id "id125"} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#0 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(3), a#0);
    assume {:id "id126"} _module.Even.Sum(e#0, LitInt(3), a#0) == Mul(a#0, LitInt(3));
    assume {:id "id127"} (forall a#1: int :: 
      { _module.Even.Sum(e#0, 3, a#1) } 
      _module.Even.Sum(e#0, LitInt(3), a#1) == Mul(a#1, LitInt(3)));
}



procedure {:verboseName "MockSumAsMultiplication (call)"} {:extern} Call$$_module.__default.MockSumAsMultiplication()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id128"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  free ensures (forall a#1: int :: 
    { _module.Even.Sum(e#0, 3, a#1) } 
    _module.Even.Sum#canCall(e#0, LitInt(3), a#1));
  ensures {:id "id129"} (forall a#1: int :: 
    { _module.Even.Sum(e#0, 3, a#1) } 
    _module.Even.Sum(e#0, LitInt(3), a#1) == Mul(a#1, LitInt(3)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestMockSumAsMultiplication (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestMockSumAsMultiplication();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestMockSumAsMultiplication (call)"} Call$$_module.__default.PassingTestMockSumAsMultiplication();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestMockSumAsMultiplication (correctness)"} Impl$$_module.__default.PassingTestMockSumAsMultiplication() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestMockSumAsMultiplication (correctness)"} Impl$$_module.__default.PassingTestMockSumAsMultiplication() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var ##a#0: int;
  var ##b#0: int;
  var ##a#1: int;
  var ##b#1: int;

    // AddMethodImpl: PassingTestMockSumAsMultiplication, Impl$$_module.__default.PassingTestMockSumAsMultiplication
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(189,40)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id130"} $rhs##0 := Call$$_module.__default.MockSumAsMultiplication();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(190,3)
    assert {:id "id132"} defass#e#0;
    assert {:id "id133"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#0 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(3), LitInt(2));
    assume _module.Even.Sum#canCall(e#0, LitInt(3), LitInt(2));
    if (_module.Even.Sum(e#0, LitInt(3), LitInt(2)) != LitInt(6))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(191,3)
    assert {:id "id134"} defass#e#0;
    assert {:id "id135"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#1 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    ##b#1 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(3), LitInt(0));
    assume _module.Even.Sum#canCall(e#0, LitInt(3), LitInt(0));
    if (_module.Even.Sum(e#0, LitInt(3), LitInt(0)) != LitInt(0))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "MockSumWithArgumentMatcher (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockSumWithArgumentMatcher()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MockSumWithArgumentMatcher (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockSumWithArgumentMatcher() returns (e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var ##a#0: int;
  var ##b#0: int;
  var a#2: int;
  var b#2: int;
  var ##a#1: int;
  var ##b#1: int;


    // AddMethodImpl: MockSumWithArgumentMatcher, CheckWellFormed$$_module.__default.MockSumWithArgumentMatcher
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e#0;
    assume {:id "id136"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
    havoc a#0;
    havoc b#0;
    assume true;
    if (*)
    {
        assume {:id "id137"} b#0 < a#0;
        assert {:id "id138"} e#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
        ##a#0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0, TInt, $Heap);
        ##b#0 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0, TInt, $Heap);
        assume _module.Even.Sum#canCall(e#0, a#0, b#0);
        assume {:id "id139"} _module.Even.Sum(e#0, a#0, b#0) == Mul(a#0, b#0);
    }
    else
    {
        assume {:id "id140"} b#0 < a#0 ==> _module.Even.Sum(e#0, a#0, b#0) == Mul(a#0, b#0);
    }

    assume {:id "id141"} (forall a#1: int, b#1: int :: 
      { _module.Even.Sum(e#0, a#1, b#1) } 
      b#1 < a#1 ==> _module.Even.Sum(e#0, a#1, b#1) == Mul(a#1, b#1));
    havoc a#2;
    havoc b#2;
    assume true;
    if (*)
    {
        assume {:id "id142"} b#2 >= a#2;
        assert {:id "id143"} e#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
        ##a#1 := a#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#1, TInt, $Heap);
        ##b#1 := b#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#1, TInt, $Heap);
        assume _module.Even.Sum#canCall(e#0, a#2, b#2);
        assume {:id "id144"} _module.Even.Sum(e#0, a#2, b#2) == Mul(0 - a#2, b#2);
    }
    else
    {
        assume {:id "id145"} b#2 >= a#2 ==> _module.Even.Sum(e#0, a#2, b#2) == Mul(0 - a#2, b#2);
    }

    assume {:id "id146"} (forall a#3: int, b#3: int :: 
      { _module.Even.Sum(e#0, a#3, b#3) } 
      b#3 >= a#3 ==> _module.Even.Sum(e#0, a#3, b#3) == Mul(0 - a#3, b#3));
}



procedure {:verboseName "MockSumWithArgumentMatcher (call)"} {:extern} Call$$_module.__default.MockSumWithArgumentMatcher()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id147"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  free ensures (forall a#1: int, b#1: int :: 
    { _module.Even.Sum(e#0, a#1, b#1) } 
    b#1 < a#1 ==> _module.Even.Sum#canCall(e#0, a#1, b#1));
  ensures {:id "id148"} (forall a#1: int, b#1: int :: 
    { _module.Even.Sum(e#0, a#1, b#1) } 
    b#1 < a#1 ==> _module.Even.Sum(e#0, a#1, b#1) == Mul(a#1, b#1));
  free ensures (forall a#3: int, b#3: int :: 
    { _module.Even.Sum(e#0, a#3, b#3) } 
    b#3 >= a#3 ==> _module.Even.Sum#canCall(e#0, a#3, b#3));
  ensures {:id "id149"} (forall a#3: int, b#3: int :: 
    { _module.Even.Sum(e#0, a#3, b#3) } 
    b#3 >= a#3 ==> _module.Even.Sum(e#0, a#3, b#3) == Mul(0 - a#3, b#3));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestMockSumWithArgumentMatcher (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestMockSumWithArgumentMatcher();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestMockSumWithArgumentMatcher (call)"} Call$$_module.__default.PassingTestMockSumWithArgumentMatcher();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestMockSumWithArgumentMatcher (correctness)"} Impl$$_module.__default.PassingTestMockSumWithArgumentMatcher() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestMockSumWithArgumentMatcher (correctness)"} Impl$$_module.__default.PassingTestMockSumWithArgumentMatcher() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var ##a#0: int;
  var ##b#0: int;
  var ##a#1: int;
  var ##b#1: int;
  var ##a#2: int;
  var ##b#2: int;
  var ##a#3: int;
  var ##b#3: int;

    // AddMethodImpl: PassingTestMockSumWithArgumentMatcher, Impl$$_module.__default.PassingTestMockSumWithArgumentMatcher
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(200,43)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id150"} $rhs##0 := Call$$_module.__default.MockSumWithArgumentMatcher();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(201,3)
    assert {:id "id152"} defass#e#0;
    assert {:id "id153"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, TInt, $Heap);
    ##b#0 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(2), LitInt(2));
    assume _module.Even.Sum#canCall(e#0, LitInt(2), LitInt(2));
    if (_module.Even.Sum(e#0, LitInt(2), LitInt(2)) != LitInt(-4))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(202,3)
    assert {:id "id154"} defass#e#0;
    assert {:id "id155"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#1 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, TInt, $Heap);
    ##b#1 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(2), LitInt(3));
    assume _module.Even.Sum#canCall(e#0, LitInt(2), LitInt(3));
    if (_module.Even.Sum(e#0, LitInt(2), LitInt(3)) != LitInt(-6))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(203,3)
    assert {:id "id156"} defass#e#0;
    assert {:id "id157"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#2 := LitInt(4);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, TInt, $Heap);
    ##b#2 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(4), LitInt(0));
    assume _module.Even.Sum#canCall(e#0, LitInt(4), LitInt(0));
    if (_module.Even.Sum(e#0, LitInt(4), LitInt(0)) != LitInt(0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(204,3)
    assert {:id "id158"} defass#e#0;
    assert {:id "id159"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    ##a#3 := LitInt(5);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, TInt, $Heap);
    ##b#3 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TInt, $Heap);
    assume _module.Even.Sum#canCall(e#0, LitInt(5), LitInt(1));
    assume _module.Even.Sum#canCall(e#0, LitInt(5), LitInt(1));
    if (_module.Even.Sum(e#0, LitInt(5), LitInt(1)) != LitInt(5))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "MockField (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockField()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MockField (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockField() returns (e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: MockField, CheckWellFormed$$_module.__default.MockField
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e#0;
    assume {:id "id160"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
    assert {:id "id161"} e#0 != null;
    assume {:id "id162"} $Unbox(read($Heap, e#0, _module.Even.value)): int == LitInt(7);
}



procedure {:verboseName "MockField (call)"} {:extern} Call$$_module.__default.MockField()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id163"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  free ensures true;
  ensures {:id "id164"} $Unbox(read($Heap, e#0, _module.Even.value)): int == LitInt(7);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestMockField (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestMockField();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestMockField (call)"} Call$$_module.__default.PassingTestMockField();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestMockField (correctness)"} Impl$$_module.__default.PassingTestMockField() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestMockField (correctness)"} Impl$$_module.__default.PassingTestMockField() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var $rhs#0: int;

    // AddMethodImpl: PassingTestMockField, Impl$$_module.__default.PassingTestMockField
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(212,26)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id165"} $rhs##0 := Call$$_module.__default.MockField();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(213,11)
    assert {:id "id167"} defass#e#0;
    assert {:id "id168"} e#0 != null;
    assume true;
    assert {:id "id169"} $_ModifiesFrame[e#0, _module.Even.value];
    assume true;
    $rhs#0 := LitInt(5);
    $Heap := update($Heap, e#0, _module.Even.value, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(214,3)
    assert {:id "id172"} defass#e#0;
    assert {:id "id173"} {:subsumption 0} e#0 != null;
    assume true;
    if ($Unbox(read($Heap, e#0, _module.Even.value)): int != LitInt(7))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(215,3)
    assert {:id "id174"} defass#e#0;
    assert {:id "id175"} {:subsumption 0} e#0 != null;
    assume true;
    if ($Unbox(read($Heap, e#0, _module.Even.value)): int == 5)
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "ParametrizedMock (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.ParametrizedMock(a#0: int)
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ParametrizedMock (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.ParametrizedMock(a#0: int) returns (e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: ParametrizedMock, CheckWellFormed$$_module.__default.ParametrizedMock
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e#0;
    assume {:id "id176"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
    assert {:id "id177"} e#0 != null;
    assume {:id "id178"} $Unbox(read($Heap, e#0, _module.Even.value)): int == a#0;
}



procedure {:verboseName "ParametrizedMock (call)"} {:extern} Call$$_module.__default.ParametrizedMock(a#0: int)
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id179"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  free ensures true;
  ensures {:id "id180"} $Unbox(read($Heap, e#0, _module.Even.value)): int == a#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestParameterizedMock (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestParameterizedMock();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestParameterizedMock (call)"} Call$$_module.__default.PassingTestParameterizedMock();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestParameterizedMock (correctness)"} Impl$$_module.__default.PassingTestParameterizedMock() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestParameterizedMock (correctness)"} Impl$$_module.__default.PassingTestParameterizedMock() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var a##0: int;

    // AddMethodImpl: PassingTestParameterizedMock, Impl$$_module.__default.PassingTestParameterizedMock
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(223,33)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := LitInt(24);
    call {:id "id181"} $rhs##0 := Call$$_module.__default.ParametrizedMock(a##0);
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(224,3)
    assert {:id "id183"} defass#e#0;
    assert {:id "id184"} {:subsumption 0} e#0 != null;
    assume true;
    if ($Unbox(read($Heap, e#0, _module.Even.value)): int != LitInt(24))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(225,3)
    assert {:id "id185"} defass#e#0;
    assert {:id "id186"} {:subsumption 0} e#0 != null;
    assume true;
    if ($Unbox(read($Heap, e#0, _module.Even.value)): int == 7)
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "SelfReferentialMock (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.SelfReferentialMock()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SelfReferentialMock (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.SelfReferentialMock() returns (e#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: SelfReferentialMock, CheckWellFormed$$_module.__default.SelfReferentialMock
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e#0;
    assume {:id "id187"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
    assert {:id "id188"} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.Next#canCall(e#0);
    assume {:id "id189"} _module.Even.Next(e#0) == e#0;
}



procedure {:verboseName "SelfReferentialMock (call)"} {:extern} Call$$_module.__default.SelfReferentialMock()
   returns (e#0: ref
       where $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id190"} e#0 != null && !$Unbox(read(old($Heap), e#0, alloc)): bool;
  free ensures _module.Even.Next#canCall(e#0);
  ensures {:id "id191"} _module.Even.Next(e#0) == e#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestSelfReferentialMock (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestSelfReferentialMock();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestSelfReferentialMock (call)"} Call$$_module.__default.PassingTestSelfReferentialMock();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestSelfReferentialMock (correctness)"} Impl$$_module.__default.PassingTestSelfReferentialMock() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestSelfReferentialMock (correctness)"} Impl$$_module.__default.PassingTestSelfReferentialMock() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.Even()) && $IsAlloc(e#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var newtype$check#0: ref;

    // AddMethodImpl: PassingTestSelfReferentialMock, Impl$$_module.__default.PassingTestSelfReferentialMock
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(233,35)
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id192"} $rhs##0 := Call$$_module.__default.SelfReferentialMock();
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##0;
    defass#e#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(234,3)
    assert {:id "id194"} defass#e#0;
    assert {:id "id195"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.Next#canCall(e#0);
    assert {:id "id196"} defass#e#0;
    assume _module.Even.Next#canCall(e#0);
    if (_module.Even.Next(e#0) != e#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(235,3)
    assert {:id "id197"} defass#e#0;
    assert {:id "id198"} {:subsumption 0} e#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.Next#canCall(e#0);
    newtype$check#0 := null;
    assume _module.Even.Next#canCall(e#0);
    if (_module.Even.Next(e#0) == null)
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "CrossReferentialMock (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.CrossReferentialMock()
   returns (e1#0: ref
       where $Is(e1#0, Tclass._module.Even()) && $IsAlloc(e1#0, Tclass._module.Even(), $Heap), 
    e2#0: ref
       where $Is(e2#0, Tclass._module.Even()) && $IsAlloc(e2#0, Tclass._module.Even(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CrossReferentialMock (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.CrossReferentialMock() returns (e1#0: ref, e2#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: CrossReferentialMock, CheckWellFormed$$_module.__default.CrossReferentialMock
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc e1#0, e2#0;
    assume {:id "id199"} e1#0 != null && !$Unbox(read(old($Heap), e1#0, alloc)): bool;
    assume {:id "id200"} e2#0 != null && !$Unbox(read(old($Heap), e2#0, alloc)): bool;
    assert {:id "id201"} e1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e1#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.Next#canCall(e1#0);
    assume {:id "id202"} _module.Even.Next(e1#0) == e2#0;
    assert {:id "id203"} e2#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e2#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.Next#canCall(e2#0);
    assume {:id "id204"} _module.Even.Next(e2#0) == e1#0;
}



procedure {:verboseName "CrossReferentialMock (call)"} {:extern} Call$$_module.__default.CrossReferentialMock()
   returns (e1#0: ref
       where $Is(e1#0, Tclass._module.Even()) && $IsAlloc(e1#0, Tclass._module.Even(), $Heap), 
    e2#0: ref
       where $Is(e2#0, Tclass._module.Even()) && $IsAlloc(e2#0, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id205"} e1#0 != null && !$Unbox(read(old($Heap), e1#0, alloc)): bool;
  ensures {:id "id206"} e2#0 != null && !$Unbox(read(old($Heap), e2#0, alloc)): bool;
  free ensures _module.Even.Next#canCall(e1#0);
  ensures {:id "id207"} _module.Even.Next(e1#0) == e2#0;
  free ensures _module.Even.Next#canCall(e2#0);
  ensures {:id "id208"} _module.Even.Next(e2#0) == e1#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestCrossReferentialMock (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestCrossReferentialMock();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestCrossReferentialMock (call)"} Call$$_module.__default.PassingTestCrossReferentialMock();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestCrossReferentialMock (correctness)"} Impl$$_module.__default.PassingTestCrossReferentialMock() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestCrossReferentialMock (correctness)"} Impl$$_module.__default.PassingTestCrossReferentialMock() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e1#0: bool;
  var e1#0: ref
     where defass#e1#0
       ==> $Is(e1#0, Tclass._module.Even()) && $IsAlloc(e1#0, Tclass._module.Even(), $Heap);
  var defass#e2#0: bool;
  var e2#0: ref
     where defass#e2#0
       ==> $Is(e2#0, Tclass._module.Even()) && $IsAlloc(e2#0, Tclass._module.Even(), $Heap);
  var $rhs##0: ref;
  var $rhs##1: ref;

    // AddMethodImpl: PassingTestCrossReferentialMock, Impl$$_module.__default.PassingTestCrossReferentialMock
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(244,47)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id209"} $rhs##0, $rhs##1 := Call$$_module.__default.CrossReferentialMock();
    // TrCallStmt: After ProcessCallStmt
    e1#0 := $rhs##0;
    defass#e1#0 := true;
    e2#0 := $rhs##1;
    defass#e2#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(245,3)
    assert {:id "id212"} defass#e1#0;
    assert {:id "id213"} {:subsumption 0} e1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e1#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.Next#canCall(e1#0);
    assert {:id "id214"} defass#e2#0;
    assume _module.Even.Next#canCall(e1#0);
    if (_module.Even.Next(e1#0) != e2#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(246,3)
    assert {:id "id215"} defass#e1#0;
    assert {:id "id216"} {:subsumption 0} e1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e1#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.Next#canCall(e1#0);
    assert {:id "id217"} defass#e1#0;
    assume _module.Even.Next#canCall(e1#0);
    if (_module.Even.Next(e1#0) == e1#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(247,3)
    assert {:id "id218"} defass#e2#0;
    assert {:id "id219"} {:subsumption 0} e2#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e2#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.Next#canCall(e2#0);
    assert {:id "id220"} defass#e1#0;
    assume _module.Even.Next#canCall(e2#0);
    if (_module.Even.Next(e2#0) != e1#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(248,3)
    assert {:id "id221"} defass#e2#0;
    assert {:id "id222"} {:subsumption 0} e2#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(e2#0), Tclass._module.Even?(), $Heap);
    assume _module.Even.Next#canCall(e2#0);
    assert {:id "id223"} defass#e2#0;
    assume _module.Even.Next#canCall(e2#0);
    if (_module.Even.Next(e2#0) == e2#0)
    {
        assume true;
        assume false;
    }
}



function Tclass._module.StringMap() : Ty
uses {
// Tclass._module.StringMap Tag
axiom Tag(Tclass._module.StringMap()) == Tagclass._module.StringMap
   && TagFamily(Tclass._module.StringMap()) == tytagFamily$StringMap;
}

const unique Tagclass._module.StringMap: TyTag;

// Box/unbox axiom for Tclass._module.StringMap
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.StringMap()) } 
  $IsBox(bx, Tclass._module.StringMap())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.StringMap()));

procedure {:verboseName "MockStringMap (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockStringMap(k#0: Seq where $Is(k#0, TSeq(TChar)) && $IsAlloc(k#0, TSeq(TChar), $Heap), 
    v#0: Seq where $Is(v#0, TSeq(TChar)) && $IsAlloc(v#0, TSeq(TChar), $Heap))
   returns (m#0: ref
       where $Is(m#0, Tclass._module.StringMap())
         && $IsAlloc(m#0, Tclass._module.StringMap(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.StringMap?() : Ty
uses {
// Tclass._module.StringMap? Tag
axiom Tag(Tclass._module.StringMap?()) == Tagclass._module.StringMap?
   && TagFamily(Tclass._module.StringMap?()) == tytagFamily$StringMap;
}

const unique Tagclass._module.StringMap?: TyTag;

// Box/unbox axiom for Tclass._module.StringMap?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.StringMap?()) } 
  $IsBox(bx, Tclass._module.StringMap?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.StringMap?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MockStringMap (well-formedness)"} {:extern} CheckWellFormed$$_module.__default.MockStringMap(k#0: Seq, v#0: Seq) returns (m#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##key#0: Seq;
  var ##key#1: Seq;


    // AddMethodImpl: MockStringMap, CheckWellFormed$$_module.__default.MockStringMap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc m#0;
    assert {:id "id224"} m#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(m#0), Tclass._module.StringMap?(), $Heap);
    ##key#0 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##key#0, TSeq(TChar), $Heap);
    assume _module.StringMap.Contains#canCall($Heap, m#0, k#0);
    assume {:id "id225"} _module.StringMap.Contains($Heap, m#0, k#0) == Lit(true);
    assert {:id "id226"} m#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(m#0), Tclass._module.StringMap?(), $Heap);
    ##key#1 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##key#1, TSeq(TChar), $Heap);
    assert {:id "id227"} {:subsumption 0} _module.StringMap.Contains#canCall($Heap, m#0, ##key#1)
       ==> _module.StringMap.Contains($Heap, m#0, ##key#1)
         || Set#IsMember(Map#Domain($Unbox(read($Heap, m#0, _module.StringMap.m)): Map), $Box(##key#1));
    assume _module.StringMap.Contains($Heap, m#0, ##key#1);
    assume _module.StringMap.Get#canCall($Heap, m#0, k#0);
    assume {:id "id228"} Seq#Equal(_module.StringMap.Get($Heap, m#0, k#0), v#0);
    assume {:id "id229"} m#0 != null && !$Unbox(read(old($Heap), m#0, alloc)): bool;
}



procedure {:verboseName "MockStringMap (call)"} {:extern} Call$$_module.__default.MockStringMap(k#0: Seq where $Is(k#0, TSeq(TChar)) && $IsAlloc(k#0, TSeq(TChar), $Heap), 
    v#0: Seq where $Is(v#0, TSeq(TChar)) && $IsAlloc(v#0, TSeq(TChar), $Heap))
   returns (m#0: ref
       where $Is(m#0, Tclass._module.StringMap())
         && $IsAlloc(m#0, Tclass._module.StringMap(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.StringMap.Contains#canCall($Heap, m#0, k#0)
     && (_module.StringMap.Contains($Heap, m#0, k#0) == Lit(true)
       ==> _module.StringMap.Get#canCall($Heap, m#0, k#0));
  ensures {:id "id230"} _module.StringMap.Contains($Heap, m#0, k#0) == Lit(true);
  ensures {:id "id231"} Seq#Equal(_module.StringMap.Get($Heap, m#0, k#0), v#0);
  free ensures true;
  ensures {:id "id232"} m#0 != null && !$Unbox(read(old($Heap), m#0, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestGetOrDefault (well-formedness)"} CheckWellFormed$$_module.__default.PassingTestGetOrDefault();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PassingTestGetOrDefault (call)"} Call$$_module.__default.PassingTestGetOrDefault();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PassingTestGetOrDefault (correctness)"} Impl$$_module.__default.PassingTestGetOrDefault() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PassingTestGetOrDefault (correctness)"} Impl$$_module.__default.PassingTestGetOrDefault() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#stringMap#0: bool;
  var stringMap#0: ref
     where defass#stringMap#0
       ==> $Is(stringMap#0, Tclass._module.StringMap())
         && $IsAlloc(stringMap#0, Tclass._module.StringMap(), $Heap);
  var $rhs##0: ref;
  var k##0: Seq;
  var v##0: Seq;
  var ##m#0: ref;
  var ##key#0: Seq;
  var ##default#0: Seq;
  var ##m#1: ref;
  var ##key#1: Seq;
  var ##default#1: Seq;

    // AddMethodImpl: PassingTestGetOrDefault, Impl$$_module.__default.PassingTestGetOrDefault
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(277,33)
    assume true;
    // TrCallStmt: Adding lhs with type StringMap
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##0 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    v##0 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))));
    call {:id "id233"} $rhs##0 := Call$$_module.__default.MockStringMap(k##0, v##0);
    // TrCallStmt: After ProcessCallStmt
    stringMap#0 := $rhs##0;
    defass#stringMap#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(278,3)
    assert {:id "id235"} defass#stringMap#0;
    ##m#0 := stringMap#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, Tclass._module.StringMap(), $Heap);
    ##key#0 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##key#0, TSeq(TChar), $Heap);
    ##default#0 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(99))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##default#0, TSeq(TChar), $Heap);
    assume _module.StringMap.GetOrDefault#canCall($Heap, 
      stringMap#0, 
      Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97)))), 
      Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(99)))));
    assume _module.StringMap.GetOrDefault#canCall($Heap, 
      stringMap#0, 
      Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97)))), 
      Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(99)))));
    assert {:id "id236"} Seq#Equal(_module.StringMap.GetOrDefault($Heap, 
        stringMap#0, 
        Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97)))), 
        Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(99))))), 
      Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(279,3)
    assert {:id "id237"} defass#stringMap#0;
    ##m#1 := stringMap#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, Tclass._module.StringMap(), $Heap);
    ##key#1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##key#1, TSeq(TChar), $Heap);
    ##default#1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(99))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##default#1, TSeq(TChar), $Heap);
    assume _module.StringMap.GetOrDefault#canCall($Heap, 
      stringMap#0, 
      Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97)))), 
      Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(99)))));
    assume _module.StringMap.GetOrDefault#canCall($Heap, 
      stringMap#0, 
      Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97)))), 
      Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(99)))));
    if (!Seq#Equal(_module.StringMap.GetOrDefault($Heap, 
        stringMap#0, 
        Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97)))), 
        Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(99))))), 
      Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98)))))
    {
        assume true;
        assume false;
    }
}



const unique class._module.Even?: ClassName;

// $Is axiom for class Even
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Even?()) } 
  $Is($o, Tclass._module.Even?())
     <==> $o == null || dtype($o) == Tclass._module.Even?());

// $IsAlloc axiom for class Even
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Even?(), $h) } 
  $IsAlloc($o, Tclass._module.Even?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Even.value: Field
uses {
axiom FDim(_module.Even.value) == 0
   && FieldOfDecl(class._module.Even?, field$value) == _module.Even.value
   && !$IsGhostField(_module.Even.value);
}

// Even.value: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Even.value)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Even?()
     ==> $Is($Unbox(read($h, $o, _module.Even.value)): int, TInt));

// Even.value: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Even.value)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Even?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Even.value)): int, TInt, $h));

// function declaration for _module.Even.IsValid
function _module.Even.IsValid($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Even.IsValid (revealed)
axiom {:id "id238"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Even.IsValid($Heap, this), $IsGoodHeap($Heap) } 
    _module.Even.IsValid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Even())
           && $IsAlloc(this, Tclass._module.Even(), $Heap))
       ==> _module.Even.IsValid($Heap, this)
         == 
        (Mod($Unbox(read($Heap, this, _module.Even.value)): int, LitInt(2))
         == LitInt(0)));
}

function _module.Even.IsValid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Even.IsValid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Even.IsValid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Even())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Even.IsValid($h0, this) == _module.Even.IsValid($h1, this));

function _module.Even.IsValid#requires(Heap, ref) : bool;

// #requires axiom for _module.Even.IsValid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Even.IsValid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Even())
       && $IsAlloc(this, Tclass._module.Even(), $Heap)
     ==> _module.Even.IsValid#requires($Heap, this) == true);

procedure {:verboseName "Even.IsValid (well-formedness)"} CheckWellformed$$_module.Even.IsValid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Even())
         && $IsAlloc(this, Tclass._module.Even(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Even.IsValid (well-formedness)"} CheckWellformed$$_module.Even.IsValid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

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
        b$reqreads#0 := $_ReadsFrame[this, _module.Even.value];
        assert {:id "id239"} LitInt(2) != 0;
        assume {:id "id240"} _module.Even.IsValid($Heap, this)
           == 
          (Mod($Unbox(read($Heap, this, _module.Even.value)): int, LitInt(2))
           == LitInt(0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Even.IsValid($Heap, this), TBool);
        assert {:id "id241"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "Even._ctor (well-formedness)"} CheckWellFormed$$_module.Even.__ctor(value#0: int) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Even._ctor (well-formedness)"} CheckWellFormed$$_module.Even.__ctor(value#0: int) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: _ctor, CheckWellFormed$$_module.Even.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id242"} LitInt(2) != 0;
    assume {:id "id243"} Mod(value#0, LitInt(2)) == LitInt(0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.Even())
       && $IsAlloc(this, Tclass._module.Even(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Even?(), $Heap);
    assume _module.Even.IsValid#canCall($Heap, this);
    assume {:id "id244"} _module.Even.IsValid($Heap, this);
}



procedure {:verboseName "Even._ctor (call)"} Call$$_module.Even.__ctor(value#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Even())
         && $IsAlloc(this, Tclass._module.Even(), $Heap));
  // user-defined preconditions
  requires {:id "id245"} Mod(value#0, LitInt(2)) == LitInt(0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Even.IsValid#canCall($Heap, this);
  free ensures {:id "id246"} _module.Even.IsValid#canCall($Heap, this)
     && 
    _module.Even.IsValid($Heap, this)
     && Mod($Unbox(read($Heap, this, _module.Even.value)): int, LitInt(2)) == LitInt(0);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Even._ctor (correctness)"} Impl$$_module.Even.__ctor(value#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id247"} Mod(value#0, LitInt(2)) == LitInt(0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Even.IsValid#canCall($Heap, this);
  ensures {:id "id248"} _module.Even.IsValid#canCall($Heap, this)
     ==> _module.Even.IsValid($Heap, this)
       || Mod($Unbox(read($Heap, this, _module.Even.value)): int, LitInt(2)) == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Even._ctor (correctness)"} Impl$$_module.Even.__ctor(value#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.value: int;

    // AddMethodImpl: _ctor, Impl$$_module.Even.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(93,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(94,16)
    assume true;
    assume true;
    this.value := value#0;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(93,3)
    assume this != null && $Is(this, Tclass._module.Even?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Even.value)): int == this.value;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(93,3)
}



// function declaration for _module.Even.Next
function _module.Even.Next(this: ref) : ref
uses {
// consequence axiom for _module.Even.Next
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.Even.Next(this) } 
    _module.Even.Next#canCall(this)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Even()))
       ==> $Is(_module.Even.Next(this), Tclass._module.Even?()));
// alloc consequence axiom for _module.Even.Next
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { $IsAlloc(_module.Even.Next(this), Tclass._module.Even?(), $Heap) } 
    (_module.Even.Next#canCall(this)
           || (0 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.Even(), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Even.Next(this), Tclass._module.Even?(), $Heap));
// definition axiom for _module.Even.Next (revealed)
axiom {:id "id250"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.Even.Next(this) } 
    _module.Even.Next#canCall(this)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Even()))
       ==> _module.Even.Next(this) == null);
// definition axiom for _module.Even.Next for all literals (revealed)
axiom {:id "id251"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    {:weight 3} { _module.Even.Next(Lit(this)) } 
    _module.Even.Next#canCall(Lit(this))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Even()))
       ==> _module.Even.Next(Lit(this)) == null);
}

function _module.Even.Next#canCall(this: ref) : bool;

function _module.Even.Next#requires(ref) : bool;

// #requires axiom for _module.Even.Next
axiom (forall this: ref :: 
  { _module.Even.Next#requires(this) } 
  this != null && $Is(this, Tclass._module.Even())
     ==> _module.Even.Next#requires(this) == true);

procedure {:verboseName "Even.Next (well-formedness)"} CheckWellformed$$_module.Even.Next(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Even())
         && $IsAlloc(this, Tclass._module.Even(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Even.Sum
function _module.Even.Sum(this: ref, a#0: int, b#0: int) : int
uses {
// definition axiom for _module.Even.Sum (revealed)
axiom {:id "id253"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int, b#0: int :: 
    { _module.Even.Sum(this, a#0, b#0) } 
    _module.Even.Sum#canCall(this, a#0, b#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Even()))
       ==> _module.Even.Sum(this, a#0, b#0) == a#0 + b#0);
// definition axiom for _module.Even.Sum for decreasing-related literals (revealed)
axiom {:id "id254"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int, b#0: int :: 
    {:weight 3} { _module.Even.Sum(this, LitInt(a#0), LitInt(b#0)) } 
    _module.Even.Sum#canCall(this, LitInt(a#0), LitInt(b#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Even()))
       ==> _module.Even.Sum(this, LitInt(a#0), LitInt(b#0)) == LitInt(a#0 + b#0));
// definition axiom for _module.Even.Sum for all literals (revealed)
axiom {:id "id255"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int, b#0: int :: 
    {:weight 3} { _module.Even.Sum(Lit(this), LitInt(a#0), LitInt(b#0)) } 
    _module.Even.Sum#canCall(Lit(this), LitInt(a#0), LitInt(b#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Even()))
       ==> _module.Even.Sum(Lit(this), LitInt(a#0), LitInt(b#0)) == LitInt(a#0 + b#0));
}

function _module.Even.Sum#canCall(this: ref, a#0: int, b#0: int) : bool;

function _module.Even.Sum#requires(ref, int, int) : bool;

// #requires axiom for _module.Even.Sum
axiom (forall this: ref, a#0: int, b#0: int :: 
  { _module.Even.Sum#requires(this, a#0, b#0) } 
  this != null && $Is(this, Tclass._module.Even())
     ==> _module.Even.Sum#requires(this, a#0, b#0) == true);

procedure {:verboseName "Even.Sum (well-formedness)"} CheckWellformed$$_module.Even.Sum(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Even())
         && $IsAlloc(this, Tclass._module.Even(), $Heap), 
    a#0: int, 
    b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Even.SideEffecting (well-formedness)"} CheckWellFormed$$_module.Even.SideEffecting(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Even())
         && $IsAlloc(this, Tclass._module.Even(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Even.SideEffecting (call)"} Call$$_module.Even.SideEffecting(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Even())
         && $IsAlloc(this, Tclass._module.Even(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Even.SideEffecting (correctness)"} Impl$$_module.Even.SideEffecting(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Even())
         && $IsAlloc(this, Tclass._module.Even(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Even.SideEffecting (correctness)"} Impl$$_module.Even.SideEffecting(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: SideEffecting, Impl$$_module.Even.SideEffecting
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/DafnyTests/TestAttribute/TestAttribute.dfy(106,16)
    assume true;
    assert {:id "id257"} $_ModifiesFrame[this, _module.Even.value];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.Even.value)): int + 1;
    $Heap := update($Heap, this, _module.Even.value, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



// function declaration for _module.Even.Identity
function _module.Even.Identity(this: ref, a#0: int) : int
uses {
// consequence axiom for _module.Even.Identity
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int :: 
    { _module.Even.Identity(this, a#0) } 
    _module.Even.Identity#canCall(this, a#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Even()))
       ==> _module.Even.Identity(this, a#0) == a#0);
// definition axiom for _module.Even.Identity (revealed)
axiom {:id "id260"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int :: 
    { _module.Even.Identity(this, a#0) } 
    _module.Even.Identity#canCall(this, a#0)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Even()))
       ==> _module.Even.Identity(this, a#0) == a#0);
// definition axiom for _module.Even.Identity for decreasing-related literals (revealed)
axiom {:id "id261"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int :: 
    {:weight 3} { _module.Even.Identity(this, LitInt(a#0)) } 
    _module.Even.Identity#canCall(this, LitInt(a#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Even()))
       ==> _module.Even.Identity(this, LitInt(a#0)) == LitInt(a#0));
// definition axiom for _module.Even.Identity for all literals (revealed)
axiom {:id "id262"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, a#0: int :: 
    {:weight 3} { _module.Even.Identity(Lit(this), LitInt(a#0)) } 
    _module.Even.Identity#canCall(Lit(this), LitInt(a#0))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Even()))
       ==> _module.Even.Identity(Lit(this), LitInt(a#0)) == LitInt(a#0));
}

function _module.Even.Identity#canCall(this: ref, a#0: int) : bool;

function _module.Even.Identity#requires(ref, int) : bool;

// #requires axiom for _module.Even.Identity
axiom (forall this: ref, a#0: int :: 
  { _module.Even.Identity#requires(this, a#0) } 
  this != null && $Is(this, Tclass._module.Even())
     ==> _module.Even.Identity#requires(this, a#0) == true);

procedure {:verboseName "Even.Identity (well-formedness)"} CheckWellformed$$_module.Even.Identity(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Even())
         && $IsAlloc(this, Tclass._module.Even(), $Heap), 
    a#0: int)
   returns (b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id263"} b#0 == a#0;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Even.Identity (well-formedness)"} CheckWellformed$$_module.Even.Identity(this: ref, a#0: int) returns (b#0: int)
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
        assume {:id "id264"} b#0 == a#0;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id265"} _module.Even.Identity(this, a#0) == a#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Even.Identity(this, a#0), TInt);
        assume {:id "id266"} _module.Even.Identity(this, a#0) == b#0;
        return;

        assume false;
    }
}



procedure {:verboseName "Even.AStaticMethod (well-formedness)"} CheckWellFormed$$_module.Even.AStaticMethod();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Even.AStaticMethod (call)"} Call$$_module.Even.AStaticMethod();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Even.AStaticMethod (correctness)"} Impl$$_module.Even.AStaticMethod() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.Even
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Even()) } { $Is(c#0, Tclass._module.Even?()) } 
  $Is(c#0, Tclass._module.Even())
     <==> $Is(c#0, Tclass._module.Even?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Even
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Even(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Even?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Even(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Even?(), $h));

const unique class._module.StringMap?: ClassName;

// $Is axiom for class StringMap
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.StringMap?()) } 
  $Is($o, Tclass._module.StringMap?())
     <==> $o == null || dtype($o) == Tclass._module.StringMap?());

// $IsAlloc axiom for class StringMap
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.StringMap?(), $h) } 
  $IsAlloc($o, Tclass._module.StringMap?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.StringMap.m: Field
uses {
axiom FDim(_module.StringMap.m) == 0
   && FieldOfDecl(class._module.StringMap?, field$m) == _module.StringMap.m
   && !$IsGhostField(_module.StringMap.m);
}

// StringMap.m: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.StringMap.m)): Map } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.StringMap?()
     ==> $Is($Unbox(read($h, $o, _module.StringMap.m)): Map, TMap(TSeq(TChar), TSeq(TChar))));

// StringMap.m: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.StringMap.m)): Map } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.StringMap?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.StringMap.m)): Map, 
      TMap(TSeq(TChar), TSeq(TChar)), 
      $h));

// function declaration for _module.StringMap.Contains
function _module.StringMap.Contains($heap: Heap, this: ref, key#0: Seq) : bool
uses {
// definition axiom for _module.StringMap.Contains (revealed)
axiom {:id "id267"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, key#0: Seq :: 
    { _module.StringMap.Contains($Heap, this, key#0), $IsGoodHeap($Heap) } 
    _module.StringMap.Contains#canCall($Heap, this, key#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.StringMap())
           && $IsAlloc(this, Tclass._module.StringMap(), $Heap)
           && $Is(key#0, TSeq(TChar)))
       ==> _module.StringMap.Contains($Heap, this, key#0)
         == Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.StringMap.m)): Map), $Box(key#0)));
}

function _module.StringMap.Contains#canCall($heap: Heap, this: ref, key#0: Seq) : bool;

// frame axiom for _module.StringMap.Contains
axiom (forall $h0: Heap, $h1: Heap, this: ref, key#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.StringMap.Contains($h1, this, key#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.StringMap())
       && (_module.StringMap.Contains#canCall($h0, this, key#0)
         || $Is(key#0, TSeq(TChar)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.StringMap.Contains($h0, this, key#0)
       == _module.StringMap.Contains($h1, this, key#0));

function _module.StringMap.Contains#requires(Heap, ref, Seq) : bool;

// #requires axiom for _module.StringMap.Contains
axiom (forall $Heap: Heap, this: ref, key#0: Seq :: 
  { _module.StringMap.Contains#requires($Heap, this, key#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.StringMap())
       && $IsAlloc(this, Tclass._module.StringMap(), $Heap)
       && $Is(key#0, TSeq(TChar))
     ==> _module.StringMap.Contains#requires($Heap, this, key#0) == true);

procedure {:verboseName "StringMap.Contains (well-formedness)"} CheckWellformed$$_module.StringMap.Contains(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StringMap())
         && $IsAlloc(this, Tclass._module.StringMap(), $Heap), 
    key#0: Seq where $Is(key#0, TSeq(TChar)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StringMap.Contains (well-formedness)"} CheckWellformed$$_module.StringMap.Contains(this: ref, key#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

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
        b$reqreads#0 := $_ReadsFrame[this, _module.StringMap.m];
        assume {:id "id268"} _module.StringMap.Contains($Heap, this, key#0)
           == Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.StringMap.m)): Map), $Box(key#0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.StringMap.Contains($Heap, this, key#0), TBool);
        assert {:id "id269"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.StringMap.Get
function _module.StringMap.Get($heap: Heap, this: ref, key#0: Seq) : Seq
uses {
// consequence axiom for _module.StringMap.Get
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, key#0: Seq :: 
    { _module.StringMap.Get($Heap, this, key#0) } 
    _module.StringMap.Get#canCall($Heap, this, key#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.StringMap())
           && $IsAlloc(this, Tclass._module.StringMap(), $Heap)
           && 
          $Is(key#0, TSeq(TChar))
           && $IsAlloc(key#0, TSeq(TChar), $Heap)
           && _module.StringMap.Contains($Heap, this, key#0))
       ==> $Is(_module.StringMap.Get($Heap, this, key#0), TSeq(TChar)));
// definition axiom for _module.StringMap.Get (revealed)
axiom {:id "id270"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, key#0: Seq :: 
    { _module.StringMap.Get($Heap, this, key#0), $IsGoodHeap($Heap) } 
    _module.StringMap.Get#canCall($Heap, this, key#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.StringMap())
           && $IsAlloc(this, Tclass._module.StringMap(), $Heap)
           && $Is(key#0, TSeq(TChar))
           && _module.StringMap.Contains($Heap, this, key#0))
       ==> _module.StringMap.Get($Heap, this, key#0)
         == $Unbox(Map#Elements($Unbox(read($Heap, this, _module.StringMap.m)): Map)[$Box(key#0)]): Seq);
}

function _module.StringMap.Get#canCall($heap: Heap, this: ref, key#0: Seq) : bool;

// frame axiom for _module.StringMap.Get
axiom (forall $h0: Heap, $h1: Heap, this: ref, key#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.StringMap.Get($h1, this, key#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.StringMap())
       && (_module.StringMap.Get#canCall($h0, this, key#0) || $Is(key#0, TSeq(TChar)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.StringMap.Get($h0, this, key#0)
       == _module.StringMap.Get($h1, this, key#0));

function _module.StringMap.Get#requires(Heap, ref, Seq) : bool;

// #requires axiom for _module.StringMap.Get
axiom (forall $Heap: Heap, this: ref, key#0: Seq :: 
  { _module.StringMap.Get#requires($Heap, this, key#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.StringMap())
       && $IsAlloc(this, Tclass._module.StringMap(), $Heap)
       && $Is(key#0, TSeq(TChar))
     ==> _module.StringMap.Get#requires($Heap, this, key#0)
       == _module.StringMap.Contains($Heap, this, key#0));

procedure {:verboseName "StringMap.Get (well-formedness)"} CheckWellformed$$_module.StringMap.Get(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StringMap())
         && $IsAlloc(this, Tclass._module.StringMap(), $Heap), 
    key#0: Seq where $Is(key#0, TSeq(TChar)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StringMap.Get (well-formedness)"} CheckWellformed$$_module.StringMap.Get(this: ref, key#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##key#0: Seq;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.StringMap?(), $Heap);
    ##key#0 := key#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##key#0, TSeq(TChar), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
         ==> $_ReadsFrame[$o, $f]);
    assume _module.StringMap.Contains#canCall($Heap, this, key#0);
    assume {:id "id271"} _module.StringMap.Contains($Heap, this, key#0);
    assert {:id "id272"} b$reqreads#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.StringMap.Get($Heap, this, key#0), TSeq(TChar));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.StringMap.m];
        assert {:id "id273"} Set#IsMember(Map#Domain($Unbox(read($Heap, this, _module.StringMap.m)): Map), $Box(key#0));
        assume {:id "id274"} _module.StringMap.Get($Heap, this, key#0)
           == $Unbox(Map#Elements($Unbox(read($Heap, this, _module.StringMap.m)): Map)[$Box(key#0)]): Seq;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.StringMap.Get($Heap, this, key#0), TSeq(TChar));
        assert {:id "id275"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.StringMap.GetOrDefault
function _module.StringMap.GetOrDefault($heap: Heap, m#0: ref, key#0: Seq, default#0: Seq) : Seq
uses {
// consequence axiom for _module.StringMap.GetOrDefault
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, m#0: ref, key#0: Seq, default#0: Seq :: 
    { _module.StringMap.GetOrDefault($Heap, m#0, key#0, default#0) } 
    _module.StringMap.GetOrDefault#canCall($Heap, m#0, key#0, default#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(m#0, Tclass._module.StringMap())
           && $IsAlloc(m#0, Tclass._module.StringMap(), $Heap)
           && 
          $Is(key#0, TSeq(TChar))
           && $IsAlloc(key#0, TSeq(TChar), $Heap)
           && 
          $Is(default#0, TSeq(TChar))
           && $IsAlloc(default#0, TSeq(TChar), $Heap))
       ==> $Is(_module.StringMap.GetOrDefault($Heap, m#0, key#0, default#0), TSeq(TChar)));
// definition axiom for _module.StringMap.GetOrDefault (revealed)
axiom {:id "id276"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, m#0: ref, key#0: Seq, default#0: Seq :: 
    { _module.StringMap.GetOrDefault($Heap, m#0, key#0, default#0), $IsGoodHeap($Heap) } 
    _module.StringMap.GetOrDefault#canCall($Heap, m#0, key#0, default#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(m#0, Tclass._module.StringMap())
           && $Is(key#0, TSeq(TChar))
           && $Is(default#0, TSeq(TChar)))
       ==> _module.StringMap.Contains#canCall($Heap, m#0, key#0)
         && (_module.StringMap.Contains($Heap, m#0, key#0)
           ==> _module.StringMap.Get#canCall($Heap, m#0, key#0))
         && _module.StringMap.GetOrDefault($Heap, m#0, key#0, default#0)
           == (if _module.StringMap.Contains($Heap, m#0, key#0)
             then _module.StringMap.Get($Heap, m#0, key#0)
             else default#0));
}

function _module.StringMap.GetOrDefault#canCall($heap: Heap, m#0: ref, key#0: Seq, default#0: Seq) : bool;

// frame axiom for _module.StringMap.GetOrDefault
axiom (forall $h0: Heap, $h1: Heap, m#0: ref, key#0: Seq, default#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.StringMap.GetOrDefault($h1, m#0, key#0, default#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.StringMap.GetOrDefault#canCall($h0, m#0, key#0, default#0)
         || (
          $Is(m#0, Tclass._module.StringMap())
           && $Is(key#0, TSeq(TChar))
           && $Is(default#0, TSeq(TChar))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == m#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.StringMap.GetOrDefault($h0, m#0, key#0, default#0)
       == _module.StringMap.GetOrDefault($h1, m#0, key#0, default#0));

function _module.StringMap.GetOrDefault#requires(Heap, ref, Seq, Seq) : bool;

// #requires axiom for _module.StringMap.GetOrDefault
axiom (forall $Heap: Heap, m#0: ref, key#0: Seq, default#0: Seq :: 
  { _module.StringMap.GetOrDefault#requires($Heap, m#0, key#0, default#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(m#0, Tclass._module.StringMap())
       && $Is(key#0, TSeq(TChar))
       && $Is(default#0, TSeq(TChar))
     ==> _module.StringMap.GetOrDefault#requires($Heap, m#0, key#0, default#0) == true);

procedure {:verboseName "StringMap.GetOrDefault (well-formedness)"} CheckWellformed$$_module.StringMap.GetOrDefault(m#0: ref where $Is(m#0, Tclass._module.StringMap()), 
    key#0: Seq where $Is(key#0, TSeq(TChar)), 
    default#0: Seq where $Is(default#0, TSeq(TChar)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StringMap.GetOrDefault (well-formedness)"} CheckWellformed$$_module.StringMap.GetOrDefault(m#0: ref, key#0: Seq, default#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##key#0: Seq;
  var ##key#1: Seq;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == m#0);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.StringMap.GetOrDefault($Heap, m#0, key#0, default#0), TSeq(TChar));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id277"} m#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(m#0), Tclass._module.StringMap?(), $Heap);
        ##key#0 := key#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##key#0, TSeq(TChar), $Heap);
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == m#0
             ==> $_ReadsFrame[$o, $f]);
        assume _module.StringMap.Contains#canCall($Heap, m#0, key#0);
        if (_module.StringMap.Contains($Heap, m#0, key#0))
        {
            assert {:id "id278"} m#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(m#0), Tclass._module.StringMap?(), $Heap);
            ##key#1 := key#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##key#1, TSeq(TChar), $Heap);
            assert {:id "id279"} {:subsumption 0} _module.StringMap.Contains#canCall($Heap, m#0, ##key#1)
               ==> _module.StringMap.Contains($Heap, m#0, ##key#1)
                 || Set#IsMember(Map#Domain($Unbox(read($Heap, m#0, _module.StringMap.m)): Map), $Box(##key#1));
            assume _module.StringMap.Contains($Heap, m#0, ##key#1);
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == m#0
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.StringMap.Get#canCall($Heap, m#0, key#0);
            assume {:id "id280"} _module.StringMap.GetOrDefault($Heap, m#0, key#0, default#0)
               == _module.StringMap.Get($Heap, m#0, key#0);
            assume _module.StringMap.Get#canCall($Heap, m#0, key#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.StringMap.GetOrDefault($Heap, m#0, key#0, default#0), TSeq(TChar));
            assert {:id "id281"} b$reqreads#0;
            assert {:id "id282"} b$reqreads#1;
            return;
        }
        else
        {
            assume {:id "id283"} _module.StringMap.GetOrDefault($Heap, m#0, key#0, default#0) == default#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.StringMap.GetOrDefault($Heap, m#0, key#0, default#0), TSeq(TChar));
            assert {:id "id284"} b$reqreads#0;
            assert {:id "id285"} b$reqreads#1;
            return;
        }

        assume false;
    }
}



// $Is axiom for non-null type _module.StringMap
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.StringMap()) } 
    { $Is(c#0, Tclass._module.StringMap?()) } 
  $Is(c#0, Tclass._module.StringMap())
     <==> $Is(c#0, Tclass._module.StringMap?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.StringMap
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.StringMap(), $h) } 
    { $IsAlloc(c#0, Tclass._module.StringMap?(), $h) } 
  $IsAlloc(c#0, Tclass._module.StringMap(), $h)
     <==> $IsAlloc(c#0, Tclass._module.StringMap?(), $h));

// Constructor function declaration
function #_module.NatOutcome.NatSuccess(int) : DatatypeType;

const unique ##_module.NatOutcome.NatSuccess: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #_module.NatOutcome.NatSuccess(a#0#0#0) } 
  DatatypeCtorId(#_module.NatOutcome.NatSuccess(a#0#0#0))
     == ##_module.NatOutcome.NatSuccess);
}

function _module.NatOutcome.NatSuccess_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.NatOutcome.NatSuccess_q(d) } 
  _module.NatOutcome.NatSuccess_q(d)
     <==> DatatypeCtorId(d) == ##_module.NatOutcome.NatSuccess);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.NatOutcome.NatSuccess_q(d) } 
  _module.NatOutcome.NatSuccess_q(d)
     ==> (exists a#1#0#0: int :: d == #_module.NatOutcome.NatSuccess(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#_module.NatOutcome.NatSuccess(a#2#0#0), Tclass._module.NatOutcome()) } 
  $Is(#_module.NatOutcome.NatSuccess(a#2#0#0), Tclass._module.NatOutcome())
     <==> $Is(a#2#0#0, Tclass._System.nat()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.NatOutcome.value(d), Tclass._System.nat(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.NatOutcome.NatSuccess_q(d)
       && $IsAlloc(d, Tclass._module.NatOutcome(), $h)
     ==> $IsAlloc(_module.NatOutcome.value(d), Tclass._System.nat(), $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #_module.NatOutcome.NatSuccess(LitInt(a#3#0#0)) } 
  #_module.NatOutcome.NatSuccess(LitInt(a#3#0#0))
     == Lit(#_module.NatOutcome.NatSuccess(a#3#0#0)));

function _module.NatOutcome.value(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #_module.NatOutcome.NatSuccess(a#4#0#0) } 
  _module.NatOutcome.value(#_module.NatOutcome.NatSuccess(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #_module.NatOutcome.NatFailure(Seq) : DatatypeType;

const unique ##_module.NatOutcome.NatFailure: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: Seq :: 
  { #_module.NatOutcome.NatFailure(a#5#0#0) } 
  DatatypeCtorId(#_module.NatOutcome.NatFailure(a#5#0#0))
     == ##_module.NatOutcome.NatFailure);
}

function _module.NatOutcome.NatFailure_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.NatOutcome.NatFailure_q(d) } 
  _module.NatOutcome.NatFailure_q(d)
     <==> DatatypeCtorId(d) == ##_module.NatOutcome.NatFailure);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.NatOutcome.NatFailure_q(d) } 
  _module.NatOutcome.NatFailure_q(d)
     ==> (exists a#6#0#0: Seq :: d == #_module.NatOutcome.NatFailure(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: Seq :: 
  { $Is(#_module.NatOutcome.NatFailure(a#7#0#0), Tclass._module.NatOutcome()) } 
  $Is(#_module.NatOutcome.NatFailure(a#7#0#0), Tclass._module.NatOutcome())
     <==> $Is(a#7#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.NatOutcome.error(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      _module.NatOutcome.NatFailure_q(d)
       && $IsAlloc(d, Tclass._module.NatOutcome(), $h)
     ==> $IsAlloc(_module.NatOutcome.error(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#8#0#0: Seq :: 
  { #_module.NatOutcome.NatFailure(Lit(a#8#0#0)) } 
  #_module.NatOutcome.NatFailure(Lit(a#8#0#0))
     == Lit(#_module.NatOutcome.NatFailure(a#8#0#0)));

function _module.NatOutcome.error(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#9#0#0: Seq :: 
  { #_module.NatOutcome.NatFailure(a#9#0#0) } 
  _module.NatOutcome.error(#_module.NatOutcome.NatFailure(a#9#0#0)) == a#9#0#0);

// Inductive seq element rank
axiom (forall a#10#0#0: Seq, i: int :: 
  { Seq#Index(a#10#0#0, i), #_module.NatOutcome.NatFailure(a#10#0#0) } 
  0 <= i && i < Seq#Length(a#10#0#0)
     ==> DtRank($Unbox(Seq#Index(a#10#0#0, i)): DatatypeType)
       < DtRank(#_module.NatOutcome.NatFailure(a#10#0#0)));

// Inductive seq rank
axiom (forall a#11#0#0: Seq :: 
  { #_module.NatOutcome.NatFailure(a#11#0#0) } 
  Seq#Rank(a#11#0#0) < DtRank(#_module.NatOutcome.NatFailure(a#11#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.NatOutcome(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.NatOutcome())
     ==> $IsAlloc(d, Tclass._module.NatOutcome(), $h));

// Depth-one case-split function
function $IsA#_module.NatOutcome(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.NatOutcome(d) } 
  $IsA#_module.NatOutcome(d)
     ==> _module.NatOutcome.NatSuccess_q(d) || _module.NatOutcome.NatFailure_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.NatOutcome.NatFailure_q(d), $Is(d, Tclass._module.NatOutcome()) } 
    { _module.NatOutcome.NatSuccess_q(d), $Is(d, Tclass._module.NatOutcome()) } 
  $Is(d, Tclass._module.NatOutcome())
     ==> _module.NatOutcome.NatSuccess_q(d) || _module.NatOutcome.NatFailure_q(d));

// Datatype extensional equality declaration
function _module.NatOutcome#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.NatOutcome.NatSuccess
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.NatOutcome#Equal(a, b), _module.NatOutcome.NatSuccess_q(a) } 
    { _module.NatOutcome#Equal(a, b), _module.NatOutcome.NatSuccess_q(b) } 
  _module.NatOutcome.NatSuccess_q(a) && _module.NatOutcome.NatSuccess_q(b)
     ==> (_module.NatOutcome#Equal(a, b)
       <==> _module.NatOutcome.value(a) == _module.NatOutcome.value(b)));

// Datatype extensional equality definition: #_module.NatOutcome.NatFailure
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.NatOutcome#Equal(a, b), _module.NatOutcome.NatFailure_q(a) } 
    { _module.NatOutcome#Equal(a, b), _module.NatOutcome.NatFailure_q(b) } 
  _module.NatOutcome.NatFailure_q(a) && _module.NatOutcome.NatFailure_q(b)
     ==> (_module.NatOutcome#Equal(a, b)
       <==> Seq#Equal(_module.NatOutcome.error(a), _module.NatOutcome.error(b))));

// Datatype extensionality axiom: _module.NatOutcome
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.NatOutcome#Equal(a, b) } 
  _module.NatOutcome#Equal(a, b) <==> a == b);

const unique class._module.NatOutcome: ClassName;

// function declaration for _module.NatOutcome.IsFailure
function _module.NatOutcome.IsFailure(this: DatatypeType) : bool;

function _module.NatOutcome.IsFailure#canCall(this: DatatypeType) : bool;

function _module.NatOutcome.IsFailure#requires(DatatypeType) : bool;

// #requires axiom for _module.NatOutcome.IsFailure
axiom (forall this: DatatypeType :: 
  { _module.NatOutcome.IsFailure#requires(this) } 
  $Is(this, Tclass._module.NatOutcome())
     ==> _module.NatOutcome.IsFailure#requires(this) == true);

// definition axiom for _module.NatOutcome.IsFailure (revealed)
axiom {:id "id286"} (forall this: DatatypeType :: 
  { _module.NatOutcome.IsFailure(this) } 
  _module.NatOutcome.IsFailure#canCall(this)
       || $Is(this, Tclass._module.NatOutcome())
     ==> _module.NatOutcome.IsFailure(this) == _module.NatOutcome.NatFailure_q(this));

// definition axiom for _module.NatOutcome.IsFailure for all literals (revealed)
axiom {:id "id287"} (forall this: DatatypeType :: 
  {:weight 3} { _module.NatOutcome.IsFailure(Lit(this)) } 
  _module.NatOutcome.IsFailure#canCall(Lit(this))
       || $Is(this, Tclass._module.NatOutcome())
     ==> _module.NatOutcome.IsFailure(Lit(this))
       == Lit(_module.NatOutcome.NatFailure_q(Lit(this))));

// function declaration for _module.NatOutcome.PropagateFailure
function _module.NatOutcome.PropagateFailure(this: DatatypeType) : DatatypeType;

function _module.NatOutcome.PropagateFailure#canCall(this: DatatypeType) : bool;

// consequence axiom for _module.NatOutcome.PropagateFailure
axiom (forall this: DatatypeType :: 
  { _module.NatOutcome.PropagateFailure(this) } 
  _module.NatOutcome.PropagateFailure#canCall(this)
       || ($Is(this, Tclass._module.NatOutcome()) && _module.NatOutcome.IsFailure(this))
     ==> $Is(_module.NatOutcome.PropagateFailure(this), Tclass._module.NatOutcome()));

function _module.NatOutcome.PropagateFailure#requires(DatatypeType) : bool;

// #requires axiom for _module.NatOutcome.PropagateFailure
axiom (forall this: DatatypeType :: 
  { _module.NatOutcome.PropagateFailure#requires(this) } 
  $Is(this, Tclass._module.NatOutcome())
     ==> _module.NatOutcome.PropagateFailure#requires(this)
       == _module.NatOutcome.IsFailure(this));

// definition axiom for _module.NatOutcome.PropagateFailure (revealed)
axiom {:id "id288"} (forall this: DatatypeType :: 
  { _module.NatOutcome.PropagateFailure(this) } 
  _module.NatOutcome.PropagateFailure#canCall(this)
       || ($Is(this, Tclass._module.NatOutcome()) && _module.NatOutcome.IsFailure(this))
     ==> _module.NatOutcome.PropagateFailure(this) == this);

// definition axiom for _module.NatOutcome.PropagateFailure for all literals (revealed)
axiom {:id "id289"} (forall this: DatatypeType :: 
  {:weight 3} { _module.NatOutcome.PropagateFailure(Lit(this)) } 
  _module.NatOutcome.PropagateFailure#canCall(Lit(this))
       || ($Is(this, Tclass._module.NatOutcome())
         && Lit(_module.NatOutcome.IsFailure(Lit(this))))
     ==> _module.NatOutcome.PropagateFailure(Lit(this)) == Lit(this));

// function declaration for _module.NatOutcome.Extract
function _module.NatOutcome.Extract(this: DatatypeType) : int;

function _module.NatOutcome.Extract#canCall(this: DatatypeType) : bool;

// consequence axiom for _module.NatOutcome.Extract
axiom (forall this: DatatypeType :: 
  { _module.NatOutcome.Extract(this) } 
  _module.NatOutcome.Extract#canCall(this)
       || ($Is(this, Tclass._module.NatOutcome()) && !_module.NatOutcome.IsFailure(this))
     ==> LitInt(0) <= _module.NatOutcome.Extract(this));

function _module.NatOutcome.Extract#requires(DatatypeType) : bool;

// #requires axiom for _module.NatOutcome.Extract
axiom (forall this: DatatypeType :: 
  { _module.NatOutcome.Extract#requires(this) } 
  $Is(this, Tclass._module.NatOutcome())
     ==> _module.NatOutcome.Extract#requires(this) == !_module.NatOutcome.IsFailure(this));

// definition axiom for _module.NatOutcome.Extract (revealed)
axiom {:id "id290"} (forall this: DatatypeType :: 
  { _module.NatOutcome.Extract(this) } 
  _module.NatOutcome.Extract#canCall(this)
       || ($Is(this, Tclass._module.NatOutcome()) && !_module.NatOutcome.IsFailure(this))
     ==> _module.NatOutcome.Extract(this) == _module.NatOutcome.value(this));

// definition axiom for _module.NatOutcome.Extract for all literals (revealed)
axiom {:id "id291"} (forall this: DatatypeType :: 
  {:weight 3} { _module.NatOutcome.Extract(Lit(this)) } 
  _module.NatOutcome.Extract#canCall(Lit(this))
       || ($Is(this, Tclass._module.NatOutcome())
         && !Lit(_module.NatOutcome.IsFailure(Lit(this))))
     ==> _module.NatOutcome.Extract(Lit(this))
       == LitInt(_module.NatOutcome.value(Lit(this))));

// Constructor function declaration
function #_module.VoidOutcome.VoidSuccess() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.VoidOutcome.VoidSuccess())
   == ##_module.VoidOutcome.VoidSuccess;
// Constructor $Is
axiom $Is(#_module.VoidOutcome.VoidSuccess(), Tclass._module.VoidOutcome());
// Constructor literal
axiom #_module.VoidOutcome.VoidSuccess() == Lit(#_module.VoidOutcome.VoidSuccess());
}

const unique ##_module.VoidOutcome.VoidSuccess: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.VoidOutcome.VoidSuccess())
   == ##_module.VoidOutcome.VoidSuccess;
}

function _module.VoidOutcome.VoidSuccess_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.VoidOutcome.VoidSuccess_q(d) } 
  _module.VoidOutcome.VoidSuccess_q(d)
     <==> DatatypeCtorId(d) == ##_module.VoidOutcome.VoidSuccess);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.VoidOutcome.VoidSuccess_q(d) } 
  _module.VoidOutcome.VoidSuccess_q(d) ==> d == #_module.VoidOutcome.VoidSuccess());

// Constructor function declaration
function #_module.VoidOutcome.VoidFailure(Seq) : DatatypeType;

const unique ##_module.VoidOutcome.VoidFailure: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Seq :: 
  { #_module.VoidOutcome.VoidFailure(a#4#0#0) } 
  DatatypeCtorId(#_module.VoidOutcome.VoidFailure(a#4#0#0))
     == ##_module.VoidOutcome.VoidFailure);
}

function _module.VoidOutcome.VoidFailure_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.VoidOutcome.VoidFailure_q(d) } 
  _module.VoidOutcome.VoidFailure_q(d)
     <==> DatatypeCtorId(d) == ##_module.VoidOutcome.VoidFailure);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.VoidOutcome.VoidFailure_q(d) } 
  _module.VoidOutcome.VoidFailure_q(d)
     ==> (exists a#5#0#0: Seq :: d == #_module.VoidOutcome.VoidFailure(a#5#0#0)));

// Constructor $Is
axiom (forall a#6#0#0: Seq :: 
  { $Is(#_module.VoidOutcome.VoidFailure(a#6#0#0), Tclass._module.VoidOutcome()) } 
  $Is(#_module.VoidOutcome.VoidFailure(a#6#0#0), Tclass._module.VoidOutcome())
     <==> $Is(a#6#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.VoidOutcome.error(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      _module.VoidOutcome.VoidFailure_q(d)
       && $IsAlloc(d, Tclass._module.VoidOutcome(), $h)
     ==> $IsAlloc(_module.VoidOutcome.error(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#7#0#0: Seq :: 
  { #_module.VoidOutcome.VoidFailure(Lit(a#7#0#0)) } 
  #_module.VoidOutcome.VoidFailure(Lit(a#7#0#0))
     == Lit(#_module.VoidOutcome.VoidFailure(a#7#0#0)));

function _module.VoidOutcome.error(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#8#0#0: Seq :: 
  { #_module.VoidOutcome.VoidFailure(a#8#0#0) } 
  _module.VoidOutcome.error(#_module.VoidOutcome.VoidFailure(a#8#0#0)) == a#8#0#0);

// Inductive seq element rank
axiom (forall a#9#0#0: Seq, i: int :: 
  { Seq#Index(a#9#0#0, i), #_module.VoidOutcome.VoidFailure(a#9#0#0) } 
  0 <= i && i < Seq#Length(a#9#0#0)
     ==> DtRank($Unbox(Seq#Index(a#9#0#0, i)): DatatypeType)
       < DtRank(#_module.VoidOutcome.VoidFailure(a#9#0#0)));

// Inductive seq rank
axiom (forall a#10#0#0: Seq :: 
  { #_module.VoidOutcome.VoidFailure(a#10#0#0) } 
  Seq#Rank(a#10#0#0) < DtRank(#_module.VoidOutcome.VoidFailure(a#10#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.VoidOutcome(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.VoidOutcome())
     ==> $IsAlloc(d, Tclass._module.VoidOutcome(), $h));

// Depth-one case-split function
function $IsA#_module.VoidOutcome(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.VoidOutcome(d) } 
  $IsA#_module.VoidOutcome(d)
     ==> _module.VoidOutcome.VoidSuccess_q(d) || _module.VoidOutcome.VoidFailure_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.VoidOutcome.VoidFailure_q(d), $Is(d, Tclass._module.VoidOutcome()) } 
    { _module.VoidOutcome.VoidSuccess_q(d), $Is(d, Tclass._module.VoidOutcome()) } 
  $Is(d, Tclass._module.VoidOutcome())
     ==> _module.VoidOutcome.VoidSuccess_q(d) || _module.VoidOutcome.VoidFailure_q(d));

// Datatype extensional equality declaration
function _module.VoidOutcome#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.VoidOutcome.VoidSuccess
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.VoidOutcome#Equal(a, b), _module.VoidOutcome.VoidSuccess_q(a) } 
    { _module.VoidOutcome#Equal(a, b), _module.VoidOutcome.VoidSuccess_q(b) } 
  _module.VoidOutcome.VoidSuccess_q(a) && _module.VoidOutcome.VoidSuccess_q(b)
     ==> _module.VoidOutcome#Equal(a, b));

// Datatype extensional equality definition: #_module.VoidOutcome.VoidFailure
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.VoidOutcome#Equal(a, b), _module.VoidOutcome.VoidFailure_q(a) } 
    { _module.VoidOutcome#Equal(a, b), _module.VoidOutcome.VoidFailure_q(b) } 
  _module.VoidOutcome.VoidFailure_q(a) && _module.VoidOutcome.VoidFailure_q(b)
     ==> (_module.VoidOutcome#Equal(a, b)
       <==> Seq#Equal(_module.VoidOutcome.error(a), _module.VoidOutcome.error(b))));

// Datatype extensionality axiom: _module.VoidOutcome
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.VoidOutcome#Equal(a, b) } 
  _module.VoidOutcome#Equal(a, b) <==> a == b);

const unique class._module.VoidOutcome: ClassName;

// function declaration for _module.VoidOutcome.IsFailure
function _module.VoidOutcome.IsFailure(this: DatatypeType) : bool;

function _module.VoidOutcome.IsFailure#canCall(this: DatatypeType) : bool;

function _module.VoidOutcome.IsFailure#requires(DatatypeType) : bool;

// #requires axiom for _module.VoidOutcome.IsFailure
axiom (forall this: DatatypeType :: 
  { _module.VoidOutcome.IsFailure#requires(this) } 
  $Is(this, Tclass._module.VoidOutcome())
     ==> _module.VoidOutcome.IsFailure#requires(this) == true);

// definition axiom for _module.VoidOutcome.IsFailure (revealed)
axiom {:id "id292"} (forall this: DatatypeType :: 
  { _module.VoidOutcome.IsFailure(this) } 
  _module.VoidOutcome.IsFailure#canCall(this)
       || $Is(this, Tclass._module.VoidOutcome())
     ==> _module.VoidOutcome.IsFailure(this) == _module.VoidOutcome.VoidFailure_q(this));

// definition axiom for _module.VoidOutcome.IsFailure for all literals (revealed)
axiom {:id "id293"} (forall this: DatatypeType :: 
  {:weight 3} { _module.VoidOutcome.IsFailure(Lit(this)) } 
  _module.VoidOutcome.IsFailure#canCall(Lit(this))
       || $Is(this, Tclass._module.VoidOutcome())
     ==> _module.VoidOutcome.IsFailure(Lit(this))
       == Lit(_module.VoidOutcome.VoidFailure_q(Lit(this))));

// function declaration for _module.VoidOutcome.PropagateFailure
function _module.VoidOutcome.PropagateFailure(this: DatatypeType) : DatatypeType;

function _module.VoidOutcome.PropagateFailure#canCall(this: DatatypeType) : bool;

// consequence axiom for _module.VoidOutcome.PropagateFailure
axiom (forall this: DatatypeType :: 
  { _module.VoidOutcome.PropagateFailure(this) } 
  _module.VoidOutcome.PropagateFailure#canCall(this)
       || ($Is(this, Tclass._module.VoidOutcome()) && _module.VoidOutcome.IsFailure(this))
     ==> $Is(_module.VoidOutcome.PropagateFailure(this), Tclass._module.VoidOutcome()));

function _module.VoidOutcome.PropagateFailure#requires(DatatypeType) : bool;

// #requires axiom for _module.VoidOutcome.PropagateFailure
axiom (forall this: DatatypeType :: 
  { _module.VoidOutcome.PropagateFailure#requires(this) } 
  $Is(this, Tclass._module.VoidOutcome())
     ==> _module.VoidOutcome.PropagateFailure#requires(this)
       == _module.VoidOutcome.IsFailure(this));

// definition axiom for _module.VoidOutcome.PropagateFailure (revealed)
axiom {:id "id294"} (forall this: DatatypeType :: 
  { _module.VoidOutcome.PropagateFailure(this) } 
  _module.VoidOutcome.PropagateFailure#canCall(this)
       || ($Is(this, Tclass._module.VoidOutcome()) && _module.VoidOutcome.IsFailure(this))
     ==> _module.VoidOutcome.PropagateFailure(this) == this);

// definition axiom for _module.VoidOutcome.PropagateFailure for all literals (revealed)
axiom {:id "id295"} (forall this: DatatypeType :: 
  {:weight 3} { _module.VoidOutcome.PropagateFailure(Lit(this)) } 
  _module.VoidOutcome.PropagateFailure#canCall(Lit(this))
       || ($Is(this, Tclass._module.VoidOutcome())
         && Lit(_module.VoidOutcome.IsFailure(Lit(this))))
     ==> _module.VoidOutcome.PropagateFailure(Lit(this)) == Lit(this));

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

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$NatOutcome: TyTagFamily;

const unique tytagFamily$VoidOutcome: TyTagFamily;

const unique tytagFamily$Even: TyTagFamily;

const unique tytagFamily$StringMap: TyTagFamily;

const unique field$value: NameFamily;

const unique field$m: NameFamily;
