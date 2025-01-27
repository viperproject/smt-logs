// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy

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

const unique class._System.array2?: ClassName;

function Tclass._System.array2?(Ty) : Ty;

const unique Tagclass._System.array2?: TyTag;

// Tclass._System.array2? Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tag(Tclass._System.array2?(_System.array2$arg)) == Tagclass._System.array2?
     && TagFamily(Tclass._System.array2?(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2?_0(Ty) : Ty;

// Tclass._System.array2? injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tclass._System.array2?_0(Tclass._System.array2?(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2?
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2?(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2?(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2?(_System.array2$arg)));

axiom (forall o: ref :: { _System.array2.Length0(o) } 0 <= _System.array2.Length0(o));

axiom (forall o: ref :: { _System.array2.Length1(o) } 0 <= _System.array2.Length1(o));

// array2.: Type axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
     ==> $IsBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg));

// array2.: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg, $h));

// $Is axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array2?(_System.array2$arg)) } 
  $Is($o, Tclass._System.array2?(_System.array2$arg))
     <==> $o == null || dtype($o) == Tclass._System.array2?(_System.array2$arg));

// $IsAlloc axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array2.Length0(ref) : int;

// array2.Length0: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length0($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length0($o), TInt));

// array2.Length0: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length0($o), TInt, $h));

function _System.array2.Length1(ref) : int;

// array2.Length1: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length1($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length1($o), TInt));

// array2.Length1: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length1($o), TInt, $h));

function Tclass._System.array2(Ty) : Ty;

const unique Tagclass._System.array2: TyTag;

// Tclass._System.array2 Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tag(Tclass._System.array2(_System.array2$arg)) == Tagclass._System.array2
     && TagFamily(Tclass._System.array2(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2_0(Ty) : Ty;

// Tclass._System.array2 injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tclass._System.array2_0(Tclass._System.array2(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2(_System.array2$arg)));

// $Is axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array2(_System.array2$arg)) } 
    { $Is(c#0, Tclass._System.array2?(_System.array2$arg)) } 
  $Is(c#0, Tclass._System.array2(_System.array2$arg))
     <==> $Is(c#0, Tclass._System.array2?(_System.array2$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h));

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

function Tclass._System.___hFunc5(Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc5: TyTag;

// Tclass._System.___hFunc5 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tag(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == Tagclass._System.___hFunc5
     && TagFamily(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == tytagFamily$_#Func5);

function Tclass._System.___hFunc5_0(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_0(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T0);

function Tclass._System.___hFunc5_1(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_1(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T1);

function Tclass._System.___hFunc5_2(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_2(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T2);

function Tclass._System.___hFunc5_3(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_3(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T3);

function Tclass._System.___hFunc5_4(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_4(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T4);

function Tclass._System.___hFunc5_5(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_5(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)));

function Handle5([Heap,Box,Box,Box,Box,Box]Box, 
    [Heap,Box,Box,Box,Box,Box]bool, 
    [Heap,Box,Box,Box,Box,Box]Set)
   : HandleType;

function Apply5(Ty, Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box, Box) : Box;

function Requires5(Ty, Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box, Box) : bool;

function Reads5(Ty, Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Apply5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4) } 
  Apply5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4)
     == h[heap, bx0, bx1, bx2, bx3, bx4]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Requires5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4) } 
  r[heap, bx0, bx1, bx2, bx3, bx4]
     ==> Requires5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx: Box :: 
  { Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4), 
      bx) } 
  Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4), 
      bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3, bx4], bx));

function {:inline} Requires5#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box)
   : bool
{
  true
}

function {:inline} Reads5#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box)
   : bool
{
  true
}

// frame axiom for Reads5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Reads5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Requires5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Requires5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Apply5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Apply5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// empty-reads property for Reads5 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Reads5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), $IsGoodHeap(heap) } 
    { Reads5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
     ==> (Set#Equal(Reads5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), 
        Set#Empty(): Set)
       <==> Set#Equal(Reads5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4), 
        Set#Empty(): Set)));

// empty-reads property for Requires5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Requires5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), $IsGoodHeap(heap) } 
    { Requires5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && Set#Equal(Reads5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), 
        Set#Empty(): Set)
     ==> Requires5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4)
       == Requires5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, t5: Ty :: 
  { $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5)) } 
  $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box, bx4: Box :: 
      { Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && $IsBox(bx4, t4)
           && Requires5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4)
         ==> $IsBox(Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), t5)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty, 
    u5: Ty :: 
  { $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5)), $Is(f, Tclass._System.___hFunc5(u0, u1, u2, u3, u4, u5)) } 
  $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
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
        { $IsBox(bx, u4) } { $IsBox(bx, t4) } 
        $IsBox(bx, u4) ==> $IsBox(bx, t4))
       && (forall bx: Box :: 
        { $IsBox(bx, t5) } { $IsBox(bx, u5) } 
        $IsBox(bx, t5) ==> $IsBox(bx, u5))
     ==> $Is(f, Tclass._System.___hFunc5(u0, u1, u2, u3, u4, u5)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, t5: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box, bx4: Box :: 
        { Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
          { Reads5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
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
             && 
            $IsBox(bx4, t4)
             && $IsAllocBox(bx4, t4, h)
             && Requires5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, t5: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h) } 
  $IsGoodHeap(h)
       && $IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box, bx4: Box :: 
      { Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && $IsAllocBox(bx4, t4, h)
           && Requires5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4)
         ==> $IsAllocBox(Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), t5, h)));

function Tclass._System.___hPartialFunc5(Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc5: TyTag;

// Tclass._System.___hPartialFunc5 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tag(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == Tagclass._System.___hPartialFunc5
     && TagFamily(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == tytagFamily$_#PartialFunc5);

function Tclass._System.___hPartialFunc5_0(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_0(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc5_1(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_1(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc5_2(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_2(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc5_3(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_3(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc5_4(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_4(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T4);

function Tclass._System.___hPartialFunc5_5(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_5(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)));

// $Is axiom for subset type _System._#PartialFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box, x4#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
             && $IsBox(x4#0, #$T4)
           ==> Set#Equal(Reads5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0, x4#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc5
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$R: Ty, 
    f#0: HandleType, 
    $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h));

function Tclass._System.___hTotalFunc5(Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc5: TyTag;

// Tclass._System.___hTotalFunc5 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tag(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == Tagclass._System.___hTotalFunc5
     && TagFamily(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == tytagFamily$_#TotalFunc5);

function Tclass._System.___hTotalFunc5_0(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_0(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc5_1(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_1(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc5_2(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_2(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc5_3(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_3(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc5_4(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_4(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T4);

function Tclass._System.___hTotalFunc5_5(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_5(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)));

// $Is axiom for subset type _System._#TotalFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box, x4#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
             && $IsBox(x4#0, #$T4)
           ==> Requires5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0, x4#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc5
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$R: Ty, 
    f#0: HandleType, 
    $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h));

const unique class._module.__default: ClassName;

// function declaration for _module._default.P0
function _module.__default.P0(A#0: bool, B#0: bool, C#0: bool) : bool
uses {
// definition axiom for _module.__default.P0 (revealed)
axiom {:id "id36"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    { _module.__default.P0(A#0, B#0, C#0) } 
    _module.__default.P0#canCall(A#0, B#0, C#0) || 0 < $FunctionContextHeight
       ==> _module.__default.P0(A#0, B#0, C#0) == (A#0 && B#0 ==> C#0));
// definition axiom for _module.__default.P0 for all literals (revealed)
axiom {:id "id37"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    {:weight 3} { _module.__default.P0(Lit(A#0), Lit(B#0), Lit(C#0)) } 
    _module.__default.P0#canCall(Lit(A#0), Lit(B#0), Lit(C#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.P0(Lit(A#0), Lit(B#0), Lit(C#0)) == Lit(A#0 && B#0 ==> C#0));
}

function _module.__default.P0#canCall(A#0: bool, B#0: bool, C#0: bool) : bool;

function _module.__default.P0#requires(bool, bool, bool) : bool;

// #requires axiom for _module.__default.P0
axiom (forall A#0: bool, B#0: bool, C#0: bool :: 
  { _module.__default.P0#requires(A#0, B#0, C#0) } 
  _module.__default.P0#requires(A#0, B#0, C#0) == true);

procedure {:verboseName "P0 (well-formedness)"} CheckWellformed$$_module.__default.P0(A#0: bool, B#0: bool, C#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.P1
function _module.__default.P1(A#0: bool, B#0: bool, C#0: bool) : bool
uses {
// definition axiom for _module.__default.P1 (revealed)
axiom {:id "id39"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    { _module.__default.P1(A#0, B#0, C#0) } 
    _module.__default.P1#canCall(A#0, B#0, C#0) || 0 < $FunctionContextHeight
       ==> _module.__default.P1(A#0, B#0, C#0) == (A#0 && B#0 ==> C#0));
// definition axiom for _module.__default.P1 for all literals (revealed)
axiom {:id "id40"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    {:weight 3} { _module.__default.P1(Lit(A#0), Lit(B#0), Lit(C#0)) } 
    _module.__default.P1#canCall(Lit(A#0), Lit(B#0), Lit(C#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.P1(Lit(A#0), Lit(B#0), Lit(C#0)) == Lit(A#0 && B#0 ==> C#0));
}

function _module.__default.P1#canCall(A#0: bool, B#0: bool, C#0: bool) : bool;

function _module.__default.P1#requires(bool, bool, bool) : bool;

// #requires axiom for _module.__default.P1
axiom (forall A#0: bool, B#0: bool, C#0: bool :: 
  { _module.__default.P1#requires(A#0, B#0, C#0) } 
  _module.__default.P1#requires(A#0, B#0, C#0) == true);

procedure {:verboseName "P1 (well-formedness)"} CheckWellformed$$_module.__default.P1(A#0: bool, B#0: bool, C#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.P2
function _module.__default.P2(A#0: bool, B#0: bool, C#0: bool) : bool
uses {
// definition axiom for _module.__default.P2 (revealed)
axiom {:id "id42"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    { _module.__default.P2(A#0, B#0, C#0) } 
    _module.__default.P2#canCall(A#0, B#0, C#0) || 0 < $FunctionContextHeight
       ==> _module.__default.P2(A#0, B#0, C#0) == (A#0 && B#0 ==> C#0));
// definition axiom for _module.__default.P2 for all literals (revealed)
axiom {:id "id43"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    {:weight 3} { _module.__default.P2(Lit(A#0), Lit(B#0), Lit(C#0)) } 
    _module.__default.P2#canCall(Lit(A#0), Lit(B#0), Lit(C#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.P2(Lit(A#0), Lit(B#0), Lit(C#0)) == Lit(A#0 && B#0 ==> C#0));
}

function _module.__default.P2#canCall(A#0: bool, B#0: bool, C#0: bool) : bool;

function _module.__default.P2#requires(bool, bool, bool) : bool;

// #requires axiom for _module.__default.P2
axiom (forall A#0: bool, B#0: bool, C#0: bool :: 
  { _module.__default.P2#requires(A#0, B#0, C#0) } 
  _module.__default.P2#requires(A#0, B#0, C#0) == true);

procedure {:verboseName "P2 (well-formedness)"} CheckWellformed$$_module.__default.P2(A#0: bool, B#0: bool, C#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.P3
function _module.__default.P3(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.P3 (revealed)
axiom {:id "id45"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.P3(A#0, B#0, C#0, D#0) } 
    _module.__default.P3#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.P3(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.P3 for all literals (revealed)
axiom {:id "id46"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.P3(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.P3#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.P3(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.P3#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.P3#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.P3
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.P3#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.P3#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "P3 (well-formedness)"} CheckWellformed$$_module.__default.P3(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.P4
function _module.__default.P4(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.P4 (revealed)
axiom {:id "id48"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.P4(A#0, B#0, C#0, D#0) } 
    _module.__default.P4#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.P4(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.P4 for all literals (revealed)
axiom {:id "id49"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.P4(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.P4#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.P4(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.P4#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.P4#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.P4
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.P4#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.P4#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "P4 (well-formedness)"} CheckWellformed$$_module.__default.P4(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.P5
function _module.__default.P5(A#0: bool, B#0: bool, C#0: bool) : bool
uses {
// definition axiom for _module.__default.P5 (revealed)
axiom {:id "id51"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    { _module.__default.P5(A#0, B#0, C#0) } 
    _module.__default.P5#canCall(A#0, B#0, C#0) || 0 < $FunctionContextHeight
       ==> _module.__default.P5(A#0, B#0, C#0) == (A#0 ==> B#0 && C#0));
// definition axiom for _module.__default.P5 for all literals (revealed)
axiom {:id "id52"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    {:weight 3} { _module.__default.P5(Lit(A#0), Lit(B#0), Lit(C#0)) } 
    _module.__default.P5#canCall(Lit(A#0), Lit(B#0), Lit(C#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.P5(Lit(A#0), Lit(B#0), Lit(C#0)) == Lit(A#0 ==> B#0 && C#0));
}

function _module.__default.P5#canCall(A#0: bool, B#0: bool, C#0: bool) : bool;

function _module.__default.P5#requires(bool, bool, bool) : bool;

// #requires axiom for _module.__default.P5
axiom (forall A#0: bool, B#0: bool, C#0: bool :: 
  { _module.__default.P5#requires(A#0, B#0, C#0) } 
  _module.__default.P5#requires(A#0, B#0, C#0) == true);

procedure {:verboseName "P5 (well-formedness)"} CheckWellformed$$_module.__default.P5(A#0: bool, B#0: bool, C#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.P6
function _module.__default.P6(A#0: bool, B#0: bool, C#0: bool) : bool
uses {
// definition axiom for _module.__default.P6 (revealed)
axiom {:id "id54"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    { _module.__default.P6(A#0, B#0, C#0) } 
    _module.__default.P6#canCall(A#0, B#0, C#0) || 0 < $FunctionContextHeight
       ==> _module.__default.P6(A#0, B#0, C#0) == (A#0 ==> B#0 || C#0));
// definition axiom for _module.__default.P6 for all literals (revealed)
axiom {:id "id55"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    {:weight 3} { _module.__default.P6(Lit(A#0), Lit(B#0), Lit(C#0)) } 
    _module.__default.P6#canCall(Lit(A#0), Lit(B#0), Lit(C#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.P6(Lit(A#0), Lit(B#0), Lit(C#0)) == Lit(A#0 ==> B#0 || C#0));
}

function _module.__default.P6#canCall(A#0: bool, B#0: bool, C#0: bool) : bool;

function _module.__default.P6#requires(bool, bool, bool) : bool;

// #requires axiom for _module.__default.P6
axiom (forall A#0: bool, B#0: bool, C#0: bool :: 
  { _module.__default.P6#requires(A#0, B#0, C#0) } 
  _module.__default.P6#requires(A#0, B#0, C#0) == true);

procedure {:verboseName "P6 (well-formedness)"} CheckWellformed$$_module.__default.P6(A#0: bool, B#0: bool, C#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q0
function _module.__default.Q0(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q0 (revealed)
axiom {:id "id57"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q0(A#0, B#0, C#0, D#0) } 
    _module.__default.Q0#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q0(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q0 for all literals (revealed)
axiom {:id "id58"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q0(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q0#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q0(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q0#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q0#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q0
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q0#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q0#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q0 (well-formedness)"} CheckWellformed$$_module.__default.Q0(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q1
function _module.__default.Q1(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q1 (revealed)
axiom {:id "id60"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q1(A#0, B#0, C#0, D#0) } 
    _module.__default.Q1#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q1(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q1 for all literals (revealed)
axiom {:id "id61"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q1(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q1#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q1(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q1#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q1#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q1
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q1#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q1#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q1 (well-formedness)"} CheckWellformed$$_module.__default.Q1(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q2
function _module.__default.Q2(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q2 (revealed)
axiom {:id "id63"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q2(A#0, B#0, C#0, D#0) } 
    _module.__default.Q2#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q2(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q2 for all literals (revealed)
axiom {:id "id64"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q2(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q2#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q2(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q2#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q2#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q2
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q2#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q2#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q2 (well-formedness)"} CheckWellformed$$_module.__default.Q2(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q3
function _module.__default.Q3(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q3 (revealed)
axiom {:id "id66"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q3(A#0, B#0, C#0, D#0) } 
    _module.__default.Q3#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q3(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q3 for all literals (revealed)
axiom {:id "id67"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q3(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q3#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q3(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q3#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q3#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q3
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q3#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q3#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q3 (well-formedness)"} CheckWellformed$$_module.__default.Q3(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q4
function _module.__default.Q4(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q4 (revealed)
axiom {:id "id69"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q4(A#0, B#0, C#0, D#0) } 
    _module.__default.Q4#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q4(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q4 for all literals (revealed)
axiom {:id "id70"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q4(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q4#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q4(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q4#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q4#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q4
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q4#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q4#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q4 (well-formedness)"} CheckWellformed$$_module.__default.Q4(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q4a
function _module.__default.Q4a(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q4a (revealed)
axiom {:id "id72"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q4a(A#0, B#0, C#0, D#0) } 
    _module.__default.Q4a#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q4a(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q4a for all literals (revealed)
axiom {:id "id73"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q4a(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q4a#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q4a(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q4a#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q4a#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q4a
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q4a#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q4a#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q4a (well-formedness)"} CheckWellformed$$_module.__default.Q4a(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q4b
function _module.__default.Q4b(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q4b (revealed)
axiom {:id "id75"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q4b(A#0, B#0, C#0, D#0) } 
    _module.__default.Q4b#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q4b(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q4b for all literals (revealed)
axiom {:id "id76"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q4b(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q4b#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q4b(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q4b#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q4b#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q4b
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q4b#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q4b#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q4b (well-formedness)"} CheckWellformed$$_module.__default.Q4b(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q4c
function _module.__default.Q4c(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q4c (revealed)
axiom {:id "id78"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q4c(A#0, B#0, C#0, D#0) } 
    _module.__default.Q4c#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q4c(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q4c for all literals (revealed)
axiom {:id "id79"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q4c(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q4c#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q4c(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q4c#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q4c#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q4c
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q4c#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q4c#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q4c (well-formedness)"} CheckWellformed$$_module.__default.Q4c(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q4d
function _module.__default.Q4d(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q4d (revealed)
axiom {:id "id81"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q4d(A#0, B#0, C#0, D#0) } 
    _module.__default.Q4d#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q4d(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q4d for all literals (revealed)
axiom {:id "id82"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q4d(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q4d#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q4d(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q4d#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q4d#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q4d
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q4d#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q4d#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q4d (well-formedness)"} CheckWellformed$$_module.__default.Q4d(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q5
function _module.__default.Q5(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q5 (revealed)
axiom {:id "id84"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q5(A#0, B#0, C#0, D#0) } 
    _module.__default.Q5#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q5(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q5 for all literals (revealed)
axiom {:id "id85"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q5(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q5#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q5(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q5#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q5#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q5
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q5#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q5#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q5 (well-formedness)"} CheckWellformed$$_module.__default.Q5(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q6
function _module.__default.Q6(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q6 (revealed)
axiom {:id "id87"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q6(A#0, B#0, C#0, D#0) } 
    _module.__default.Q6#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q6(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> C#0 && D#0));
// definition axiom for _module.__default.Q6 for all literals (revealed)
axiom {:id "id88"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q6(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q6#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q6(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> C#0 && D#0));
}

function _module.__default.Q6#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q6#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q6
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q6#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q6#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q6 (well-formedness)"} CheckWellformed$$_module.__default.Q6(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q7
function _module.__default.Q7(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q7 (revealed)
axiom {:id "id90"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q7(A#0, B#0, C#0, D#0) } 
    _module.__default.Q7#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q7(A#0, B#0, C#0, D#0) == (A#0 ==> B#0 && C#0 && D#0));
// definition axiom for _module.__default.Q7 for all literals (revealed)
axiom {:id "id91"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q7(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q7#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q7(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 ==> B#0 && C#0 && D#0));
}

function _module.__default.Q7#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q7#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q7
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q7#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q7#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q7 (well-formedness)"} CheckWellformed$$_module.__default.Q7(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q8
function _module.__default.Q8(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q8 (revealed)
axiom {:id "id93"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q8(A#0, B#0, C#0, D#0) } 
    _module.__default.Q8#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q8(A#0, B#0, C#0, D#0) == (A#0 ==> B#0 && C#0 && D#0));
// definition axiom for _module.__default.Q8 for all literals (revealed)
axiom {:id "id94"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q8(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q8#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q8(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 ==> B#0 && C#0 && D#0));
}

function _module.__default.Q8#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q8#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q8
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q8#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q8#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q8 (well-formedness)"} CheckWellformed$$_module.__default.Q8(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q8a
function _module.__default.Q8a(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q8a (revealed)
axiom {:id "id96"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q8a(A#0, B#0, C#0, D#0) } 
    _module.__default.Q8a#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q8a(A#0, B#0, C#0, D#0)
         == ((A#0 ==> B#0 && C#0 && D#0) && (B#0 || C#0)));
// definition axiom for _module.__default.Q8a for all literals (revealed)
axiom {:id "id97"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q8a(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q8a#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q8a(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit((A#0 ==> B#0 && C#0 && D#0) && (B#0 || C#0)));
}

function _module.__default.Q8a#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q8a#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q8a
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q8a#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q8a#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q8a (well-formedness)"} CheckWellformed$$_module.__default.Q8a(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q8b
function _module.__default.Q8b(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool
uses {
// definition axiom for _module.__default.Q8b (revealed)
axiom {:id "id99"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    { _module.__default.Q8b(A#0, B#0, C#0, D#0) } 
    _module.__default.Q8b#canCall(A#0, B#0, C#0, D#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q8b(A#0, B#0, C#0, D#0) == (A#0 && B#0 ==> B#0 && D#0));
// definition axiom for _module.__default.Q8b for all literals (revealed)
axiom {:id "id100"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
    {:weight 3} { _module.__default.Q8b(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0)) } 
    _module.__default.Q8b#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q8b(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0))
         == Lit(A#0 && B#0 ==> B#0 && D#0));
}

function _module.__default.Q8b#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool) : bool;

function _module.__default.Q8b#requires(bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q8b
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool :: 
  { _module.__default.Q8b#requires(A#0, B#0, C#0, D#0) } 
  _module.__default.Q8b#requires(A#0, B#0, C#0, D#0) == true);

procedure {:verboseName "Q8b (well-formedness)"} CheckWellformed$$_module.__default.Q8b(A#0: bool, B#0: bool, C#0: bool, D#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q8c
function _module.__default.Q8c(t#0: int, x#0: int, y#0: int) : bool
uses {
// definition axiom for _module.__default.Q8c (revealed)
axiom {:id "id102"} 0 <= $FunctionContextHeight
   ==> (forall t#0: int, x#0: int, y#0: int :: 
    { _module.__default.Q8c(t#0, x#0, y#0) } 
    _module.__default.Q8c#canCall(t#0, x#0, y#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q8c(t#0, x#0, y#0)
         == (
          (t#0 == LitInt(2) ==> x#0 < y#0)
           && (t#0 == LitInt(3) || t#0 == LitInt(2)
             ==> x#0 == LitInt(100) && y#0 == LitInt(1000))
           && (t#0 == LitInt(4) ==> LitInt(0) <= x#0 || LitInt(0) <= y#0)));
// definition axiom for _module.__default.Q8c for all literals (revealed)
axiom {:id "id103"} 0 <= $FunctionContextHeight
   ==> (forall t#0: int, x#0: int, y#0: int :: 
    {:weight 3} { _module.__default.Q8c(LitInt(t#0), LitInt(x#0), LitInt(y#0)) } 
    _module.__default.Q8c#canCall(LitInt(t#0), LitInt(x#0), LitInt(y#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q8c(LitInt(t#0), LitInt(x#0), LitInt(y#0))
         == (
          (LitInt(t#0) == LitInt(2) ==> x#0 < y#0)
           && (LitInt(t#0) == LitInt(3) || LitInt(t#0) == LitInt(2)
             ==> LitInt(x#0) == LitInt(100) && LitInt(y#0) == LitInt(1000))
           && (LitInt(t#0) == LitInt(4)
             ==> LitInt(0) <= LitInt(x#0) || LitInt(0) <= LitInt(y#0))));
}

function _module.__default.Q8c#canCall(t#0: int, x#0: int, y#0: int) : bool;

function _module.__default.Q8c#requires(int, int, int) : bool;

// #requires axiom for _module.__default.Q8c
axiom (forall t#0: int, x#0: int, y#0: int :: 
  { _module.__default.Q8c#requires(t#0, x#0, y#0) } 
  _module.__default.Q8c#requires(t#0, x#0, y#0) == true);

procedure {:verboseName "Q8c (well-formedness)"} CheckWellformed$$_module.__default.Q8c(t#0: int, x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q8d
function _module.__default.Q8d(t#0: int, x#0: int, y#0: int) : bool
uses {
// definition axiom for _module.__default.Q8d (revealed)
axiom {:id "id105"} 0 <= $FunctionContextHeight
   ==> (forall t#0: int, x#0: int, y#0: int :: 
    { _module.__default.Q8d(t#0, x#0, y#0) } 
    _module.__default.Q8d#canCall(t#0, x#0, y#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q8d(t#0, x#0, y#0)
         == (t#0 == LitInt(3) || t#0 == LitInt(2)
           ==> x#0 == LitInt(100) && y#0 == LitInt(1000)));
// definition axiom for _module.__default.Q8d for all literals (revealed)
axiom {:id "id106"} 0 <= $FunctionContextHeight
   ==> (forall t#0: int, x#0: int, y#0: int :: 
    {:weight 3} { _module.__default.Q8d(LitInt(t#0), LitInt(x#0), LitInt(y#0)) } 
    _module.__default.Q8d#canCall(LitInt(t#0), LitInt(x#0), LitInt(y#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q8d(LitInt(t#0), LitInt(x#0), LitInt(y#0))
         == (LitInt(t#0) == LitInt(3) || LitInt(t#0) == LitInt(2)
           ==> LitInt(x#0) == LitInt(100) && LitInt(y#0) == LitInt(1000)));
}

function _module.__default.Q8d#canCall(t#0: int, x#0: int, y#0: int) : bool;

function _module.__default.Q8d#requires(int, int, int) : bool;

// #requires axiom for _module.__default.Q8d
axiom (forall t#0: int, x#0: int, y#0: int :: 
  { _module.__default.Q8d#requires(t#0, x#0, y#0) } 
  _module.__default.Q8d#requires(t#0, x#0, y#0) == true);

procedure {:verboseName "Q8d (well-formedness)"} CheckWellformed$$_module.__default.Q8d(t#0: int, x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Q9
function _module.__default.Q9(A#0: bool, B#0: bool, C#0: bool) : bool
uses {
// definition axiom for _module.__default.Q9 (revealed)
axiom {:id "id108"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    { _module.__default.Q9(A#0, B#0, C#0) } 
    _module.__default.Q9#canCall(A#0, B#0, C#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Q9(A#0, B#0, C#0) == (A#0 ==> B#0 ==> C#0));
// definition axiom for _module.__default.Q9 for all literals (revealed)
axiom {:id "id109"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool :: 
    {:weight 3} { _module.__default.Q9(Lit(A#0), Lit(B#0), Lit(C#0)) } 
    _module.__default.Q9#canCall(Lit(A#0), Lit(B#0), Lit(C#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Q9(Lit(A#0), Lit(B#0), Lit(C#0)) == Lit(A#0 ==> B#0 ==> C#0));
}

function _module.__default.Q9#canCall(A#0: bool, B#0: bool, C#0: bool) : bool;

function _module.__default.Q9#requires(bool, bool, bool) : bool;

// #requires axiom for _module.__default.Q9
axiom (forall A#0: bool, B#0: bool, C#0: bool :: 
  { _module.__default.Q9#requires(A#0, B#0, C#0) } 
  _module.__default.Q9#requires(A#0, B#0, C#0) == true);

procedure {:verboseName "Q9 (well-formedness)"} CheckWellformed$$_module.__default.Q9(A#0: bool, B#0: bool, C#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R0
function _module.__default.R0(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R0 (revealed)
axiom {:id "id111"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R0(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R0#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R0(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          ($Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool)
             && ($Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool)));
// definition axiom for _module.__default.R0 for all literals (revealed)
axiom {:id "id112"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R0(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R0#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R0(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          ($Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool)
             && ($Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool)));
}

function _module.__default.R0#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R0#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R0
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R0#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R0#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R0 (well-formedness)"} CheckWellformed$$_module.__default.R0(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R1
function _module.__default.R1(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R1 (revealed)
axiom {:id "id114"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R1(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R1#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R1(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
               && $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool
             ==> $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.R1 for all literals (revealed)
axiom {:id "id115"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R1(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R1#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R1(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
               && $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool
             ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.R1#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R1#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R1
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R1#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R1#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R1 (well-formedness)"} CheckWellformed$$_module.__default.R1(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R2
function _module.__default.R2(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R2 (revealed)
axiom {:id "id117"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R2(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R2#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R2(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool
             ==> $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.R2 for all literals (revealed)
axiom {:id "id118"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R2(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R2#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R2(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool
             ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.R2#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R2#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R2
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R2#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R2#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R2 (well-formedness)"} CheckWellformed$$_module.__default.R2(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R3
function _module.__default.R3(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R3 (revealed)
axiom {:id "id120"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R3(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R3#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R3(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool
             ==> $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.R3 for all literals (revealed)
axiom {:id "id121"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R3(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R3#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R3(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool
             ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.R3#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R3#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R3
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R3#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R3#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R3 (well-formedness)"} CheckWellformed$$_module.__default.R3(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R4
function _module.__default.R4(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R4 (revealed)
axiom {:id "id123"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R4(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R4#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R4(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool
             ==> $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.R4 for all literals (revealed)
axiom {:id "id124"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R4(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R4#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R4(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool
             ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.R4#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R4#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R4
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R4#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R4#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R4 (well-formedness)"} CheckWellformed$$_module.__default.R4(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R5
function _module.__default.R5(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R5 (revealed)
axiom {:id "id126"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R5(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R5#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R5(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
             ==> (forall y#0: int :: 
              { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(y#0))): bool } 
              $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(y#0))): bool
                 ==> $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool)));
// definition axiom for _module.__default.R5 for all literals (revealed)
axiom {:id "id127"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R5(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R5#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R5(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
             ==> (forall y#1: int :: 
              { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(y#1))): bool } 
              $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(y#1))): bool
                 ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool)));
}

function _module.__default.R5#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R5#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R5
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R5#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R5#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R5 (well-formedness)"} CheckWellformed$$_module.__default.R5(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R6
function _module.__default.R6(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R6 (revealed)
axiom {:id "id129"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R6(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R6#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R6(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          ($Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool)
             && $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.R6 for all literals (revealed)
axiom {:id "id130"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R6(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R6#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R6(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          ($Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool)
             && $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.R6#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R6#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R6
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R6#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R6#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R6 (well-formedness)"} CheckWellformed$$_module.__default.R6(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R7
function _module.__default.R7(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R7 (revealed)
axiom {:id "id132"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R7(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R7#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R7(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          ($Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool)
             && $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.R7 for all literals (revealed)
axiom {:id "id133"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R7(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R7#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R7(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          ($Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool)
             && $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.R7#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R7#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R7
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R7#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R7#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R7 (well-formedness)"} CheckWellformed$$_module.__default.R7(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R8
function _module.__default.R8(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R8 (revealed)
axiom {:id "id135"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R8(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R8#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R8(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          ($Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool)
             && $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.R8 for all literals (revealed)
axiom {:id "id136"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R8(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R8#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R8(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          ($Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool)
             && $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.R8#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R8#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R8
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R8#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R8#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R8 (well-formedness)"} CheckWellformed$$_module.__default.R8(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R9
function _module.__default.R9(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R9 (revealed)
axiom {:id "id138"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R9(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R9#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R9(P#0, Q#0, R#0)
         == (exists x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          ($Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool)
             && $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.R9 for all literals (revealed)
axiom {:id "id139"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R9(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R9#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R9(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (exists x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          ($Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool)
             && $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.R9#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R9#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R9
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R9#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R9#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R9 (well-formedness)"} CheckWellformed$$_module.__default.R9(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.R10
function _module.__default.R10(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.R10 (revealed)
axiom {:id "id141"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.R10(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.R10#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R10(P#0, Q#0, R#0)
         == (exists x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
             && (exists y#0: int :: 
              { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(y#0))): bool } 
              $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(y#0))): bool
                 && $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool)));
// definition axiom for _module.__default.R10 for all literals (revealed)
axiom {:id "id142"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.R10(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.R10#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.R10(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (exists x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
             && (exists y#1: int :: 
              { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(y#1))): bool } 
              $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(y#1))): bool
                 && $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool)));
}

function _module.__default.R10#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.R10#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.R10
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.R10#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.R10#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "R10 (well-formedness)"} CheckWellformed$$_module.__default.R10(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Injective (well-formedness)"} CheckWellFormed$$_module.__default.Injective();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Injective (call)"} Call$$_module.__default.Injective();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: int, y#1: int :: 
    { _module.__default.Negate(y#1), _module.__default.Negate(x#1) } 
    _module.__default.Negate#canCall(x#1) && _module.__default.Negate#canCall(y#1));
  ensures {:id "id148"} (forall x#1: int, y#1: int :: 
    { _module.__default.Negate(y#1), _module.__default.Negate(x#1) } 
    _module.__default.Negate(x#1) == _module.__default.Negate(y#1) ==> x#1 == y#1);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Injective (correctness)"} Impl$$_module.__default.Injective() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: int, y#1: int :: 
    { _module.__default.Negate(y#1), _module.__default.Negate(x#1) } 
    _module.__default.Negate#canCall(x#1) && _module.__default.Negate#canCall(y#1));
  ensures {:id "id149"} (forall x#1: int, y#1: int :: 
    { _module.__default.Negate(y#1), _module.__default.Negate(x#1) } 
    _module.__default.Negate(x#1) == _module.__default.Negate(y#1) ==> x#1 == y#1);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Injective (correctness)"} Impl$$_module.__default.Injective() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Injective, Impl$$_module.__default.Injective
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



// function declaration for _module._default.Negate
function _module.__default.Negate(x#0: int) : int
uses {
// definition axiom for _module.__default.Negate (revealed)
axiom {:id "id150"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.Negate(x#0) } 
    _module.__default.Negate#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Negate(x#0) == 0 - x#0);
// definition axiom for _module.__default.Negate for all literals (revealed)
axiom {:id "id151"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.Negate(LitInt(x#0)) } 
    _module.__default.Negate#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.Negate(LitInt(x#0)) == LitInt(0 - x#0));
}

function _module.__default.Negate#canCall(x#0: int) : bool;

function _module.__default.Negate#requires(int) : bool;

// #requires axiom for _module.__default.Negate
axiom (forall x#0: int :: 
  { _module.__default.Negate#requires(x#0) } 
  _module.__default.Negate#requires(x#0) == true);

procedure {:verboseName "Negate (well-formedness)"} CheckWellformed$$_module.__default.Negate(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Quant0
function _module.__default.Quant0(s#0: Seq) : bool
uses {
// definition axiom for _module.__default.Quant0 (revealed)
axiom {:id "id153"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    { _module.__default.Quant0(s#0) } 
    _module.__default.Quant0#canCall(s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.Quant0(s#0)
         == (
          !Seq#Equal(s#0, Seq#Empty(): Seq)
           && ((char#ToInt(Lit(char#FromInt(97)))
                 <= char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
               && char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
                 <= char#ToInt(Lit(char#FromInt(122))))
             || (char#ToInt(Lit(char#FromInt(65)))
                 <= char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
               && char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
                 <= char#ToInt(Lit(char#FromInt(90)))))
           && (forall i#0: int :: 
            { $Unbox(Seq#Index(s#0, i#0)): char } 
            LitInt(1) <= i#0 && i#0 < Seq#Length(s#0)
               ==> (char#ToInt(Lit(char#FromInt(97)))
                     <= char#ToInt($Unbox(Seq#Index(s#0, i#0)): char)
                   && char#ToInt($Unbox(Seq#Index(s#0, i#0)): char)
                     <= char#ToInt(Lit(char#FromInt(122))))
                 || (char#ToInt(Lit(char#FromInt(65)))
                     <= char#ToInt($Unbox(Seq#Index(s#0, i#0)): char)
                   && char#ToInt($Unbox(Seq#Index(s#0, i#0)): char)
                     <= char#ToInt(Lit(char#FromInt(90))))
                 || (char#ToInt(Lit(char#FromInt(48)))
                     <= char#ToInt($Unbox(Seq#Index(s#0, i#0)): char)
                   && char#ToInt($Unbox(Seq#Index(s#0, i#0)): char)
                     <= char#ToInt(Lit(char#FromInt(57)))))));
// definition axiom for _module.__default.Quant0 for all literals (revealed)
axiom {:id "id154"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    {:weight 3} { _module.__default.Quant0(Lit(s#0)) } 
    _module.__default.Quant0#canCall(Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.Quant0(Lit(s#0))
         == (
          !Seq#Equal(s#0, Seq#Empty(): Seq)
           && ((char#ToInt(Lit(char#FromInt(97)))
                 <= char#ToInt($Unbox(Seq#Index(Lit(s#0), LitInt(0))): char)
               && char#ToInt($Unbox(Seq#Index(Lit(s#0), LitInt(0))): char)
                 <= char#ToInt(Lit(char#FromInt(122))))
             || (char#ToInt(Lit(char#FromInt(65)))
                 <= char#ToInt($Unbox(Seq#Index(Lit(s#0), LitInt(0))): char)
               && char#ToInt($Unbox(Seq#Index(Lit(s#0), LitInt(0))): char)
                 <= char#ToInt(Lit(char#FromInt(90)))))
           && (forall i#1: int :: 
            { $Unbox(Seq#Index(s#0, i#1)): char } 
            LitInt(1) <= i#1 && i#1 < Seq#Length(Lit(s#0))
               ==> (char#ToInt(Lit(char#FromInt(97)))
                     <= char#ToInt($Unbox(Seq#Index(Lit(s#0), i#1)): char)
                   && char#ToInt($Unbox(Seq#Index(Lit(s#0), i#1)): char)
                     <= char#ToInt(Lit(char#FromInt(122))))
                 || (char#ToInt(Lit(char#FromInt(65)))
                     <= char#ToInt($Unbox(Seq#Index(Lit(s#0), i#1)): char)
                   && char#ToInt($Unbox(Seq#Index(Lit(s#0), i#1)): char)
                     <= char#ToInt(Lit(char#FromInt(90))))
                 || (char#ToInt(Lit(char#FromInt(48)))
                     <= char#ToInt($Unbox(Seq#Index(Lit(s#0), i#1)): char)
                   && char#ToInt($Unbox(Seq#Index(Lit(s#0), i#1)): char)
                     <= char#ToInt(Lit(char#FromInt(57)))))));
}

function _module.__default.Quant0#canCall(s#0: Seq) : bool;

function _module.__default.Quant0#requires(Seq) : bool;

// #requires axiom for _module.__default.Quant0
axiom (forall s#0: Seq :: 
  { _module.__default.Quant0#requires(s#0) } 
  $Is(s#0, TSeq(TChar)) ==> _module.__default.Quant0#requires(s#0) == true);

procedure {:verboseName "Quant0 (well-formedness)"} CheckWellformed$$_module.__default.Quant0(s#0: Seq where $Is(s#0, TSeq(TChar)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Quant0 (well-formedness)"} CheckWellformed$$_module.__default.Quant0(s#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#2: int;


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
        if (!Seq#Equal(s#0, Seq#Empty(): Seq))
        {
            assert {:id "id155"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(s#0);
            if (char#ToInt(Lit(char#FromInt(97)))
               <= char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char))
            {
                assert {:id "id156"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(s#0);
            }

            if (!(char#ToInt(Lit(char#FromInt(97)))
                 <= char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
               && char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
                 <= char#ToInt(Lit(char#FromInt(122)))))
            {
                assert {:id "id157"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(s#0);
                if (char#ToInt(Lit(char#FromInt(65)))
                   <= char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char))
                {
                    assert {:id "id158"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(s#0);
                }
            }
        }

        if (!Seq#Equal(s#0, Seq#Empty(): Seq)
           && ((char#ToInt(Lit(char#FromInt(97)))
                 <= char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
               && char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
                 <= char#ToInt(Lit(char#FromInt(122))))
             || (char#ToInt(Lit(char#FromInt(65)))
                 <= char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
               && char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
                 <= char#ToInt(Lit(char#FromInt(90))))))
        {
            // Begin Comprehension WF check
            havoc i#2;
            if (true)
            {
                if (LitInt(1) <= i#2)
                {
                }

                if (LitInt(1) <= i#2 && i#2 < Seq#Length(s#0))
                {
                    assert {:id "id159"} 0 <= i#2 && i#2 < Seq#Length(s#0);
                    if (char#ToInt(Lit(char#FromInt(97)))
                       <= char#ToInt($Unbox(Seq#Index(s#0, i#2)): char))
                    {
                        assert {:id "id160"} 0 <= i#2 && i#2 < Seq#Length(s#0);
                    }

                    if (!(char#ToInt(Lit(char#FromInt(97)))
                         <= char#ToInt($Unbox(Seq#Index(s#0, i#2)): char)
                       && char#ToInt($Unbox(Seq#Index(s#0, i#2)): char)
                         <= char#ToInt(Lit(char#FromInt(122)))))
                    {
                        assert {:id "id161"} 0 <= i#2 && i#2 < Seq#Length(s#0);
                        if (char#ToInt(Lit(char#FromInt(65)))
                           <= char#ToInt($Unbox(Seq#Index(s#0, i#2)): char))
                        {
                            assert {:id "id162"} 0 <= i#2 && i#2 < Seq#Length(s#0);
                        }
                    }

                    if (!((char#ToInt(Lit(char#FromInt(97)))
                           <= char#ToInt($Unbox(Seq#Index(s#0, i#2)): char)
                         && char#ToInt($Unbox(Seq#Index(s#0, i#2)): char)
                           <= char#ToInt(Lit(char#FromInt(122))))
                       || (char#ToInt(Lit(char#FromInt(65)))
                           <= char#ToInt($Unbox(Seq#Index(s#0, i#2)): char)
                         && char#ToInt($Unbox(Seq#Index(s#0, i#2)): char)
                           <= char#ToInt(Lit(char#FromInt(90))))))
                    {
                        assert {:id "id163"} 0 <= i#2 && i#2 < Seq#Length(s#0);
                        if (char#ToInt(Lit(char#FromInt(48)))
                           <= char#ToInt($Unbox(Seq#Index(s#0, i#2)): char))
                        {
                            assert {:id "id164"} 0 <= i#2 && i#2 < Seq#Length(s#0);
                        }
                    }
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id165"} _module.__default.Quant0(s#0)
           == (
            !Seq#Equal(s#0, Seq#Empty(): Seq)
             && ((char#ToInt(Lit(char#FromInt(97)))
                   <= char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
                 && char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
                   <= char#ToInt(Lit(char#FromInt(122))))
               || (char#ToInt(Lit(char#FromInt(65)))
                   <= char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
                 && char#ToInt($Unbox(Seq#Index(s#0, LitInt(0))): char)
                   <= char#ToInt(Lit(char#FromInt(90)))))
             && (forall i#3: int :: 
              { $Unbox(Seq#Index(s#0, i#3)): char } 
              LitInt(1) <= i#3 && i#3 < Seq#Length(s#0)
                 ==> (char#ToInt(Lit(char#FromInt(97)))
                       <= char#ToInt($Unbox(Seq#Index(s#0, i#3)): char)
                     && char#ToInt($Unbox(Seq#Index(s#0, i#3)): char)
                       <= char#ToInt(Lit(char#FromInt(122))))
                   || (char#ToInt(Lit(char#FromInt(65)))
                       <= char#ToInt($Unbox(Seq#Index(s#0, i#3)): char)
                     && char#ToInt($Unbox(Seq#Index(s#0, i#3)): char)
                       <= char#ToInt(Lit(char#FromInt(90))))
                   || (char#ToInt(Lit(char#FromInt(48)))
                       <= char#ToInt($Unbox(Seq#Index(s#0, i#3)): char)
                     && char#ToInt($Unbox(Seq#Index(s#0, i#3)): char)
                       <= char#ToInt(Lit(char#FromInt(57))))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Quant0(s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Quant1
function _module.__default.Quant1($heap: Heap, m#0: ref, P#0: HandleType) : bool
uses {
// definition axiom for _module.__default.Quant1 (revealed)
axiom {:id "id166"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, m#0: ref, P#0: HandleType :: 
    { _module.__default.Quant1($Heap, m#0, P#0), $IsGoodHeap($Heap) } 
    _module.__default.Quant1#canCall($Heap, m#0, P#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(m#0, Tclass._System.array2(TSeq(TChar)))
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.Quant1($Heap, m#0, P#0)
         == (forall i#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(i#0))): bool } 
          LitInt(0) <= i#0
               && i#0 < _System.array2.Length0(m#0)
               && $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(i#0))): bool
             ==> (forall j#0: int :: 
              { $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): Seq } 
              LitInt(0) <= j#0 && j#0 < _System.array2.Length1(m#0)
                 ==> !Seq#Equal($Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): Seq, 
                  Seq#Empty(): Seq))));
}

function _module.__default.Quant1#canCall($heap: Heap, m#0: ref, P#0: HandleType) : bool;

// frame axiom for _module.__default.Quant1
axiom (forall $h0: Heap, $h1: Heap, m#0: ref, P#0: HandleType :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.Quant1($h1, m#0, P#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.Quant1#canCall($h0, m#0, P#0)
         || ($Is(m#0, Tclass._System.array2(TSeq(TChar)))
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == m#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.Quant1($h0, m#0, P#0)
       == _module.__default.Quant1($h1, m#0, P#0));

function _module.__default.Quant1#requires(Heap, ref, HandleType) : bool;

// #requires axiom for _module.__default.Quant1
axiom (forall $Heap: Heap, m#0: ref, P#0: HandleType :: 
  { _module.__default.Quant1#requires($Heap, m#0, P#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(m#0, Tclass._System.array2(TSeq(TChar)))
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.Quant1#requires($Heap, m#0, P#0) == true);

procedure {:verboseName "Quant1 (well-formedness)"} CheckWellformed$$_module.__default.Quant1(m#0: ref where $Is(m#0, Tclass._System.array2(TSeq(TChar))), 
    P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Quant1 (well-formedness)"} CheckWellformed$$_module.__default.Quant1(m#0: ref, P#0: HandleType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#1: int;
  var j#1: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == m#0);
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
        // Begin Comprehension WF check
        havoc i#1;
        if (true)
        {
            if (LitInt(0) <= i#1)
            {
                assert {:id "id167"} m#0 != null;
            }

            if (LitInt(0) <= i#1 && i#1 < _System.array2.Length0(m#0))
            {
            }

            if (LitInt(0) <= i#1
               && i#1 < _System.array2.Length0(m#0)
               && $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(i#1))): bool)
            {
                // Begin Comprehension WF check
                havoc j#1;
                if (true)
                {
                    if (LitInt(0) <= j#1)
                    {
                        assert {:id "id168"} m#0 != null;
                    }

                    if (LitInt(0) <= j#1 && j#1 < _System.array2.Length1(m#0))
                    {
                        assert {:id "id169"} m#0 != null;
                        assert {:id "id170"} 0 <= i#1 && i#1 < _System.array2.Length0(m#0);
                        assert {:id "id171"} 0 <= j#1 && j#1 < _System.array2.Length1(m#0);
                        b$reqreads#0 := $_ReadsFrame[m#0, MultiIndexField(IndexField(i#1), j#1)];
                    }
                }

                // End Comprehension WF check
            }
        }

        // End Comprehension WF check
        assume {:id "id172"} _module.__default.Quant1($Heap, m#0, P#0)
           == (forall i#2: int :: 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(i#2))): bool } 
            LitInt(0) <= i#2
                 && i#2 < _System.array2.Length0(m#0)
                 && $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(i#2))): bool
               ==> (forall j#2: int :: 
                { $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#2), j#2))): Seq } 
                LitInt(0) <= j#2 && j#2 < _System.array2.Length1(m#0)
                   ==> !Seq#Equal($Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#2), j#2))): Seq, 
                    Seq#Empty(): Seq)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Quant1($Heap, m#0, P#0), TBool);
        assert {:id "id173"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module._default.Quant2
function _module.__default.Quant2(s#0: Seq) : bool
uses {
// definition axiom for _module.__default.Quant2 (revealed)
axiom {:id "id174"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    { _module.__default.Quant2(s#0) } 
    _module.__default.Quant2#canCall(s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.Quant2(s#0)
         == (forall i#0: int :: 
          { $Unbox(Seq#Index(s#0, i#0)): char } 
          LitInt(0) <= i#0 && i#0 < Seq#Length(s#0)
             ==> (if $Unbox(Seq#Index(s#0, i#0)): char == Lit(char#FromInt(42))
               then false
               else $Unbox(Seq#Index(s#0, i#0)): char == Lit(char#FromInt(97))
                 || $Unbox(Seq#Index(s#0, i#0)): char == Lit(char#FromInt(98)))));
// definition axiom for _module.__default.Quant2 for all literals (revealed)
axiom {:id "id175"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    {:weight 3} { _module.__default.Quant2(Lit(s#0)) } 
    _module.__default.Quant2#canCall(Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.Quant2(Lit(s#0))
         == (forall i#1: int :: 
          { $Unbox(Seq#Index(s#0, i#1)): char } 
          LitInt(0) <= i#1 && i#1 < Seq#Length(Lit(s#0))
             ==> (if $Unbox(Seq#Index(Lit(s#0), i#1)): char == Lit(char#FromInt(42))
               then false
               else $Unbox(Seq#Index(Lit(s#0), i#1)): char == Lit(char#FromInt(97))
                 || $Unbox(Seq#Index(Lit(s#0), i#1)): char == Lit(char#FromInt(98)))));
}

function _module.__default.Quant2#canCall(s#0: Seq) : bool;

function _module.__default.Quant2#requires(Seq) : bool;

// #requires axiom for _module.__default.Quant2
axiom (forall s#0: Seq :: 
  { _module.__default.Quant2#requires(s#0) } 
  $Is(s#0, TSeq(TChar)) ==> _module.__default.Quant2#requires(s#0) == true);

procedure {:verboseName "Quant2 (well-formedness)"} CheckWellformed$$_module.__default.Quant2(s#0: Seq where $Is(s#0, TSeq(TChar)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Quant2 (well-formedness)"} CheckWellformed$$_module.__default.Quant2(s#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#2: int;


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
        // Begin Comprehension WF check
        havoc i#2;
        if (true)
        {
            if (LitInt(0) <= i#2)
            {
            }

            if (LitInt(0) <= i#2 && i#2 < Seq#Length(s#0))
            {
                assert {:id "id176"} 0 <= i#2 && i#2 < Seq#Length(s#0);
                if ($Unbox(Seq#Index(s#0, i#2)): char == Lit(char#FromInt(42)))
                {
                }
                else
                {
                    assert {:id "id177"} 0 <= i#2 && i#2 < Seq#Length(s#0);
                    if ($Unbox(Seq#Index(s#0, i#2)): char != Lit(char#FromInt(97)))
                    {
                        assert {:id "id178"} 0 <= i#2 && i#2 < Seq#Length(s#0);
                    }
                }
            }
        }

        // End Comprehension WF check
        assume {:id "id179"} _module.__default.Quant2(s#0)
           == (forall i#3: int :: 
            { $Unbox(Seq#Index(s#0, i#3)): char } 
            LitInt(0) <= i#3 && i#3 < Seq#Length(s#0)
               ==> (if $Unbox(Seq#Index(s#0, i#3)): char == Lit(char#FromInt(42))
                 then false
                 else $Unbox(Seq#Index(s#0, i#3)): char == Lit(char#FromInt(97))
                   || $Unbox(Seq#Index(s#0, i#3)): char == Lit(char#FromInt(98))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Quant2(s#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Quant3
function _module.__default.Quant3(f#0: HandleType, g#0: HandleType) : bool
uses {
// definition axiom for _module.__default.Quant3 (revealed)
axiom {:id "id180"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, f#0: HandleType, g#0: HandleType :: 
    { _module.__default.Quant3(f#0, g#0), $IsGoodHeap($Heap) } 
    _module.__default.Quant3#canCall(f#0, g#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
           && $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> _module.__default.Quant3(f#0, g#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(x#0))): int } 
            { $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(x#0))): int } 
          $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(x#0))): int
             == $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(x#0))): int));
// definition axiom for _module.__default.Quant3 for all literals (revealed)
axiom {:id "id181"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, f#0: HandleType, g#0: HandleType :: 
    {:weight 3} { _module.__default.Quant3(Lit(f#0), Lit(g#0)), $IsGoodHeap($Heap) } 
    _module.__default.Quant3#canCall(Lit(f#0), Lit(g#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
           && $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> _module.__default.Quant3(Lit(f#0), Lit(g#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(x#1))): int } 
            { $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(x#1))): int } 
          $Unbox(Apply1(TInt, TInt, $Heap, Lit(f#0), $Box(x#1))): int
             == $Unbox(Apply1(TInt, TInt, $Heap, Lit(g#0), $Box(x#1))): int));
}

function _module.__default.Quant3#canCall(f#0: HandleType, g#0: HandleType) : bool;

function _module.__default.Quant3#requires(HandleType, HandleType) : bool;

// #requires axiom for _module.__default.Quant3
axiom (forall $Heap: Heap, f#0: HandleType, g#0: HandleType :: 
  { _module.__default.Quant3#requires(f#0, g#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
       && $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt))
     ==> _module.__default.Quant3#requires(f#0, g#0) == true);

procedure {:verboseName "Quant3 (well-formedness)"} CheckWellformed$$_module.__default.Quant3(f#0: HandleType where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt)), 
    g#0: HandleType where $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Quant4
function _module.__default.Quant4(f#0: HandleType, g#0: HandleType) : bool
uses {
// definition axiom for _module.__default.Quant4 (revealed)
axiom {:id "id183"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, f#0: HandleType, g#0: HandleType :: 
    { _module.__default.Quant4(f#0, g#0), $IsGoodHeap($Heap) } 
    _module.__default.Quant4#canCall(f#0, g#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
           && $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> _module.__default.Quant4(f#0, g#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(x#0))): int } 
            { $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(x#0))): int } 
          $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(x#0))): int
             == $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(x#0))): int));
// definition axiom for _module.__default.Quant4 for all literals (revealed)
axiom {:id "id184"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, f#0: HandleType, g#0: HandleType :: 
    {:weight 3} { _module.__default.Quant4(Lit(f#0), Lit(g#0)), $IsGoodHeap($Heap) } 
    _module.__default.Quant4#canCall(Lit(f#0), Lit(g#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
           && $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> _module.__default.Quant4(Lit(f#0), Lit(g#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(x#1))): int } 
            { $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(x#1))): int } 
          $Unbox(Apply1(TInt, TInt, $Heap, Lit(f#0), $Box(x#1))): int
             == $Unbox(Apply1(TInt, TInt, $Heap, Lit(g#0), $Box(x#1))): int));
}

function _module.__default.Quant4#canCall(f#0: HandleType, g#0: HandleType) : bool;

function _module.__default.Quant4#requires(HandleType, HandleType) : bool;

// #requires axiom for _module.__default.Quant4
axiom (forall $Heap: Heap, f#0: HandleType, g#0: HandleType :: 
  { _module.__default.Quant4#requires(f#0, g#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
       && $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt))
     ==> _module.__default.Quant4#requires(f#0, g#0) == true);

procedure {:verboseName "Quant4 (well-formedness)"} CheckWellformed$$_module.__default.Quant4(f#0: HandleType where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt)), 
    g#0: HandleType where $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Quant5
function _module.__default.Quant5(f#0: HandleType, g#0: HandleType) : bool
uses {
// definition axiom for _module.__default.Quant5 (revealed)
axiom {:id "id186"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, f#0: HandleType, g#0: HandleType :: 
    { _module.__default.Quant5(f#0, g#0), $IsGoodHeap($Heap) } 
    _module.__default.Quant5#canCall(f#0, g#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
           && $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> _module.__default.Quant5(f#0, g#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(x#0))): int } 
            { $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(x#0))): int } 
          $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(x#0))): int
             == $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(x#0))): int));
// definition axiom for _module.__default.Quant5 for all literals (revealed)
axiom {:id "id187"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, f#0: HandleType, g#0: HandleType :: 
    {:weight 3} { _module.__default.Quant5(Lit(f#0), Lit(g#0)), $IsGoodHeap($Heap) } 
    _module.__default.Quant5#canCall(Lit(f#0), Lit(g#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
           && $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt)))
       ==> _module.__default.Quant5(Lit(f#0), Lit(g#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TInt, $Heap, g#0, $Box(x#1))): int } 
            { $Unbox(Apply1(TInt, TInt, $Heap, f#0, $Box(x#1))): int } 
          $Unbox(Apply1(TInt, TInt, $Heap, Lit(f#0), $Box(x#1))): int
             == $Unbox(Apply1(TInt, TInt, $Heap, Lit(g#0), $Box(x#1))): int));
}

function _module.__default.Quant5#canCall(f#0: HandleType, g#0: HandleType) : bool;

function _module.__default.Quant5#requires(HandleType, HandleType) : bool;

// #requires axiom for _module.__default.Quant5
axiom (forall $Heap: Heap, f#0: HandleType, g#0: HandleType :: 
  { _module.__default.Quant5#requires(f#0, g#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
       && $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt))
     ==> _module.__default.Quant5#requires(f#0, g#0) == true);

procedure {:verboseName "Quant5 (well-formedness)"} CheckWellformed$$_module.__default.Quant5(f#0: HandleType where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt)), 
    g#0: HandleType where $Is(g#0, Tclass._System.___hTotalFunc1(TInt, TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.If0
function _module.__default.If0(s#0: Seq) : int
uses {
// definition axiom for _module.__default.If0 (revealed)
axiom {:id "id189"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    { _module.__default.If0(s#0) } 
    _module.__default.If0#canCall(s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.If0(s#0)
         == (if Seq#Length(s#0) == LitInt(3)
           then 2
           else 3 + Mul(LitInt(2), Seq#Length(s#0))));
// definition axiom for _module.__default.If0 for all literals (revealed)
axiom {:id "id190"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    {:weight 3} { _module.__default.If0(Lit(s#0)) } 
    _module.__default.If0#canCall(Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.If0(Lit(s#0))
         == (if Seq#Length(Lit(s#0)) == LitInt(3)
           then 2
           else 3 + Mul(LitInt(2), Seq#Length(Lit(s#0)))));
}

function _module.__default.If0#canCall(s#0: Seq) : bool;

function _module.__default.If0#requires(Seq) : bool;

// #requires axiom for _module.__default.If0
axiom (forall s#0: Seq :: 
  { _module.__default.If0#requires(s#0) } 
  $Is(s#0, TSeq(TChar)) ==> _module.__default.If0#requires(s#0) == true);

procedure {:verboseName "If0 (well-formedness)"} CheckWellformed$$_module.__default.If0(s#0: Seq where $Is(s#0, TSeq(TChar)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.If1
function _module.__default.If1(s#0: Seq) : int
uses {
// definition axiom for _module.__default.If1 (revealed)
axiom {:id "id193"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    { _module.__default.If1(s#0) } 
    _module.__default.If1#canCall(s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.If1(s#0)
         == (if Seq#Length(s#0) == LitInt(3)
           then 2
           else 3 + Mul(LitInt(2), Seq#Length(s#0))));
// definition axiom for _module.__default.If1 for all literals (revealed)
axiom {:id "id194"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    {:weight 3} { _module.__default.If1(Lit(s#0)) } 
    _module.__default.If1#canCall(Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.If1(Lit(s#0))
         == (if Seq#Length(Lit(s#0)) == LitInt(3)
           then 2
           else 3 + Mul(LitInt(2), Seq#Length(Lit(s#0)))));
}

function _module.__default.If1#canCall(s#0: Seq) : bool;

function _module.__default.If1#requires(Seq) : bool;

// #requires axiom for _module.__default.If1
axiom (forall s#0: Seq :: 
  { _module.__default.If1#requires(s#0) } 
  $Is(s#0, TSeq(TChar)) ==> _module.__default.If1#requires(s#0) == true);

procedure {:verboseName "If1 (well-formedness)"} CheckWellformed$$_module.__default.If1(s#0: Seq where $Is(s#0, TSeq(TChar)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.If2
function _module.__default.If2(s#0: Seq) : int
uses {
// definition axiom for _module.__default.If2 (revealed)
axiom {:id "id197"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    { _module.__default.If2(s#0) } 
    _module.__default.If2#canCall(s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.If2(s#0)
         == (if Seq#Length(s#0) == LitInt(3)
           then 2
           else 3 + Mul(LitInt(2), Seq#Length(s#0))));
// definition axiom for _module.__default.If2 for all literals (revealed)
axiom {:id "id198"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    {:weight 3} { _module.__default.If2(Lit(s#0)) } 
    _module.__default.If2#canCall(Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.If2(Lit(s#0))
         == (if Seq#Length(Lit(s#0)) == LitInt(3)
           then 2
           else 3 + Mul(LitInt(2), Seq#Length(Lit(s#0)))));
}

function _module.__default.If2#canCall(s#0: Seq) : bool;

function _module.__default.If2#requires(Seq) : bool;

// #requires axiom for _module.__default.If2
axiom (forall s#0: Seq :: 
  { _module.__default.If2#requires(s#0) } 
  $Is(s#0, TSeq(TChar)) ==> _module.__default.If2#requires(s#0) == true);

procedure {:verboseName "If2 (well-formedness)"} CheckWellformed$$_module.__default.If2(s#0: Seq where $Is(s#0, TSeq(TChar)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.If3
function _module.__default.If3(s#0: Seq) : int
uses {
// definition axiom for _module.__default.If3 (revealed)
axiom {:id "id201"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    { _module.__default.If3(s#0) } 
    _module.__default.If3#canCall(s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.If3(s#0)
         == (if Seq#Length(s#0) == LitInt(3)
           then 2
           else 3 + Mul(LitInt(2), Seq#Length(s#0))));
// definition axiom for _module.__default.If3 for all literals (revealed)
axiom {:id "id202"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    {:weight 3} { _module.__default.If3(Lit(s#0)) } 
    _module.__default.If3#canCall(Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TChar)))
       ==> _module.__default.If3(Lit(s#0))
         == (if Seq#Length(Lit(s#0)) == LitInt(3)
           then 2
           else 3 + Mul(LitInt(2), Seq#Length(Lit(s#0)))));
}

function _module.__default.If3#canCall(s#0: Seq) : bool;

function _module.__default.If3#requires(Seq) : bool;

// #requires axiom for _module.__default.If3
axiom (forall s#0: Seq :: 
  { _module.__default.If3#requires(s#0) } 
  $Is(s#0, TSeq(TChar)) ==> _module.__default.If3#requires(s#0) == true);

procedure {:verboseName "If3 (well-formedness)"} CheckWellformed$$_module.__default.If3(s#0: Seq where $Is(s#0, TSeq(TChar)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Waterfall
function _module.__default.Waterfall(A#0: bool, B#0: bool, C#0: bool, D#0: bool, E#0: bool) : bool
uses {
// definition axiom for _module.__default.Waterfall (revealed)
axiom {:id "id205"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool, E#0: bool :: 
    { _module.__default.Waterfall(A#0, B#0, C#0, D#0, E#0) } 
    _module.__default.Waterfall#canCall(A#0, B#0, C#0, D#0, E#0)
         || 0 < $FunctionContextHeight
       ==> _module.__default.Waterfall(A#0, B#0, C#0, D#0, E#0)
         == (A#0 ==> B#0 ==> C#0 ==> D#0 ==> E#0));
// definition axiom for _module.__default.Waterfall for all literals (revealed)
axiom {:id "id206"} 0 <= $FunctionContextHeight
   ==> (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool, E#0: bool :: 
    {:weight 3} { _module.__default.Waterfall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0), Lit(E#0)) } 
    _module.__default.Waterfall#canCall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0), Lit(E#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.Waterfall(Lit(A#0), Lit(B#0), Lit(C#0), Lit(D#0), Lit(E#0))
         == Lit(A#0 ==> B#0 ==> C#0 ==> D#0 ==> E#0));
}

function _module.__default.Waterfall#canCall(A#0: bool, B#0: bool, C#0: bool, D#0: bool, E#0: bool) : bool;

function _module.__default.Waterfall#requires(bool, bool, bool, bool, bool) : bool;

// #requires axiom for _module.__default.Waterfall
axiom (forall A#0: bool, B#0: bool, C#0: bool, D#0: bool, E#0: bool :: 
  { _module.__default.Waterfall#requires(A#0, B#0, C#0, D#0, E#0) } 
  _module.__default.Waterfall#requires(A#0, B#0, C#0, D#0, E#0) == true);

procedure {:verboseName "Waterfall (well-formedness)"} CheckWellformed$$_module.__default.Waterfall(A#0: bool, B#0: bool, C#0: bool, D#0: bool, E#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.MoreOps0
function _module.__default.MoreOps0(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.MoreOps0 (revealed)
axiom {:id "id208"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.MoreOps0(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.MoreOps0#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.MoreOps0(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool
             ==> $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool));
// definition axiom for _module.__default.MoreOps0 for all literals (revealed)
axiom {:id "id209"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.MoreOps0(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.MoreOps0#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.MoreOps0(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool
             ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool));
}

function _module.__default.MoreOps0#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.MoreOps0#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.MoreOps0
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.MoreOps0#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.MoreOps0#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "MoreOps0 (well-formedness)"} CheckWellformed$$_module.__default.MoreOps0(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.MoreOps1
function _module.__default.MoreOps1(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.MoreOps1 (revealed)
axiom {:id "id211"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.MoreOps1(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.MoreOps1#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.MoreOps1(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
             <==> $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.MoreOps1 for all literals (revealed)
axiom {:id "id212"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.MoreOps1(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.MoreOps1#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.MoreOps1(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
             <==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.MoreOps1#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.MoreOps1#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.MoreOps1
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.MoreOps1#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.MoreOps1#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "MoreOps1 (well-formedness)"} CheckWellformed$$_module.__default.MoreOps1(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.MoreOps2
function _module.__default.MoreOps2(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.MoreOps2 (revealed)
axiom {:id "id214"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.MoreOps2(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.MoreOps2#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.MoreOps2(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool
             <==> $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.MoreOps2 for all literals (revealed)
axiom {:id "id215"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.MoreOps2(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.MoreOps2#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.MoreOps2(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool
             <==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.MoreOps2#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.MoreOps2#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.MoreOps2
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.MoreOps2#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.MoreOps2#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "MoreOps2 (well-formedness)"} CheckWellformed$$_module.__default.MoreOps2(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.MoreOps3
function _module.__default.MoreOps3(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.MoreOps3 (revealed)
axiom {:id "id217"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.MoreOps3(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.MoreOps3#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.MoreOps3(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool
             <==> $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool));
// definition axiom for _module.__default.MoreOps3 for all literals (revealed)
axiom {:id "id218"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.MoreOps3(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.MoreOps3#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.MoreOps3(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool
             <==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool
               ==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool));
}

function _module.__default.MoreOps3#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.MoreOps3#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.MoreOps3
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.MoreOps3#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.MoreOps3#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "MoreOps3 (well-formedness)"} CheckWellformed$$_module.__default.MoreOps3(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.MoreOps4
function _module.__default.MoreOps4(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool
uses {
// definition axiom for _module.__default.MoreOps4 (revealed)
axiom {:id "id220"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    { _module.__default.MoreOps4(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
    _module.__default.MoreOps4#canCall(P#0, Q#0, R#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.MoreOps4(P#0, Q#0, R#0)
         == (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
             <==> $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#0))): bool
               && $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#0))): bool));
// definition axiom for _module.__default.MoreOps4 for all literals (revealed)
axiom {:id "id221"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
    {:weight 3} { _module.__default.MoreOps4(Lit(P#0), Lit(Q#0), Lit(R#0)), $IsGoodHeap($Heap) } 
    _module.__default.MoreOps4#canCall(Lit(P#0), Lit(Q#0), Lit(R#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
           && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> _module.__default.MoreOps4(Lit(P#0), Lit(Q#0), Lit(R#0))
         == (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, R#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, Q#0, $Box(x#1))): bool } 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#1))): bool
             <==> $Unbox(Apply1(TInt, TBool, $Heap, Lit(Q#0), $Box(x#1))): bool
               && $Unbox(Apply1(TInt, TBool, $Heap, Lit(R#0), $Box(x#1))): bool));
}

function _module.__default.MoreOps4#canCall(P#0: HandleType, Q#0: HandleType, R#0: HandleType) : bool;

function _module.__default.MoreOps4#requires(HandleType, HandleType, HandleType) : bool;

// #requires axiom for _module.__default.MoreOps4
axiom (forall $Heap: Heap, P#0: HandleType, Q#0: HandleType, R#0: HandleType :: 
  { _module.__default.MoreOps4#requires(P#0, Q#0, R#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool))
       && $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.MoreOps4#requires(P#0, Q#0, R#0) == true);

procedure {:verboseName "MoreOps4 (well-formedness)"} CheckWellformed$$_module.__default.MoreOps4(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    Q#0: HandleType where $Is(Q#0, Tclass._System.___hTotalFunc1(TInt, TBool)), 
    R#0: HandleType where $Is(R#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IntLemma (well-formedness)"} CheckWellFormed$$_module.__default.IntLemma(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IntLemma (call)"} Call$$_module.__default.IntLemma(x#0: int);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for _module._default.StmtExpr0
function _module.__default.StmtExpr0(x#0: int) : int
uses {
// definition axiom for _module.__default.StmtExpr0 (revealed)
axiom {:id "id223"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.StmtExpr0(x#0) } 
    _module.__default.StmtExpr0#canCall(x#0) || 1 < $FunctionContextHeight
       ==> _module.__default.StmtExpr0(x#0) == (if x#0 == LitInt(17) then 2 else 3));
// definition axiom for _module.__default.StmtExpr0 for all literals (revealed)
axiom {:id "id224"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.StmtExpr0(LitInt(x#0)) } 
    _module.__default.StmtExpr0#canCall(LitInt(x#0)) || 1 < $FunctionContextHeight
       ==> _module.__default.StmtExpr0(LitInt(x#0))
         == (if LitInt(x#0) == LitInt(17) then 2 else 3));
}

function _module.__default.StmtExpr0#canCall(x#0: int) : bool;

function _module.__default.StmtExpr0#requires(int) : bool;

// #requires axiom for _module.__default.StmtExpr0
axiom (forall x#0: int :: 
  { _module.__default.StmtExpr0#requires(x#0) } 
  _module.__default.StmtExpr0#requires(x#0) == true);

procedure {:verboseName "StmtExpr0 (well-formedness)"} CheckWellformed$$_module.__default.StmtExpr0(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StmtExpr0 (well-formedness)"} CheckWellformed$$_module.__default.StmtExpr0(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var x##0: int;


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
        if (x#0 == LitInt(17))
        {
            assume {:id "id225"} _module.__default.StmtExpr0(x#0) == LitInt(2);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.StmtExpr0(x#0), TInt);
            return;
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(344,13)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0 := x#0;
            call {:id "id226"} Call$$_module.__default.IntLemma(x##0);
            // TrCallStmt: After ProcessCallStmt
            assume {:id "id227"} _module.__default.StmtExpr0(x#0) == LitInt(3);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.StmtExpr0(x#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.StmtExpr1
function _module.__default.StmtExpr1(x#0: int) : int
uses {
// definition axiom for _module.__default.StmtExpr1 (revealed)
axiom {:id "id228"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.StmtExpr1(x#0) } 
    _module.__default.StmtExpr1#canCall(x#0) || 1 < $FunctionContextHeight
       ==> _module.__default.StmtExpr1(x#0) == (if x#0 == LitInt(17) then 2 else 3));
// definition axiom for _module.__default.StmtExpr1 for all literals (revealed)
axiom {:id "id229"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.StmtExpr1(LitInt(x#0)) } 
    _module.__default.StmtExpr1#canCall(LitInt(x#0)) || 1 < $FunctionContextHeight
       ==> _module.__default.StmtExpr1(LitInt(x#0))
         == (if LitInt(x#0) == LitInt(17) then 2 else 3));
}

function _module.__default.StmtExpr1#canCall(x#0: int) : bool;

function _module.__default.StmtExpr1#requires(int) : bool;

// #requires axiom for _module.__default.StmtExpr1
axiom (forall x#0: int :: 
  { _module.__default.StmtExpr1#requires(x#0) } 
  _module.__default.StmtExpr1#requires(x#0) == true);

procedure {:verboseName "StmtExpr1 (well-formedness)"} CheckWellformed$$_module.__default.StmtExpr1(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StmtExpr1 (well-formedness)"} CheckWellformed$$_module.__default.StmtExpr1(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var x##0: int;


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
        if (x#0 == LitInt(17))
        {
            assume {:id "id230"} _module.__default.StmtExpr1(x#0) == LitInt(2);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.StmtExpr1(x#0), TInt);
            return;
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(352,14)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0 := x#0;
            call {:id "id231"} Call$$_module.__default.IntLemma(x##0);
            // TrCallStmt: After ProcessCallStmt
            assume {:id "id232"} _module.__default.StmtExpr1(x#0) == LitInt(3);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.StmtExpr1(x#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.StmtExpr2
function _module.__default.StmtExpr2(x#0: int) : int
uses {
// definition axiom for _module.__default.StmtExpr2 (revealed)
axiom {:id "id233"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.StmtExpr2(x#0) } 
    _module.__default.StmtExpr2#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.StmtExpr2(x#0) == (if x#0 == LitInt(17) then 2 else 3));
// definition axiom for _module.__default.StmtExpr2 for all literals (revealed)
axiom {:id "id234"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.StmtExpr2(LitInt(x#0)) } 
    _module.__default.StmtExpr2#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.StmtExpr2(LitInt(x#0))
         == (if LitInt(x#0) == LitInt(17) then 2 else 3));
}

function _module.__default.StmtExpr2#canCall(x#0: int) : bool;

function _module.__default.StmtExpr2#requires(int) : bool;

// #requires axiom for _module.__default.StmtExpr2
axiom (forall x#0: int :: 
  { _module.__default.StmtExpr2#requires(x#0) } 
  _module.__default.StmtExpr2#requires(x#0) == true);

procedure {:verboseName "StmtExpr2 (well-formedness)"} CheckWellformed$$_module.__default.StmtExpr2(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StmtExpr2 (well-formedness)"} CheckWellformed$$_module.__default.StmtExpr2(x#0: int)
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
        if (x#0 == LitInt(17))
        {
            assume {:id "id235"} _module.__default.StmtExpr2(x#0) == LitInt(2);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.StmtExpr2(x#0), TInt);
            return;
        }
        else
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(360,5)
            assume true;
            assert {:id "id236"} x#0 != 17;
            assume {:id "id237"} _module.__default.StmtExpr2(x#0) == LitInt(3);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.StmtExpr2(x#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.StmtExpr3
function _module.__default.StmtExpr3(x#0: int) : int
uses {
// definition axiom for _module.__default.StmtExpr3 (revealed)
axiom {:id "id238"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.StmtExpr3(x#0) } 
    _module.__default.StmtExpr3#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.StmtExpr3(x#0) == (if x#0 == LitInt(17) then 2 else 3));
// definition axiom for _module.__default.StmtExpr3 for all literals (revealed)
axiom {:id "id239"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.StmtExpr3(LitInt(x#0)) } 
    _module.__default.StmtExpr3#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.StmtExpr3(LitInt(x#0))
         == (if LitInt(x#0) == LitInt(17) then 2 else 3));
}

function _module.__default.StmtExpr3#canCall(x#0: int) : bool;

function _module.__default.StmtExpr3#requires(int) : bool;

// #requires axiom for _module.__default.StmtExpr3
axiom (forall x#0: int :: 
  { _module.__default.StmtExpr3#requires(x#0) } 
  _module.__default.StmtExpr3#requires(x#0) == true);

procedure {:verboseName "StmtExpr3 (well-formedness)"} CheckWellformed$$_module.__default.StmtExpr3(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StmtExpr3 (well-formedness)"} CheckWellformed$$_module.__default.StmtExpr3(x#0: int)
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
        if (x#0 == LitInt(17))
        {
            assume {:id "id240"} _module.__default.StmtExpr3(x#0) == LitInt(2);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.StmtExpr3(x#0), TInt);
            return;
        }
        else
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(368,6)
            assume true;
            assert {:id "id241"} x#0 != 17;
            assume {:id "id242"} _module.__default.StmtExpr3(x#0) == LitInt(3);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.StmtExpr3(x#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.FunctionWithDefaultParameterValue
function _module.__default.FunctionWithDefaultParameterValue(x#0: int, y#0: int) : int;

function _module.__default.FunctionWithDefaultParameterValue#canCall(x#0: int, y#0: int) : bool;

function _module.__default.FunctionWithDefaultParameterValue#requires(int, int) : bool;

// #requires axiom for _module.__default.FunctionWithDefaultParameterValue
axiom (forall x#0: int, y#0: int :: 
  { _module.__default.FunctionWithDefaultParameterValue#requires(x#0, y#0) } 
  _module.__default.FunctionWithDefaultParameterValue#requires(x#0, y#0) == true);

procedure {:verboseName "FunctionWithDefaultParameterValue (well-formedness)"} CheckWellformed$$_module.__default.FunctionWithDefaultParameterValue(x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.UseDefaultValues
function _module.__default.UseDefaultValues(x#0: int) : int
uses {
// definition axiom for _module.__default.UseDefaultValues (revealed)
axiom {:id "id243"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.UseDefaultValues(x#0) } 
    _module.__default.UseDefaultValues#canCall(x#0) || 1 < $FunctionContextHeight
       ==> (LitInt(0) < x#0
           ==> _module.__default.FunctionWithDefaultParameterValue#canCall(x#0 - 1, LitInt(100)))
         && _module.__default.UseDefaultValues(x#0)
           == (if x#0 <= LitInt(0)
             then 0
             else _module.__default.FunctionWithDefaultParameterValue(x#0 - 1, LitInt(100))));
// definition axiom for _module.__default.UseDefaultValues for all literals (revealed)
axiom {:id "id244"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.UseDefaultValues(LitInt(x#0)) } 
    _module.__default.UseDefaultValues#canCall(LitInt(x#0))
         || 1 < $FunctionContextHeight
       ==> (LitInt(0) < LitInt(x#0)
           ==> _module.__default.FunctionWithDefaultParameterValue#canCall(LitInt(x#0 - 1), LitInt(100)))
         && _module.__default.UseDefaultValues(LitInt(x#0))
           == (if LitInt(x#0) <= LitInt(0)
             then 0
             else _module.__default.FunctionWithDefaultParameterValue(LitInt(x#0 - 1), LitInt(100))));
}

function _module.__default.UseDefaultValues#canCall(x#0: int) : bool;

function _module.__default.UseDefaultValues#requires(int) : bool;

// #requires axiom for _module.__default.UseDefaultValues
axiom (forall x#0: int :: 
  { _module.__default.UseDefaultValues#requires(x#0) } 
  _module.__default.UseDefaultValues#requires(x#0) == true);

procedure {:verboseName "UseDefaultValues (well-formedness)"} CheckWellformed$$_module.__default.UseDefaultValues(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Square
function _module.__default.Square(x#0: int) : int
uses {
// definition axiom for _module.__default.Square (revealed)
axiom {:id "id247"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.Square(x#0) } 
    _module.__default.Square#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Square(x#0) == Mul(x#0, x#0));
// definition axiom for _module.__default.Square for all literals (revealed)
axiom {:id "id248"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.Square(LitInt(x#0)) } 
    _module.__default.Square#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.Square(LitInt(x#0)) == LitInt(Mul(LitInt(x#0), LitInt(x#0))));
}

function _module.__default.Square#canCall(x#0: int) : bool;

function _module.__default.Square#requires(int) : bool;

// #requires axiom for _module.__default.Square
axiom (forall x#0: int :: 
  { _module.__default.Square#requires(x#0) } 
  _module.__default.Square#requires(x#0) == true);

procedure {:verboseName "Square (well-formedness)"} CheckWellformed$$_module.__default.Square(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Let0
function _module.__default.Let0(lo#0: int, hi#0: int) : bool
uses {
// definition axiom for _module.__default.Let0 (revealed)
axiom {:id "id250"} 1 <= $FunctionContextHeight
   ==> (forall lo#0: int, hi#0: int :: 
    { _module.__default.Let0(lo#0, hi#0) } 
    _module.__default.Let0#canCall(lo#0, hi#0)
         || (1 < $FunctionContextHeight && lo#0 <= hi#0)
       ==> (forall x#0: int :: 
          { _module.__default.Square(x#0) } 
          lo#0 <= x#0 ==> x#0 < hi#0 ==> _module.__default.Square#canCall(x#0))
         && _module.__default.Let0(lo#0, hi#0)
           == (forall x#0: int :: 
            { _module.__default.Square(x#0) } 
            lo#0 <= x#0 && x#0 < hi#0
               ==> (var square#0 := _module.__default.Square(x#0); LitInt(0) <= square#0)));
// definition axiom for _module.__default.Let0 for all literals (revealed)
axiom {:id "id251"} 1 <= $FunctionContextHeight
   ==> (forall lo#0: int, hi#0: int :: 
    {:weight 3} { _module.__default.Let0(LitInt(lo#0), LitInt(hi#0)) } 
    _module.__default.Let0#canCall(LitInt(lo#0), LitInt(hi#0))
         || (1 < $FunctionContextHeight && LitInt(lo#0) <= LitInt(hi#0))
       ==> (forall x#1: int :: 
          { _module.__default.Square(x#1) } 
          LitInt(lo#0) <= x#1 ==> x#1 < hi#0 ==> _module.__default.Square#canCall(x#1))
         && _module.__default.Let0(LitInt(lo#0), LitInt(hi#0))
           == (forall x#1: int :: 
            { _module.__default.Square(x#1) } 
            LitInt(lo#0) <= x#1 && x#1 < hi#0
               ==> (var square#1 := _module.__default.Square(x#1); LitInt(0) <= square#1)));
}

function _module.__default.Let0#canCall(lo#0: int, hi#0: int) : bool;

function _module.__default.Let0#requires(int, int) : bool;

// #requires axiom for _module.__default.Let0
axiom (forall lo#0: int, hi#0: int :: 
  { _module.__default.Let0#requires(lo#0, hi#0) } 
  _module.__default.Let0#requires(lo#0, hi#0) == (lo#0 <= hi#0));

procedure {:verboseName "Let0 (well-formedness)"} CheckWellformed$$_module.__default.Let0(lo#0: int, hi#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Let1
function _module.__default.Let1(P#0: HandleType) : bool
uses {
// definition axiom for _module.__default.Let1 (revealed)
axiom {:id "id256"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType :: 
    { _module.__default.Let1(P#0), $IsGoodHeap($Heap) } 
    _module.__default.Let1#canCall(P#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> (forall x#0: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
          LitInt(0) <= x#0
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
             ==> $let#0$canCall(x#0))
         && _module.__default.Let1(P#0)
           == (forall x#0: int :: 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool } 
            LitInt(0) <= x#0 && $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#0))): bool
               ==> (var bigger#0 := $let#0_bigger(x#0); LitInt(0) <= bigger#0)));
// definition axiom for _module.__default.Let1 for all literals (revealed)
axiom {:id "id257"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, P#0: HandleType :: 
    {:weight 3} { _module.__default.Let1(Lit(P#0)), $IsGoodHeap($Heap) } 
    _module.__default.Let1#canCall(Lit(P#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)))
       ==> (forall x#2: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#2))): bool } 
          LitInt(0) <= x#2
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#2))): bool
             ==> $let#0$canCall(x#2))
         && _module.__default.Let1(Lit(P#0))
           == (forall x#2: int :: 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#2))): bool } 
            LitInt(0) <= x#2
                 && $Unbox(Apply1(TInt, TBool, $Heap, Lit(P#0), $Box(x#2))): bool
               ==> (var bigger#1 := $let#0_bigger(x#2); LitInt(0) <= bigger#1)));
}

function _module.__default.Let1#canCall(P#0: HandleType) : bool;

function _module.__default.Let1#requires(HandleType) : bool;

// #requires axiom for _module.__default.Let1
axiom (forall $Heap: Heap, P#0: HandleType :: 
  { _module.__default.Let1#requires(P#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
     ==> _module.__default.Let1#requires(P#0) == true);

function $let#0_bigger(x: int) : int;

function $let#0$canCall(x: int) : bool;

axiom (forall x: int :: 
  { $let#0_bigger(x) } 
  $let#0$canCall(x) ==> x <= $let#0_bigger(x));

procedure {:verboseName "Let1 (well-formedness)"} CheckWellformed$$_module.__default.Let1(P#0: HandleType where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Let1 (well-formedness)"} CheckWellformed$$_module.__default.Let1(P#0: HandleType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var x#3: int;
  var bigger#2: int;


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
        // Begin Comprehension WF check
        havoc x#3;
        if (true)
        {
            if (LitInt(0) <= x#3)
            {
            }

            if (LitInt(0) <= x#3 && $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#3))): bool)
            {
                havoc bigger#2;
                if (true)
                {
                }

                assert {:id "id258"} ($Is(x#3, TInt) && x#3 <= x#3)
                   || 
                  ($Is(LitInt(0), TInt) && x#3 <= LitInt(0))
                   || (exists bigger#3: int :: x#3 <= bigger#3);
                assume true;
                assume x#3 <= bigger#2;
                assume $let#0$canCall(x#3);
            }
        }

        // End Comprehension WF check
        assume {:id "id259"} _module.__default.Let1(P#0)
           == (forall x#1: int :: 
            { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
            LitInt(0) <= x#1 && $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool
               ==> (var bigger#4 := $let#0_bigger(x#1); LitInt(0) <= bigger#4));
        assume (forall x#1: int :: 
          { $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool } 
          LitInt(0) <= x#1
             ==> 
            $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box(x#1))): bool
             ==> $let#0$canCall(x#1));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Let1(P#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.SomeProperty
function _module.__default.SomeProperty(_module._default.SomeProperty$X: Ty, x#0: Box) : bool;

function _module.__default.SomeProperty#canCall(_module._default.SomeProperty$X: Ty, x#0: Box) : bool;

function _module.__default.SomeProperty#requires(Ty, Box) : bool;

// #requires axiom for _module.__default.SomeProperty
axiom (forall _module._default.SomeProperty$X: Ty, x#0: Box :: 
  { _module.__default.SomeProperty#requires(_module._default.SomeProperty$X, x#0) } 
  $IsBox(x#0, _module._default.SomeProperty$X)
     ==> _module.__default.SomeProperty#requires(_module._default.SomeProperty$X, x#0)
       == true);

procedure {:verboseName "SomeProperty (well-formedness)"} CheckWellformed$$_module.__default.SomeProperty(_module._default.SomeProperty$X: Ty, 
    x#0: Box where $IsBox(x#0, _module._default.SomeProperty$X));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Parentheses0 (well-formedness)"} CheckWellFormed$$_module.__default.Parentheses0(arr#0: ref
       where $Is(arr#0, Tclass._System.array(TInt))
         && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(TInt, TBool), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Parentheses0 (call)"} Call$$_module.__default.Parentheses0(arr#0: ref
       where $Is(arr#0, Tclass._System.array(TInt))
         && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(TInt, TBool), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Parentheses0 (correctness)"} Impl$$_module.__default.Parentheses0(arr#0: ref
       where $Is(arr#0, Tclass._System.array(TInt))
         && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hTotalFunc1(TInt, TBool))
         && $IsAlloc(P#0, Tclass._System.___hTotalFunc1(TInt, TBool), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Parentheses0 (correctness)"} Impl$$_module.__default.Parentheses0(arr#0: ref, P#0: HandleType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var x#0: bool;
  var i#3: int;
  var ##x#0: int;
  var y#0: bool;
  var i#5: int;
  var i#6: int;
  var ##x#1: int;
  var u#0: bool;

    // AddMethodImpl: Parentheses0, Impl$$_module.__default.Parentheses0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(399,3)
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (LitInt(0) <= i#0)
        {
            assert {:id "id260"} {:subsumption 0} arr#0 != null;
        }

        if (LitInt(0) <= i#0 && i#0 < _System.array.Length(arr#0))
        {
            assert {:id "id261"} arr#0 != null;
            assert {:id "id262"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array.Length(arr#0);
            assert {:id "id263"} arr#0 != null;
            assert {:id "id264"} $IsAlloc(arr#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id265"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array.Length(arr#0);
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id266"} (forall i#1: int :: 
      { $Unbox(read(old($Heap), arr#0, IndexField(i#1))): int } 
        { $Unbox(read($Heap, arr#0, IndexField(i#1))): int } 
      LitInt(0) <= i#1 && i#1 < _System.array.Length(arr#0)
         ==> $Unbox(read($Heap, arr#0, IndexField(i#1))): int
           == $Unbox(read(old($Heap), arr#0, IndexField(i#1))): int);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(401,9)
    assume true;
    // Begin Comprehension WF check
    havoc i#3;
    if (true)
    {
        if (LitInt(0) <= i#3)
        {
            assert {:id "id267"} arr#0 != null;
        }

        if (LitInt(0) <= i#3 && i#3 < _System.array.Length(arr#0))
        {
            assert {:id "id268"} arr#0 != null;
            assert {:id "id269"} 0 <= i#3 && i#3 < _System.array.Length(arr#0);
            ##x#0 := $Unbox(read($Heap, arr#0, IndexField(i#3))): int;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assume _module.__default.SomeProperty#canCall(TInt, read($Heap, arr#0, IndexField(i#3)));
        }
    }

    // End Comprehension WF check
    assume (forall i#2: int :: 
      { $Unbox(read($Heap, arr#0, IndexField(i#2))): int } 
      LitInt(0) <= i#2 && i#2 < _System.array.Length(arr#0)
         ==> _module.__default.SomeProperty#canCall(TInt, read($Heap, arr#0, IndexField(i#2))));
    x#0 := (forall i#2: int :: 
      { $Unbox(read($Heap, arr#0, IndexField(i#2))): int } 
      LitInt(0) <= i#2 && i#2 < _System.array.Length(arr#0)
         ==> _module.__default.SomeProperty(TInt, read($Heap, arr#0, IndexField(i#2))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(403,9)
    assume true;
    // Begin Comprehension WF check
    havoc i#5;
    if (true)
    {
        if (LitInt(0) <= i#5)
        {
            assert {:id "id271"} arr#0 != null;
        }

        if (LitInt(0) <= i#5 && i#5 < _System.array.Length(arr#0))
        {
            assert {:id "id272"} arr#0 != null;
            assert {:id "id273"} 0 <= i#5 && i#5 < _System.array.Length(arr#0);
        }
    }

    // End Comprehension WF check
    assume true;
    y#0 := (forall i#4: int :: 
      { $Unbox(read($Heap, arr#0, IndexField(i#4))): int } 
      LitInt(0) <= i#4 && i#4 < _System.array.Length(arr#0)
         ==> $Unbox(Apply1(TInt, TBool, $Heap, P#0, $Box($Unbox(read($Heap, arr#0, IndexField(i#4))): int))): bool);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(405,3)
    // Begin Comprehension WF check
    havoc i#6;
    if (true)
    {
        if (LitInt(0) <= i#6)
        {
            assert {:id "id275"} {:subsumption 0} arr#0 != null;
        }

        if (LitInt(0) <= i#6 && i#6 < _System.array.Length(arr#0))
        {
            ##x#1 := i#6;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1, TInt, $Heap);
            assume _module.__default.SomeProperty#canCall(TInt, $Box(i#6));
        }

        if (LitInt(0) <= i#6
           && i#6 < _System.array.Length(arr#0)
           && _module.__default.SomeProperty(TInt, $Box(i#6)))
        {
            assert {:id "id276"} $IsAlloc(arr#0, Tclass._System.array(TInt), old($Heap));
        }
    }

    // End Comprehension WF check
    assume (forall i#7: int :: 
      { _module.__default.SomeProperty(TInt, $Box(i#7)) } 
      LitInt(0) <= i#7 && i#7 < _System.array.Length(arr#0)
         ==> _module.__default.SomeProperty#canCall(TInt, $Box(i#7)));
    assert {:id "id277"} (forall i#7: int :: 
      { _module.__default.SomeProperty(TInt, $Box(i#7)) } 
      LitInt(0) <= i#7
           && i#7 < _System.array.Length(arr#0)
           && _module.__default.SomeProperty(TInt, $Box(i#7))
         ==> (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == arr#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(407,9)
    assume true;
    assert {:id "id278"} arr#0 != null;
    if (_System.array.Length(arr#0) == LitInt(3))
    {
    }
    else
    {
    }

    assume true;
    u#0 := (if _System.array.Length(arr#0) == LitInt(3)
       then true
       else arr#0 != null && !$Unbox(read(old($Heap), arr#0, alloc)): bool);
}



procedure {:verboseName "Parentheses1 (well-formedness)"} CheckWellFormed$$_module.__default.Parentheses1(w#0: bool, x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Parentheses1 (call)"} Call$$_module.__default.Parentheses1(w#0: bool, x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Parentheses1 (correctness)"} Impl$$_module.__default.Parentheses1(w#0: bool, x#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Parentheses2 (well-formedness)"} CheckWellFormed$$_module.__default.Parentheses2(w#0: bool, x#0: int, y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Parentheses2 (call)"} Call$$_module.__default.Parentheses2(w#0: bool, x#0: int, y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Parentheses2 (correctness)"} Impl$$_module.__default.Parentheses2(w#0: bool, x#0: int, y#0: int) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Record() : Ty
uses {
// Tclass._module.Record Tag
axiom Tag(Tclass._module.Record()) == Tagclass._module.Record
   && TagFamily(Tclass._module.Record()) == tytagFamily$Record;
}

const unique Tagclass._module.Record: TyTag;

// Box/unbox axiom for Tclass._module.Record
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Record()) } 
  $IsBox(bx, Tclass._module.Record())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Record()));

procedure {:verboseName "Parentheses3 (well-formedness)"} CheckWellFormed$$_module.__default.Parentheses3(w#0: bool, 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(TInt))
         && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(TInt))
         && $IsAlloc(m#0, Tclass._System.array2(TInt), $Heap), 
    i#0: int where LitInt(0) <= i#0, 
    j#0: int where LitInt(0) <= j#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Parentheses3 (well-formedness)"} CheckWellFormed$$_module.__default.Parentheses3(w#0: bool, arr#0: ref, m#0: ref, i#0: int, j#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Parentheses3, CheckWellFormed$$_module.__default.Parentheses3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (i#0 < j#0)
    {
        assert {:id "id292"} arr#0 != null;
    }

    if (i#0 < j#0 && j#0 < _System.array.Length(arr#0))
    {
        assert {:id "id293"} arr#0 != null;
        assert {:id "id294"} m#0 != null;
    }

    if (i#0 < j#0
       && j#0 < _System.array.Length(arr#0)
       && _System.array.Length(arr#0) <= _System.array2.Length0(m#0))
    {
        assert {:id "id295"} m#0 != null;
        assert {:id "id296"} m#0 != null;
    }

    assume {:id "id297"} i#0 < j#0
       && j#0 < _System.array.Length(arr#0)
       && _System.array.Length(arr#0) <= _System.array2.Length0(m#0)
       && _System.array2.Length0(m#0) <= _System.array2.Length1(m#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "Parentheses3 (call)"} Call$$_module.__default.Parentheses3(w#0: bool, 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(TInt))
         && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(TInt))
         && $IsAlloc(m#0, Tclass._System.array2(TInt), $Heap), 
    i#0: int where LitInt(0) <= i#0, 
    j#0: int where LitInt(0) <= j#0);
  // user-defined preconditions
  requires {:id "id298"} i#0 < j#0;
  requires {:id "id299"} j#0 < _System.array.Length(arr#0);
  requires {:id "id300"} _System.array.Length(arr#0) <= _System.array2.Length0(m#0);
  requires {:id "id301"} _System.array2.Length0(m#0) <= _System.array2.Length1(m#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Parentheses3 (correctness)"} Impl$$_module.__default.Parentheses3(w#0: bool, 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(TInt))
         && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(TInt))
         && $IsAlloc(m#0, Tclass._System.array2(TInt), $Heap), 
    i#0: int where LitInt(0) <= i#0, 
    j#0: int where LitInt(0) <= j#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id302"} i#0 < j#0;
  requires {:id "id303"} j#0 < _System.array.Length(arr#0);
  requires {:id "id304"} _System.array.Length(arr#0) <= _System.array2.Length0(m#0);
  requires {:id "id305"} _System.array2.Length0(m#0) <= _System.array2.Length1(m#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Parentheses3 (correctness)"} Impl$$_module.__default.Parentheses3(w#0: bool, arr#0: ref, m#0: ref, i#0: int, j#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap);
  var c#0: Seq where $Is(c#0, TSeq(TInt)) && $IsAlloc(c#0, TSeq(TInt), $Heap);
  var d#0: Seq where $Is(d#0, TSeq(TInt)) && $IsAlloc(d#0, TSeq(TInt), $Heap);
  var e#0: Seq where $Is(e#0, TSeq(TInt)) && $IsAlloc(e#0, TSeq(TInt), $Heap);
  var f#0: Seq where $Is(f#0, TSeq(TInt)) && $IsAlloc(f#0, TSeq(TInt), $Heap);
  var g#0: int;
  var h#0: Seq where $Is(h#0, TSeq(TInt)) && $IsAlloc(h#0, TSeq(TInt), $Heap);

    // AddMethodImpl: Parentheses3, Impl$$_module.__default.Parentheses3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(449,9)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id306"} arr#0 != null;
        assert {:id "id307"} 0 <= i#0 && i#0 < _System.array.Length(arr#0);
    }

    assume true;
    a#0 := (if w#0 then 0 else $Unbox(read($Heap, arr#0, IndexField(i#0))): int);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(452,9)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id309"} arr#0 != null;
        assert {:id "id310"} 0 <= i#0 && i#0 <= _System.array.Length(arr#0);
    }

    assume true;
    b#0 := (if w#0 then Seq#Empty(): Seq else Seq#Drop(Seq#FromArray($Heap, arr#0), i#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(454,9)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id312"} arr#0 != null;
        assert {:id "id313"} 0 <= i#0 && i#0 <= _System.array.Length(arr#0);
    }

    assume true;
    c#0 := (if w#0 then Seq#Empty(): Seq else Seq#Take(Seq#FromArray($Heap, arr#0), i#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(457,9)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id315"} arr#0 != null;
        assert {:id "id316"} 0 <= i#0 && i#0 <= _System.array.Length(arr#0);
        assert {:id "id317"} i#0 <= j#0 && j#0 <= _System.array.Length(arr#0);
    }

    assume true;
    d#0 := (if w#0
       then Seq#Empty(): Seq
       else Seq#Drop(Seq#Take(Seq#FromArray($Heap, arr#0), j#0), i#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(460,9)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id319"} arr#0 != null;
        assert {:id "id320"} 0 <= j#0 && j#0 <= _System.array.Length(arr#0);
        assert {:id "id321"} 0 <= i#0 && i#0 <= Seq#Length(Seq#Take(Seq#FromArray($Heap, arr#0), j#0));
    }

    assume true;
    e#0 := (if w#0
       then Seq#Empty(): Seq
       else Seq#Drop(Seq#Take(Seq#FromArray($Heap, arr#0), j#0), i#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(463,9)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id323"} arr#0 != null;
        assert {:id "id324"} 0 <= i#0 && i#0 <= _System.array.Length(arr#0);
        assert {:id "id325"} arr#0 != null;
        assert {:id "id326"} 0 <= i#0 && i#0 <= _System.array.Length(arr#0);
    }

    assume true;
    f#0 := (if w#0
       then Seq#Empty(): Seq
       else Seq#Append(Seq#Take(Seq#FromArray($Heap, arr#0), i#0), 
        Seq#Drop(Seq#FromArray($Heap, arr#0), i#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(465,9)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id328"} m#0 != null;
        assert {:id "id329"} 0 <= i#0 && i#0 < _System.array2.Length0(m#0);
        assert {:id "id330"} 0 <= j#0 && j#0 < _System.array2.Length1(m#0);
    }

    assume true;
    g#0 := (if w#0
       then 0
       else $Unbox(read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))): int);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(468,9)
    assume true;
    if (w#0)
    {
        assert {:id "id332"} arr#0 != null;
    }
    else
    {
        assert {:id "id333"} arr#0 != null;
        assert {:id "id334"} 0 <= j#0 && j#0 <= _System.array.Length(arr#0);
        assert {:id "id335"} 0 <= LitInt(0)
           && LitInt(0) < Seq#Length(Seq#Take(Seq#FromArray($Heap, arr#0), j#0));
    }

    assume true;
    h#0 := (if w#0
       then Seq#FromArray($Heap, arr#0)
       else Seq#Update(Seq#Take(Seq#FromArray($Heap, arr#0), j#0), LitInt(0), $Box(LitInt(25))));
}



function Tclass._module.Stream() : Ty
uses {
// Tclass._module.Stream Tag
axiom Tag(Tclass._module.Stream()) == Tagclass._module.Stream
   && TagFamily(Tclass._module.Stream()) == tytagFamily$Stream;
}

const unique Tagclass._module.Stream: TyTag;

// Box/unbox axiom for Tclass._module.Stream
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Stream()) } 
  $IsBox(bx, Tclass._module.Stream())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Stream()));

procedure {:verboseName "Parentheses4 (well-formedness)"} CheckWellFormed$$_module.__default.Parentheses4(w#0: bool, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream())
         && $IsAlloc(s#0, Tclass._module.Stream(), $Heap)
         && $IsA#_module.Stream(s#0), 
    t#0: DatatypeType
       where $Is(t#0, Tclass._module.Stream())
         && $IsAlloc(t#0, Tclass._module.Stream(), $Heap)
         && $IsA#_module.Stream(t#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Parentheses4 (call)"} Call$$_module.__default.Parentheses4(w#0: bool, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream())
         && $IsAlloc(s#0, Tclass._module.Stream(), $Heap)
         && $IsA#_module.Stream(s#0), 
    t#0: DatatypeType
       where $Is(t#0, Tclass._module.Stream())
         && $IsAlloc(t#0, Tclass._module.Stream(), $Heap)
         && $IsA#_module.Stream(t#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Parentheses4 (correctness)"} Impl$$_module.__default.Parentheses4(w#0: bool, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream())
         && $IsAlloc(s#0, Tclass._module.Stream(), $Heap)
         && $IsA#_module.Stream(s#0), 
    t#0: DatatypeType
       where $Is(t#0, Tclass._module.Stream())
         && $IsAlloc(t#0, Tclass._module.Stream(), $Heap)
         && $IsA#_module.Stream(t#0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Parentheses4 (correctness)"} Impl$$_module.__default.Parentheses4(w#0: bool, s#0: DatatypeType, t#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: bool;
  var b#0: bool;
  var c#0: bool;
  var d#0: bool;

    // AddMethodImpl: Parentheses4, Impl$$_module.__default.Parentheses4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(476,15)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id337"} 0 <= LitInt(12);
    }

    assume true;
    a#0 := (if w#0
       then true
       else $PrefixEq#_module.Stream(ORD#FromNat(LitInt(12)), $LS($LS($LZ)), s#0, t#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(478,15)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id339"} 0 <= LitInt(12);
    }

    assume true;
    b#0 := (if w#0
       then true
       else $PrefixEq#_module.Stream(ORD#FromNat(LitInt(12)), $LS($LS($LZ)), s#0, t#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(480,15)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id341"} 0 <= LitInt(12);
    }

    assume true;
    c#0 := (if w#0
       then true
       else !$PrefixEq#_module.Stream(ORD#FromNat(LitInt(12)), $LS($LS($LZ)), s#0, t#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/PrecedenceLinter.dfy(482,15)
    assume true;
    if (w#0)
    {
    }
    else
    {
        assert {:id "id343"} 0 <= LitInt(12);
    }

    assume true;
    d#0 := (if w#0
       then true
       else !$PrefixEq#_module.Stream(ORD#FromNat(LitInt(12)), $LS($LS($LZ)), s#0, t#0));
}



// function declaration for _module._default.ValidateAction
function _module.__default.ValidateAction(b#0: bool) : DatatypeType
uses {
// consequence axiom for _module.__default.ValidateAction
axiom 1 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    { _module.__default.ValidateAction(b#0) } 
    _module.__default.ValidateAction#canCall(b#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.ValidateAction(b#0), Tclass._module.Result()));
// definition axiom for _module.__default.ValidateAction (revealed)
axiom {:id "id345"} 1 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    { _module.__default.ValidateAction(b#0) } 
    _module.__default.ValidateAction#canCall(b#0) || 1 < $FunctionContextHeight
       ==> _module.__default.ValidateAction(b#0)
         == (if b#0
           then #_module.Result.Success()
           else #_module.Result.Failure(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                    $Box(char#FromInt(108))), 
                  $Box(char#FromInt(108))), 
                $Box(char#FromInt(111)))))));
// definition axiom for _module.__default.ValidateAction for all literals (revealed)
axiom {:id "id346"} 1 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    {:weight 3} { _module.__default.ValidateAction(Lit(b#0)) } 
    _module.__default.ValidateAction#canCall(Lit(b#0)) || 1 < $FunctionContextHeight
       ==> _module.__default.ValidateAction(Lit(b#0))
         == (if b#0
           then #_module.Result.Success()
           else #_module.Result.Failure(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                    $Box(char#FromInt(108))), 
                  $Box(char#FromInt(108))), 
                $Box(char#FromInt(111)))))));
}

function _module.__default.ValidateAction#canCall(b#0: bool) : bool;

function Tclass._module.Result() : Ty
uses {
// Tclass._module.Result Tag
axiom Tag(Tclass._module.Result()) == Tagclass._module.Result
   && TagFamily(Tclass._module.Result()) == tytagFamily$Result;
}

const unique Tagclass._module.Result: TyTag;

// Box/unbox axiom for Tclass._module.Result
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Result()) } 
  $IsBox(bx, Tclass._module.Result())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Result()));

function _module.__default.ValidateAction#requires(bool) : bool;

// #requires axiom for _module.__default.ValidateAction
axiom (forall b#0: bool :: 
  { _module.__default.ValidateAction#requires(b#0) } 
  _module.__default.ValidateAction#requires(b#0) == true);

procedure {:verboseName "ValidateAction (well-formedness)"} CheckWellformed$$_module.__default.ValidateAction(b#0: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #_module.Record.Record(int, int) : DatatypeType;

const unique ##_module.Record.Record: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int, a#0#1#0: int :: 
  { #_module.Record.Record(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_module.Record.Record(a#0#0#0, a#0#1#0))
     == ##_module.Record.Record);
}

function _module.Record.Record_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Record.Record_q(d) } 
  _module.Record.Record_q(d) <==> DatatypeCtorId(d) == ##_module.Record.Record);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Record.Record_q(d) } 
  _module.Record.Record_q(d)
     ==> (exists a#1#0#0: int, a#1#1#0: int :: 
      d == #_module.Record.Record(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall a#2#0#0: int, a#2#1#0: int :: 
  { $Is(#_module.Record.Record(a#2#0#0, a#2#1#0), Tclass._module.Record()) } 
  $Is(#_module.Record.Record(a#2#0#0, a#2#1#0), Tclass._module.Record())
     <==> $Is(a#2#0#0, TInt) && $Is(a#2#1#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Record.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Record.Record_q(d)
       && $IsAlloc(d, Tclass._module.Record(), $h)
     ==> $IsAlloc(_module.Record.x(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Record.y(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Record.Record_q(d)
       && $IsAlloc(d, Tclass._module.Record(), $h)
     ==> $IsAlloc(_module.Record.y(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: int, a#3#1#0: int :: 
  { #_module.Record.Record(LitInt(a#3#0#0), LitInt(a#3#1#0)) } 
  #_module.Record.Record(LitInt(a#3#0#0), LitInt(a#3#1#0))
     == Lit(#_module.Record.Record(a#3#0#0, a#3#1#0)));

function _module.Record.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int, a#4#1#0: int :: 
  { #_module.Record.Record(a#4#0#0, a#4#1#0) } 
  _module.Record.x(#_module.Record.Record(a#4#0#0, a#4#1#0)) == a#4#0#0);

function _module.Record.y(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#5#0#0: int, a#5#1#0: int :: 
  { #_module.Record.Record(a#5#0#0, a#5#1#0) } 
  _module.Record.y(#_module.Record.Record(a#5#0#0, a#5#1#0)) == a#5#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Record(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Record())
     ==> $IsAlloc(d, Tclass._module.Record(), $h));

// Depth-one case-split function
function $IsA#_module.Record(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Record(d) } 
  $IsA#_module.Record(d) ==> _module.Record.Record_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Record.Record_q(d), $Is(d, Tclass._module.Record()) } 
  $Is(d, Tclass._module.Record()) ==> _module.Record.Record_q(d));

// Datatype extensional equality declaration
function _module.Record#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Record.Record
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Record#Equal(a, b) } 
  _module.Record#Equal(a, b)
     <==> _module.Record.x(a) == _module.Record.x(b)
       && _module.Record.y(a) == _module.Record.y(b));

// Datatype extensionality axiom: _module.Record
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Record#Equal(a, b) } 
  _module.Record#Equal(a, b) <==> a == b);

const unique class._module.Record: ClassName;

// Constructor function declaration
function #_module.Stream.More(int, DatatypeType) : DatatypeType;

const unique ##_module.Stream.More: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: int, a#6#1#0: DatatypeType :: 
  { #_module.Stream.More(a#6#0#0, a#6#1#0) } 
  DatatypeCtorId(#_module.Stream.More(a#6#0#0, a#6#1#0)) == ##_module.Stream.More);
}

function _module.Stream.More_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.More_q(d) } 
  _module.Stream.More_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.More);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.More_q(d) } 
  _module.Stream.More_q(d)
     ==> (exists a#7#0#0: int, a#7#1#0: DatatypeType :: 
      d == #_module.Stream.More(a#7#0#0, a#7#1#0)));

// Constructor $Is
axiom (forall a#8#0#0: int, a#8#1#0: DatatypeType :: 
  { $Is(#_module.Stream.More(a#8#0#0, a#8#1#0), Tclass._module.Stream()) } 
  $Is(#_module.Stream.More(a#8#0#0, a#8#1#0), Tclass._module.Stream())
     <==> $Is(a#8#0#0, TInt) && $Is(a#8#1#0, Tclass._module.Stream()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Stream.head(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.More_q(d)
       && $IsAlloc(d, Tclass._module.Stream(), $h)
     ==> $IsAlloc(_module.Stream.head(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.More_q(d)
       && $IsAlloc(d, Tclass._module.Stream(), $h)
     ==> $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(), $h));

function _module.Stream.head(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#9#0#0: int, a#9#1#0: DatatypeType :: 
  { #_module.Stream.More(a#9#0#0, a#9#1#0) } 
  _module.Stream.head(#_module.Stream.More(a#9#0#0, a#9#1#0)) == a#9#0#0);

function _module.Stream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: int, a#10#1#0: DatatypeType :: 
  { #_module.Stream.More(a#10#0#0, a#10#1#0) } 
  _module.Stream.tail(#_module.Stream.More(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Stream(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Stream())
     ==> $IsAlloc(d, Tclass._module.Stream(), $h));

// Depth-one case-split function
function $IsA#_module.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Stream(d) } 
  $IsA#_module.Stream(d) ==> _module.Stream.More_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Stream.More_q(d), $Is(d, Tclass._module.Stream()) } 
  $Is(d, Tclass._module.Stream()) ==> _module.Stream.More_q(d));

function $Eq#_module.Stream(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Stream($LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream()) && $Is(d1, Tclass._module.Stream())
     ==> ($Eq#_module.Stream($LS(ly), d0, d1)
       <==> _module.Stream.More_q(d0)
         && _module.Stream.More_q(d1)
         && (_module.Stream.More_q(d0) && _module.Stream.More_q(d1)
           ==> _module.Stream.head(d0) == _module.Stream.head(d1)
             && $Eq#_module.Stream(ly, _module.Stream.tail(d0), _module.Stream.tail(d1)))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Stream($LS(ly), d0, d1) } 
  $Eq#_module.Stream($LS(ly), d0, d1) <==> $Eq#_module.Stream(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Stream($LS(ly), d0, d1) } 
  $Eq#_module.Stream($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#_module.Stream(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream()) && $Is(d1, Tclass._module.Stream())
     ==> ($PrefixEq#_module.Stream(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.Stream.More_q(d0)
             && _module.Stream.More_q(d1)
             && (_module.Stream.More_q(d0) && _module.Stream.More_q(d1)
               ==> _module.Stream.head(d0) == _module.Stream.head(d1)
                 && $PrefixEq#_module.Stream(ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.Stream.tail(d0), 
                  _module.Stream.tail(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k) ==> $Eq#_module.Stream(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Stream(k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Stream(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Stream($LS(ly), d0, d1) } 
  $Eq#_module.Stream($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Stream(k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Stream(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Stream($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Stream(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k ==> $PrefixEq#_module.Stream(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Stream($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#_module.Stream(k, $LS(ly), d0, d1), $PrefixEq#_module.Stream(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m) && $PrefixEq#_module.Stream(m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Stream(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#_module.Stream(k, $LS(ly), d0, d1));

const unique class._module.Stream: ClassName;

// Constructor function declaration
function #_module.Result.Success() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Result.Success()) == ##_module.Result.Success;
// Constructor $Is
axiom $Is(#_module.Result.Success(), Tclass._module.Result());
// Constructor literal
axiom #_module.Result.Success() == Lit(#_module.Result.Success());
}

const unique ##_module.Result.Success: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Result.Success()) == ##_module.Result.Success;
}

function _module.Result.Success_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Result.Success_q(d) } 
  _module.Result.Success_q(d) <==> DatatypeCtorId(d) == ##_module.Result.Success);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Result.Success_q(d) } 
  _module.Result.Success_q(d) ==> d == #_module.Result.Success());

// Constructor function declaration
function #_module.Result.Failure(Seq) : DatatypeType;

const unique ##_module.Result.Failure: DtCtorId
uses {
// Constructor identifier
axiom (forall a#15#0#0: Seq :: 
  { #_module.Result.Failure(a#15#0#0) } 
  DatatypeCtorId(#_module.Result.Failure(a#15#0#0)) == ##_module.Result.Failure);
}

function _module.Result.Failure_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Result.Failure_q(d) } 
  _module.Result.Failure_q(d) <==> DatatypeCtorId(d) == ##_module.Result.Failure);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Result.Failure_q(d) } 
  _module.Result.Failure_q(d)
     ==> (exists a#16#0#0: Seq :: d == #_module.Result.Failure(a#16#0#0)));

// Constructor $Is
axiom (forall a#17#0#0: Seq :: 
  { $Is(#_module.Result.Failure(a#17#0#0), Tclass._module.Result()) } 
  $Is(#_module.Result.Failure(a#17#0#0), Tclass._module.Result())
     <==> $Is(a#17#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Result.s(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Result.Failure_q(d)
       && $IsAlloc(d, Tclass._module.Result(), $h)
     ==> $IsAlloc(_module.Result.s(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#18#0#0: Seq :: 
  { #_module.Result.Failure(Lit(a#18#0#0)) } 
  #_module.Result.Failure(Lit(a#18#0#0)) == Lit(#_module.Result.Failure(a#18#0#0)));

function _module.Result.s(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#19#0#0: Seq :: 
  { #_module.Result.Failure(a#19#0#0) } 
  _module.Result.s(#_module.Result.Failure(a#19#0#0)) == a#19#0#0);

// Inductive seq element rank
axiom (forall a#20#0#0: Seq, i: int :: 
  { Seq#Index(a#20#0#0, i), #_module.Result.Failure(a#20#0#0) } 
  0 <= i && i < Seq#Length(a#20#0#0)
     ==> DtRank($Unbox(Seq#Index(a#20#0#0, i)): DatatypeType)
       < DtRank(#_module.Result.Failure(a#20#0#0)));

// Inductive seq rank
axiom (forall a#21#0#0: Seq :: 
  { #_module.Result.Failure(a#21#0#0) } 
  Seq#Rank(a#21#0#0) < DtRank(#_module.Result.Failure(a#21#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Result(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Result())
     ==> $IsAlloc(d, Tclass._module.Result(), $h));

// Depth-one case-split function
function $IsA#_module.Result(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Result(d) } 
  $IsA#_module.Result(d)
     ==> _module.Result.Success_q(d) || _module.Result.Failure_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Result.Failure_q(d), $Is(d, Tclass._module.Result()) } 
    { _module.Result.Success_q(d), $Is(d, Tclass._module.Result()) } 
  $Is(d, Tclass._module.Result())
     ==> _module.Result.Success_q(d) || _module.Result.Failure_q(d));

// Datatype extensional equality declaration
function _module.Result#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Result.Success
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Result#Equal(a, b), _module.Result.Success_q(a) } 
    { _module.Result#Equal(a, b), _module.Result.Success_q(b) } 
  _module.Result.Success_q(a) && _module.Result.Success_q(b)
     ==> _module.Result#Equal(a, b));

// Datatype extensional equality definition: #_module.Result.Failure
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Result#Equal(a, b), _module.Result.Failure_q(a) } 
    { _module.Result#Equal(a, b), _module.Result.Failure_q(b) } 
  _module.Result.Failure_q(a) && _module.Result.Failure_q(b)
     ==> (_module.Result#Equal(a, b)
       <==> Seq#Equal(_module.Result.s(a), _module.Result.s(b))));

// Datatype extensionality axiom: _module.Result
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Result#Equal(a, b) } 
  _module.Result#Equal(a, b) <==> a == b);

const unique class._module.Result: ClassName;

const unique class.MyModule.__default: ClassName;

// function declaration for MyModule._default.MyFunction
function MyModule.__default.MyFunction(x#0: int) : int;

function MyModule.__default.MyFunction#canCall(x#0: int) : bool;

function MyModule.__default.MyFunction#requires(int) : bool;

// #requires axiom for MyModule.__default.MyFunction
axiom (forall x#0: int :: 
  { MyModule.__default.MyFunction#requires(x#0) } 
  MyModule.__default.MyFunction#requires(x#0) == true);

const unique class.QualifiedNames.__default: ClassName;

// function declaration for QualifiedNames._default.P
function QualifiedNames.__default.P(x#0: int) : bool;

function QualifiedNames.__default.P#canCall(x#0: int) : bool;

function QualifiedNames.__default.P#requires(int) : bool;

// #requires axiom for QualifiedNames.__default.P
axiom (forall x#0: int :: 
  { QualifiedNames.__default.P#requires(x#0) } 
  QualifiedNames.__default.P#requires(x#0) == true);

// definition axiom for QualifiedNames.__default.P (revealed)
axiom {:id "id349"} (forall x#0: int :: 
  { QualifiedNames.__default.P(x#0) } 
  MyModule.__default.MyFunction#canCall(x#0)
     && QualifiedNames.__default.P(x#0)
       == (var u#2 := x#0; MyModule.__default.MyFunction(x#0) == x#0));

// definition axiom for QualifiedNames.__default.P for all literals (revealed)
axiom {:id "id350"} (forall x#0: int :: 
  {:weight 3} { QualifiedNames.__default.P(LitInt(x#0)) } 
  MyModule.__default.MyFunction#canCall(LitInt(x#0))
     && QualifiedNames.__default.P(LitInt(x#0))
       == (var u#3 := LitInt(x#0); 
        MyModule.__default.MyFunction(LitInt(x#0)) == LitInt(x#0)));

// function declaration for QualifiedNames._default.Q
function QualifiedNames.__default.Q(x#0: int) : bool;

function QualifiedNames.__default.Q#canCall(x#0: int) : bool;

function QualifiedNames.__default.Q#requires(int) : bool;

// #requires axiom for QualifiedNames.__default.Q
axiom (forall x#0: int :: 
  { QualifiedNames.__default.Q#requires(x#0) } 
  QualifiedNames.__default.Q#requires(x#0) == true);

// definition axiom for QualifiedNames.__default.Q (revealed)
axiom {:id "id351"} (forall x#0: int :: 
  { QualifiedNames.__default.Q(x#0) } 
  MyModule.__default.MyFunction#canCall(x#0)
     && QualifiedNames.__default.Q(x#0)
       == (var u#2 := x#0; x#0 == MyModule.__default.MyFunction(x#0)));

// definition axiom for QualifiedNames.__default.Q for all literals (revealed)
axiom {:id "id352"} (forall x#0: int :: 
  {:weight 3} { QualifiedNames.__default.Q(LitInt(x#0)) } 
  MyModule.__default.MyFunction#canCall(LitInt(x#0))
     && QualifiedNames.__default.Q(LitInt(x#0))
       == (var u#3 := LitInt(x#0); 
        LitInt(x#0) == MyModule.__default.MyFunction(LitInt(x#0))));

// function declaration for QualifiedNames._default.F
function QualifiedNames.__default.F() : int
uses {
// definition axiom for QualifiedNames.__default.F (revealed)
axiom {:id "id353"} QualifiedNames.__default.F() == (var p#2 := LitInt(1000); p#2);
// definition axiom for QualifiedNames.__default.F for all literals (revealed)
axiom {:id "id354"} QualifiedNames.__default.F() == (var p#3 := LitInt(1000); p#3);
}

function QualifiedNames.__default.F#canCall() : bool;

function QualifiedNames.__default.F#requires() : bool
uses {
// #requires axiom for QualifiedNames.__default.F
axiom QualifiedNames.__default.F#requires() == true;
}

// function declaration for QualifiedNames._default.R
function QualifiedNames.__default.R(x#0: int) : bool;

function QualifiedNames.__default.R#canCall(x#0: int) : bool;

function QualifiedNames.__default.R#requires(int) : bool;

// #requires axiom for QualifiedNames.__default.R
axiom (forall x#0: int :: 
  { QualifiedNames.__default.R#requires(x#0) } 
  QualifiedNames.__default.R#requires(x#0) == true);

// definition axiom for QualifiedNames.__default.R (revealed)
axiom {:id "id355"} (forall x#0: int :: 
  { QualifiedNames.__default.R(x#0) } 
  MyModule.__default.MyFunction#canCall(x#0)
     && QualifiedNames.__default.R(x#0)
       == (var u#2 := x#0; x#0 == MyModule.__default.MyFunction(x#0)));

// definition axiom for QualifiedNames.__default.R for all literals (revealed)
axiom {:id "id356"} (forall x#0: int :: 
  {:weight 3} { QualifiedNames.__default.R(LitInt(x#0)) } 
  MyModule.__default.MyFunction#canCall(LitInt(x#0))
     && QualifiedNames.__default.R(LitInt(x#0))
       == (var u#3 := LitInt(x#0); 
        LitInt(x#0) == MyModule.__default.MyFunction(LitInt(x#0))));

const unique class.MatchAcrossMultipleLines.__default: ClassName;

// function declaration for MatchAcrossMultipleLines._default.F
function MatchAcrossMultipleLines.__default.F(A#0: bool, B#0: int, C#0: DatatypeType) : int;

function MatchAcrossMultipleLines.__default.F#canCall(A#0: bool, B#0: int, C#0: DatatypeType) : bool;

function Tclass.MatchAcrossMultipleLines.YZ() : Ty
uses {
// Tclass.MatchAcrossMultipleLines.YZ Tag
axiom Tag(Tclass.MatchAcrossMultipleLines.YZ())
     == Tagclass.MatchAcrossMultipleLines.YZ
   && TagFamily(Tclass.MatchAcrossMultipleLines.YZ()) == tytagFamily$YZ;
}

const unique Tagclass.MatchAcrossMultipleLines.YZ: TyTag;

// Box/unbox axiom for Tclass.MatchAcrossMultipleLines.YZ
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MatchAcrossMultipleLines.YZ()) } 
  $IsBox(bx, Tclass.MatchAcrossMultipleLines.YZ())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MatchAcrossMultipleLines.YZ()));

function MatchAcrossMultipleLines.__default.F#requires(bool, int, DatatypeType) : bool;

// #requires axiom for MatchAcrossMultipleLines.__default.F
axiom (forall A#0: bool, B#0: int, C#0: DatatypeType :: 
  { MatchAcrossMultipleLines.__default.F#requires(A#0, B#0, C#0) } 
  $Is(C#0, Tclass.MatchAcrossMultipleLines.YZ())
     ==> MatchAcrossMultipleLines.__default.F#requires(A#0, B#0, C#0)
       == !MatchAcrossMultipleLines.YZ#Equal(C#0, #MatchAcrossMultipleLines.YZ.Y()));

// definition axiom for MatchAcrossMultipleLines.__default.F (revealed)
axiom {:id "id357"} (forall A#0: bool, B#0: int, C#0: DatatypeType :: 
  { MatchAcrossMultipleLines.__default.F(A#0, B#0, C#0) } 
  MatchAcrossMultipleLines.__default.F#canCall(A#0, B#0, C#0)
       || ($Is(C#0, Tclass.MatchAcrossMultipleLines.YZ())
         && !MatchAcrossMultipleLines.YZ#Equal(C#0, #MatchAcrossMultipleLines.YZ.Y()))
     ==> MatchAcrossMultipleLines.__default.F(A#0, B#0, C#0) == (if A#0 then B#0 else 3));

// definition axiom for MatchAcrossMultipleLines.__default.F for all literals (revealed)
axiom {:id "id358"} (forall A#0: bool, B#0: int, C#0: DatatypeType :: 
  {:weight 3} { MatchAcrossMultipleLines.__default.F(Lit(A#0), LitInt(B#0), Lit(C#0)) } 
  MatchAcrossMultipleLines.__default.F#canCall(Lit(A#0), LitInt(B#0), Lit(C#0))
       || ($Is(C#0, Tclass.MatchAcrossMultipleLines.YZ())
         && !MatchAcrossMultipleLines.YZ#Equal(C#0, #MatchAcrossMultipleLines.YZ.Y()))
     ==> MatchAcrossMultipleLines.__default.F(Lit(A#0), LitInt(B#0), Lit(C#0))
       == (if A#0 then B#0 else 3));

// Constructor function declaration
function #MatchAcrossMultipleLines.PQ.P(int) : DatatypeType;

const unique ##MatchAcrossMultipleLines.PQ.P: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #MatchAcrossMultipleLines.PQ.P(a#0#0#0) } 
  DatatypeCtorId(#MatchAcrossMultipleLines.PQ.P(a#0#0#0))
     == ##MatchAcrossMultipleLines.PQ.P);
}

function MatchAcrossMultipleLines.PQ.P_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchAcrossMultipleLines.PQ.P_q(d) } 
  MatchAcrossMultipleLines.PQ.P_q(d)
     <==> DatatypeCtorId(d) == ##MatchAcrossMultipleLines.PQ.P);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchAcrossMultipleLines.PQ.P_q(d) } 
  MatchAcrossMultipleLines.PQ.P_q(d)
     ==> (exists a#1#0#0: int :: d == #MatchAcrossMultipleLines.PQ.P(a#1#0#0)));

function Tclass.MatchAcrossMultipleLines.PQ() : Ty
uses {
// Tclass.MatchAcrossMultipleLines.PQ Tag
axiom Tag(Tclass.MatchAcrossMultipleLines.PQ())
     == Tagclass.MatchAcrossMultipleLines.PQ
   && TagFamily(Tclass.MatchAcrossMultipleLines.PQ()) == tytagFamily$PQ;
}

const unique Tagclass.MatchAcrossMultipleLines.PQ: TyTag;

// Box/unbox axiom for Tclass.MatchAcrossMultipleLines.PQ
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MatchAcrossMultipleLines.PQ()) } 
  $IsBox(bx, Tclass.MatchAcrossMultipleLines.PQ())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MatchAcrossMultipleLines.PQ()));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#MatchAcrossMultipleLines.PQ.P(a#2#0#0), Tclass.MatchAcrossMultipleLines.PQ()) } 
  $Is(#MatchAcrossMultipleLines.PQ.P(a#2#0#0), Tclass.MatchAcrossMultipleLines.PQ())
     <==> $Is(a#2#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(MatchAcrossMultipleLines.PQ._h0(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      MatchAcrossMultipleLines.PQ.P_q(d)
       && $IsAlloc(d, Tclass.MatchAcrossMultipleLines.PQ(), $h)
     ==> $IsAlloc(MatchAcrossMultipleLines.PQ._h0(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #MatchAcrossMultipleLines.PQ.P(LitInt(a#3#0#0)) } 
  #MatchAcrossMultipleLines.PQ.P(LitInt(a#3#0#0))
     == Lit(#MatchAcrossMultipleLines.PQ.P(a#3#0#0)));

function MatchAcrossMultipleLines.PQ._h0(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #MatchAcrossMultipleLines.PQ.P(a#4#0#0) } 
  MatchAcrossMultipleLines.PQ._h0(#MatchAcrossMultipleLines.PQ.P(a#4#0#0))
     == a#4#0#0);

// Constructor function declaration
function #MatchAcrossMultipleLines.PQ.Q(bool) : DatatypeType;

const unique ##MatchAcrossMultipleLines.PQ.Q: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: bool :: 
  { #MatchAcrossMultipleLines.PQ.Q(a#5#0#0) } 
  DatatypeCtorId(#MatchAcrossMultipleLines.PQ.Q(a#5#0#0))
     == ##MatchAcrossMultipleLines.PQ.Q);
}

function MatchAcrossMultipleLines.PQ.Q_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchAcrossMultipleLines.PQ.Q_q(d) } 
  MatchAcrossMultipleLines.PQ.Q_q(d)
     <==> DatatypeCtorId(d) == ##MatchAcrossMultipleLines.PQ.Q);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchAcrossMultipleLines.PQ.Q_q(d) } 
  MatchAcrossMultipleLines.PQ.Q_q(d)
     ==> (exists a#6#0#0: bool :: d == #MatchAcrossMultipleLines.PQ.Q(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: bool :: 
  { $Is(#MatchAcrossMultipleLines.PQ.Q(a#7#0#0), Tclass.MatchAcrossMultipleLines.PQ()) } 
  $Is(#MatchAcrossMultipleLines.PQ.Q(a#7#0#0), Tclass.MatchAcrossMultipleLines.PQ())
     <==> $Is(a#7#0#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(MatchAcrossMultipleLines.PQ._h1(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      MatchAcrossMultipleLines.PQ.Q_q(d)
       && $IsAlloc(d, Tclass.MatchAcrossMultipleLines.PQ(), $h)
     ==> $IsAlloc(MatchAcrossMultipleLines.PQ._h1(d), TBool, $h));

// Constructor literal
axiom (forall a#8#0#0: bool :: 
  { #MatchAcrossMultipleLines.PQ.Q(Lit(a#8#0#0)) } 
  #MatchAcrossMultipleLines.PQ.Q(Lit(a#8#0#0))
     == Lit(#MatchAcrossMultipleLines.PQ.Q(a#8#0#0)));

function MatchAcrossMultipleLines.PQ._h1(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#9#0#0: bool :: 
  { #MatchAcrossMultipleLines.PQ.Q(a#9#0#0) } 
  MatchAcrossMultipleLines.PQ._h1(#MatchAcrossMultipleLines.PQ.Q(a#9#0#0))
     == a#9#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.MatchAcrossMultipleLines.PQ(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.MatchAcrossMultipleLines.PQ())
     ==> $IsAlloc(d, Tclass.MatchAcrossMultipleLines.PQ(), $h));

// Depth-one case-split function
function $IsA#MatchAcrossMultipleLines.PQ(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MatchAcrossMultipleLines.PQ(d) } 
  $IsA#MatchAcrossMultipleLines.PQ(d)
     ==> MatchAcrossMultipleLines.PQ.P_q(d) || MatchAcrossMultipleLines.PQ.Q_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { MatchAcrossMultipleLines.PQ.Q_q(d), $Is(d, Tclass.MatchAcrossMultipleLines.PQ()) } 
    { MatchAcrossMultipleLines.PQ.P_q(d), $Is(d, Tclass.MatchAcrossMultipleLines.PQ()) } 
  $Is(d, Tclass.MatchAcrossMultipleLines.PQ())
     ==> MatchAcrossMultipleLines.PQ.P_q(d) || MatchAcrossMultipleLines.PQ.Q_q(d));

// Datatype extensional equality declaration
function MatchAcrossMultipleLines.PQ#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MatchAcrossMultipleLines.PQ.P
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchAcrossMultipleLines.PQ#Equal(a, b), MatchAcrossMultipleLines.PQ.P_q(a) } 
    { MatchAcrossMultipleLines.PQ#Equal(a, b), MatchAcrossMultipleLines.PQ.P_q(b) } 
  MatchAcrossMultipleLines.PQ.P_q(a) && MatchAcrossMultipleLines.PQ.P_q(b)
     ==> (MatchAcrossMultipleLines.PQ#Equal(a, b)
       <==> MatchAcrossMultipleLines.PQ._h0(a) == MatchAcrossMultipleLines.PQ._h0(b)));

// Datatype extensional equality definition: #MatchAcrossMultipleLines.PQ.Q
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchAcrossMultipleLines.PQ#Equal(a, b), MatchAcrossMultipleLines.PQ.Q_q(a) } 
    { MatchAcrossMultipleLines.PQ#Equal(a, b), MatchAcrossMultipleLines.PQ.Q_q(b) } 
  MatchAcrossMultipleLines.PQ.Q_q(a) && MatchAcrossMultipleLines.PQ.Q_q(b)
     ==> (MatchAcrossMultipleLines.PQ#Equal(a, b)
       <==> MatchAcrossMultipleLines.PQ._h1(a) == MatchAcrossMultipleLines.PQ._h1(b)));

// Datatype extensionality axiom: MatchAcrossMultipleLines.PQ
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchAcrossMultipleLines.PQ#Equal(a, b) } 
  MatchAcrossMultipleLines.PQ#Equal(a, b) <==> a == b);

const unique class.MatchAcrossMultipleLines.PQ: ClassName;

// Constructor function declaration
function #MatchAcrossMultipleLines.YZ.Y() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchAcrossMultipleLines.YZ.Y())
   == ##MatchAcrossMultipleLines.YZ.Y;
// Constructor $Is
axiom $Is(#MatchAcrossMultipleLines.YZ.Y(), Tclass.MatchAcrossMultipleLines.YZ());
// Constructor literal
axiom #MatchAcrossMultipleLines.YZ.Y() == Lit(#MatchAcrossMultipleLines.YZ.Y());
}

const unique ##MatchAcrossMultipleLines.YZ.Y: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchAcrossMultipleLines.YZ.Y())
   == ##MatchAcrossMultipleLines.YZ.Y;
}

function MatchAcrossMultipleLines.YZ.Y_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchAcrossMultipleLines.YZ.Y_q(d) } 
  MatchAcrossMultipleLines.YZ.Y_q(d)
     <==> DatatypeCtorId(d) == ##MatchAcrossMultipleLines.YZ.Y);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchAcrossMultipleLines.YZ.Y_q(d) } 
  MatchAcrossMultipleLines.YZ.Y_q(d) ==> d == #MatchAcrossMultipleLines.YZ.Y());

// Constructor function declaration
function #MatchAcrossMultipleLines.YZ.Z() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchAcrossMultipleLines.YZ.Z())
   == ##MatchAcrossMultipleLines.YZ.Z;
// Constructor $Is
axiom $Is(#MatchAcrossMultipleLines.YZ.Z(), Tclass.MatchAcrossMultipleLines.YZ());
// Constructor literal
axiom #MatchAcrossMultipleLines.YZ.Z() == Lit(#MatchAcrossMultipleLines.YZ.Z());
}

const unique ##MatchAcrossMultipleLines.YZ.Z: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchAcrossMultipleLines.YZ.Z())
   == ##MatchAcrossMultipleLines.YZ.Z;
}

function MatchAcrossMultipleLines.YZ.Z_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchAcrossMultipleLines.YZ.Z_q(d) } 
  MatchAcrossMultipleLines.YZ.Z_q(d)
     <==> DatatypeCtorId(d) == ##MatchAcrossMultipleLines.YZ.Z);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchAcrossMultipleLines.YZ.Z_q(d) } 
  MatchAcrossMultipleLines.YZ.Z_q(d) ==> d == #MatchAcrossMultipleLines.YZ.Z());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.MatchAcrossMultipleLines.YZ(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.MatchAcrossMultipleLines.YZ())
     ==> $IsAlloc(d, Tclass.MatchAcrossMultipleLines.YZ(), $h));

// Depth-one case-split function
function $IsA#MatchAcrossMultipleLines.YZ(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MatchAcrossMultipleLines.YZ(d) } 
  $IsA#MatchAcrossMultipleLines.YZ(d)
     ==> MatchAcrossMultipleLines.YZ.Y_q(d) || MatchAcrossMultipleLines.YZ.Z_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { MatchAcrossMultipleLines.YZ.Z_q(d), $Is(d, Tclass.MatchAcrossMultipleLines.YZ()) } 
    { MatchAcrossMultipleLines.YZ.Y_q(d), $Is(d, Tclass.MatchAcrossMultipleLines.YZ()) } 
  $Is(d, Tclass.MatchAcrossMultipleLines.YZ())
     ==> MatchAcrossMultipleLines.YZ.Y_q(d) || MatchAcrossMultipleLines.YZ.Z_q(d));

// Datatype extensional equality declaration
function MatchAcrossMultipleLines.YZ#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MatchAcrossMultipleLines.YZ.Y
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchAcrossMultipleLines.YZ#Equal(a, b), MatchAcrossMultipleLines.YZ.Y_q(a) } 
    { MatchAcrossMultipleLines.YZ#Equal(a, b), MatchAcrossMultipleLines.YZ.Y_q(b) } 
  MatchAcrossMultipleLines.YZ.Y_q(a) && MatchAcrossMultipleLines.YZ.Y_q(b)
     ==> MatchAcrossMultipleLines.YZ#Equal(a, b));

// Datatype extensional equality definition: #MatchAcrossMultipleLines.YZ.Z
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchAcrossMultipleLines.YZ#Equal(a, b), MatchAcrossMultipleLines.YZ.Z_q(a) } 
    { MatchAcrossMultipleLines.YZ#Equal(a, b), MatchAcrossMultipleLines.YZ.Z_q(b) } 
  MatchAcrossMultipleLines.YZ.Z_q(a) && MatchAcrossMultipleLines.YZ.Z_q(b)
     ==> MatchAcrossMultipleLines.YZ#Equal(a, b));

// Datatype extensionality axiom: MatchAcrossMultipleLines.YZ
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchAcrossMultipleLines.YZ#Equal(a, b) } 
  MatchAcrossMultipleLines.YZ#Equal(a, b) <==> a == b);

const unique class.MatchAcrossMultipleLines.YZ: ClassName;

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

const unique tytagFamily$array2: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$_#Func5: TyTagFamily;

const unique tytagFamily$_#PartialFunc5: TyTagFamily;

const unique tytagFamily$_#TotalFunc5: TyTagFamily;

const unique tytagFamily$Record: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;

const unique tytagFamily$Result: TyTagFamily;

const unique tytagFamily$YZ: TyTagFamily;

const unique tytagFamily$PQ: TyTagFamily;
