// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy

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

const unique class._module.IntSet?: ClassName;

function Tclass._module.IntSet?() : Ty
uses {
// Tclass._module.IntSet? Tag
axiom Tag(Tclass._module.IntSet?()) == Tagclass._module.IntSet?
   && TagFamily(Tclass._module.IntSet?()) == tytagFamily$IntSet;
}

const unique Tagclass._module.IntSet?: TyTag;

// Box/unbox axiom for Tclass._module.IntSet?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.IntSet?()) } 
  $IsBox(bx, Tclass._module.IntSet?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.IntSet?()));

// $Is axiom for class IntSet
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.IntSet?()) } 
  $Is($o, Tclass._module.IntSet?())
     <==> $o == null || dtype($o) == Tclass._module.IntSet?());

// $IsAlloc axiom for class IntSet
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.IntSet?(), $h) } 
  $IsAlloc($o, Tclass._module.IntSet?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.IntSet.Contents: Field
uses {
axiom FDim(_module.IntSet.Contents) == 0
   && FieldOfDecl(class._module.IntSet?, field$Contents) == _module.IntSet.Contents
   && $IsGhostField(_module.IntSet.Contents);
}

// IntSet.Contents: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IntSet.Contents)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.IntSet?()
     ==> $Is($Unbox(read($h, $o, _module.IntSet.Contents)): Set, TSet(TInt)));

// IntSet.Contents: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IntSet.Contents)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IntSet?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.IntSet.Contents)): Set, TSet(TInt), $h));

const _module.IntSet.Repr: Field
uses {
axiom FDim(_module.IntSet.Repr) == 0
   && FieldOfDecl(class._module.IntSet?, field$Repr) == _module.IntSet.Repr
   && $IsGhostField(_module.IntSet.Repr);
}

// IntSet.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IntSet.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.IntSet?()
     ==> $Is($Unbox(read($h, $o, _module.IntSet.Repr)): Set, TSet(Tclass._System.object())));

// IntSet.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IntSet.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IntSet?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.IntSet.Repr)): Set, 
      TSet(Tclass._System.object()), 
      $h));

const _module.IntSet.root: Field
uses {
axiom FDim(_module.IntSet.root) == 0
   && FieldOfDecl(class._module.IntSet?, field$root) == _module.IntSet.root
   && !$IsGhostField(_module.IntSet.root);
}

function Tclass._module.Node?() : Ty
uses {
// Tclass._module.Node? Tag
axiom Tag(Tclass._module.Node?()) == Tagclass._module.Node?
   && TagFamily(Tclass._module.Node?()) == tytagFamily$Node;
}

const unique Tagclass._module.Node?: TyTag;

// Box/unbox axiom for Tclass._module.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node?()) } 
  $IsBox(bx, Tclass._module.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node?()));

// IntSet.root: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IntSet.root)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.IntSet?()
     ==> $Is($Unbox(read($h, $o, _module.IntSet.root)): ref, Tclass._module.Node?()));

// IntSet.root: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IntSet.root)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IntSet?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.IntSet.root)): ref, Tclass._module.Node?(), $h));

// function declaration for _module.IntSet.Valid
function _module.IntSet.Valid($heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.IntSet.Valid
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.IntSet.Valid($Heap, this) } 
    _module.IntSet.Valid#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.IntSet())
           && $IsAlloc(this, Tclass._module.IntSet(), $Heap))
       ==> 
      _module.IntSet.Valid($Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this)));
// definition axiom for _module.IntSet.Valid (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.IntSet.Valid($Heap, this), $IsGoodHeap($Heap) } 
    _module.IntSet.Valid#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.IntSet())
           && $IsAlloc(this, Tclass._module.IntSet(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this))
           ==> 
          ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
           ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set))
           ==> 
          $Unbox(read($Heap, this, _module.IntSet.root)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
            read($Heap, this, _module.IntSet.root))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            $Box(this))
           ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref))
         && _module.IntSet.Valid($Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
               ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set))
             && ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                  read($Heap, this, _module.IntSet.root))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 && Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                      _module.Node.Contents)): Set))));
}

function _module.IntSet.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass._module.IntSet() : Ty
uses {
// Tclass._module.IntSet Tag
axiom Tag(Tclass._module.IntSet()) == Tagclass._module.IntSet
   && TagFamily(Tclass._module.IntSet()) == tytagFamily$IntSet;
}

const unique Tagclass._module.IntSet: TyTag;

// Box/unbox axiom for Tclass._module.IntSet
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.IntSet()) } 
  $IsBox(bx, Tclass._module.IntSet())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.IntSet()));

// frame axiom for _module.IntSet.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.IntSet.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.IntSet())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.IntSet.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.IntSet.Valid($h0, this) == _module.IntSet.Valid($h1, this));

function _module.IntSet.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.IntSet.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.IntSet.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.IntSet())
       && $IsAlloc(this, Tclass._module.IntSet(), $Heap)
     ==> _module.IntSet.Valid#requires($Heap, this) == true);

procedure {:verboseName "IntSet.Valid (well-formedness)"} CheckWellformed$$_module.IntSet.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IntSet())
         && $IsAlloc(this, Tclass._module.IntSet(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id1"} _module.IntSet.Valid($Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntSet.Valid (well-formedness)"} CheckWellformed$$_module.IntSet.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
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

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.IntSet.Repr];
    assert {:id "id2"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.IntSet?(), $Heap);
            assert {:id "id3"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || _module.IntSet.Valid#canCall($Heap, this);
            assume {:id "id4"} _module.IntSet.Valid($Heap, this);
            assume {:id "id5"} Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id6"} _module.IntSet.Valid($Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.IntSet.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.IntSet.root];
            newtype$check#0 := null;
            if ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null)
            {
                b$reqreads#3 := $_ReadsFrame[this, _module.IntSet.Contents];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
             ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set)))
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.IntSet.root];
            newtype$check#1 := null;
            if ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null)
            {
                b$reqreads#5 := $_ReadsFrame[this, _module.IntSet.root];
                b$reqreads#6 := $_ReadsFrame[this, _module.IntSet.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                  read($Heap, this, _module.IntSet.root)))
                {
                    b$reqreads#7 := $_ReadsFrame[this, _module.IntSet.root];
                    assert {:id "id7"} $Unbox(read($Heap, this, _module.IntSet.root)): ref != null;
                    b$reqreads#8 := $_ReadsFrame[$Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr];
                    b$reqreads#9 := $_ReadsFrame[this, _module.IntSet.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                    read($Heap, this, _module.IntSet.root))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.IntSet.Repr)): Set))
                {
                    b$reqreads#10 := $_ReadsFrame[this, _module.IntSet.root];
                    assert {:id "id8"} $Unbox(read($Heap, this, _module.IntSet.root)): ref != null;
                    b$reqreads#11 := $_ReadsFrame[$Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                    read($Heap, this, _module.IntSet.root))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#12 := $_ReadsFrame[this, _module.IntSet.root];
                    assert {:id "id9"} $Unbox(read($Heap, this, _module.IntSet.root)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.IntSet.root), Tclass._module.Node?(), $Heap);
                    b$reqreads#13 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.IntSet.root)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assume _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref);
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                    read($Heap, this, _module.IntSet.root))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                    $Box(this))
                   && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref))
                {
                    b$reqreads#14 := $_ReadsFrame[this, _module.IntSet.Contents];
                    b$reqreads#15 := $_ReadsFrame[this, _module.IntSet.root];
                    assert {:id "id10"} $Unbox(read($Heap, this, _module.IntSet.root)): ref != null;
                    b$reqreads#16 := $_ReadsFrame[$Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Contents];
                }
            }
        }

        assume {:id "id11"} _module.IntSet.Valid($Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
               ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set))
             && ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                  read($Heap, this, _module.IntSet.root))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 && Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                      _module.Node.Contents)): Set)));
        assume Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this))
           ==> 
          ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
           ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set))
           ==> 
          $Unbox(read($Heap, this, _module.IntSet.root)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
            read($Heap, this, _module.IntSet.root))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            $Box(this))
           ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.IntSet.Valid($Heap, this), TBool);
        assert {:id "id12"} b$reqreads#1;
        assert {:id "id13"} b$reqreads#2;
        assert {:id "id14"} b$reqreads#3;
        assert {:id "id15"} b$reqreads#4;
        assert {:id "id16"} b$reqreads#5;
        assert {:id "id17"} b$reqreads#6;
        assert {:id "id18"} b$reqreads#7;
        assert {:id "id19"} b$reqreads#8;
        assert {:id "id20"} b$reqreads#9;
        assert {:id "id21"} b$reqreads#10;
        assert {:id "id22"} b$reqreads#11;
        assert {:id "id23"} b$reqreads#12;
        assert {:id "id24"} b$reqreads#13;
        assert {:id "id25"} b$reqreads#14;
        assert {:id "id26"} b$reqreads#15;
        assert {:id "id27"} b$reqreads#16;
        return;

        assume false;
    }
}



procedure {:verboseName "IntSet.Init (well-formedness)"} CheckWellFormed$$_module.IntSet.Init() returns (this: ref);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IntSet.Init (call)"} Call$$_module.IntSet.Init()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IntSet())
         && $IsAlloc(this, Tclass._module.IntSet(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.IntSet.Valid#canCall($Heap, this);
  free ensures {:id "id31"} _module.IntSet.Valid#canCall($Heap, this)
     && 
    _module.IntSet.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set))
     && ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
          read($Heap, this, _module.IntSet.root))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         && Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
              _module.Node.Contents)): Set));
  ensures {:id "id32"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id33"} Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IntSet.Init (correctness)"} Impl$$_module.IntSet.Init() returns (this: ref, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.IntSet.Valid#canCall($Heap, this);
  ensures {:id "id34"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this));
  ensures {:id "id35"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set));
  ensures {:id "id36"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
          read($Heap, this, _module.IntSet.root)));
  ensures {:id "id37"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.IntSet.Repr)): Set));
  ensures {:id "id38"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id39"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            read($Heap, this, _module.IntSet.root)));
  ensures {:id "id40"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left))));
  ensures {:id "id41"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  ensures {:id "id42"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, this, _module.IntSet.root))));
  ensures {:id "id43"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref)));
  ensures {:id "id44"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> (forall y#2: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#2)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#2))
                 ==> y#2
                   < $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int)));
  ensures {:id "id45"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right))));
  ensures {:id "id46"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  ensures {:id "id47"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, this, _module.IntSet.root))));
  ensures {:id "id48"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref)));
  ensures {:id "id49"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> (forall y#3: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#3)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#3))
                 ==> $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int
                   < y#3)));
  ensures {:id "id50"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, 
                read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)))));
  ensures {:id "id51"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))))));
  ensures {:id "id52"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union(Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  ensures {:id "id53"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Disjoint($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set)));
  ensures {:id "id54"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union(Set#Union($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  Set#UnionOne(Set#Empty(): Set, 
                    read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  ensures {:id "id55"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
              _module.Node.Contents)): Set));
  ensures {:id "id56"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id57"} Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntSet.Init (correctness)"} Impl$$_module.IntSet.Init() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Contents: Set;
  var this.Repr: Set;
  var this.root: ref;
  var newtype$check#0: ref;

    // AddMethodImpl: Init, Impl$$_module.IntSet.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(25,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(26,10)
    assume true;
    newtype$check#0 := null;
    assume true;
    this.root := null;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(27,10)
    assume true;
    assume true;
    this.Repr := Set#UnionOne(Set#Empty(): Set, $Box(this));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(28,14)
    assume true;
    assume true;
    this.Contents := Lit(Set#Empty(): Set);
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(25,3)
    assume this != null && $Is(this, Tclass._module.IntSet?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.IntSet.Contents)): Set == this.Contents;
    assume $Unbox(read($Heap, this, _module.IntSet.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.IntSet.root)): ref == this.root;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(25,3)
}



// function declaration for _module.IntSet.Find
function _module.IntSet.Find($heap: Heap, this: ref, x#0: int) : bool
uses {
// consequence axiom for _module.IntSet.Find
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    { _module.IntSet.Find($Heap, this, x#0) } 
    _module.IntSet.Find#canCall($Heap, this, x#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.IntSet())
           && $IsAlloc(this, Tclass._module.IntSet(), $Heap)
           && _module.IntSet.Valid($Heap, this))
       ==> (_module.IntSet.Find($Heap, this, x#0)
         <==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, $Box(x#0))));
// definition axiom for _module.IntSet.Find (revealed)
axiom {:id "id61"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, x#0: int :: 
    { _module.IntSet.Find($Heap, this, x#0), $IsGoodHeap($Heap) } 
    _module.IntSet.Find#canCall($Heap, this, x#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.IntSet())
           && $IsAlloc(this, Tclass._module.IntSet(), $Heap)
           && _module.IntSet.Valid($Heap, this))
       ==> ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
           ==> _module.Node.Find#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, x#0))
         && _module.IntSet.Find($Heap, this, x#0)
           == ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
             && _module.Node.Find($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, x#0)));
}

function _module.IntSet.Find#canCall($heap: Heap, this: ref, x#0: int) : bool;

// frame axiom for _module.IntSet.Find
axiom (forall $h0: Heap, $h1: Heap, this: ref, x#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.IntSet.Find($h1, this, x#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.IntSet())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && Set#IsMember($Unbox(read($h0, this, _module.IntSet.Repr)): Set, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.IntSet.Find($h0, this, x#0) == _module.IntSet.Find($h1, this, x#0));

function _module.IntSet.Find#requires(Heap, ref, int) : bool;

// #requires axiom for _module.IntSet.Find
axiom (forall $Heap: Heap, this: ref, x#0: int :: 
  { _module.IntSet.Find#requires($Heap, this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.IntSet())
       && $IsAlloc(this, Tclass._module.IntSet(), $Heap)
     ==> _module.IntSet.Find#requires($Heap, this, x#0)
       == _module.IntSet.Valid($Heap, this));

procedure {:verboseName "IntSet.Find (well-formedness)"} CheckWellformed$$_module.IntSet.Find(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IntSet())
         && $IsAlloc(this, Tclass._module.IntSet(), $Heap), 
    x#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id62"} _module.IntSet.Find($Heap, this, x#0)
     <==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, $Box(x#0));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntSet.Find (well-formedness)"} CheckWellformed$$_module.IntSet.Find(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var ##x#0: int;
  var newtype$check#0: ref;
  var ##x#1: int;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.IntSet?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.IntSet.Valid#canCall($Heap, this);
    assume {:id "id63"} _module.IntSet.Valid($Heap, this);
    assert {:id "id64"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.IntSet.Repr];
    assert {:id "id65"} b$reqreads#1;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.IntSet?(), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id66"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this));
        assert {:id "id67"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
               ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set));
        assert {:id "id68"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
                read($Heap, this, _module.IntSet.root)));
        assert {:id "id69"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.IntSet.Repr)): Set));
        assert {:id "id70"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                $Box(this)));
        assert {:id "id71"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.IntSet.root)));
        assert {:id "id72"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                     != null
                   ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                    read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left))));
        assert {:id "id73"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                     != null
                   ==> Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                        _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
        assert {:id "id74"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                     != null
                   ==> !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                        _module.Node.Repr)): Set, 
                    read($Heap, this, _module.IntSet.root))));
        assert {:id "id75"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                     != null
                   ==> _module.Node.Valid($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref)));
        assert {:id "id76"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                     != null
                   ==> (forall y#0: int :: 
                    { Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                            _module.Node.Contents)): Set, 
                        $Box(y#0)) } 
                    Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                            _module.Node.Contents)): Set, 
                        $Box(y#0))
                       ==> y#0
                         < $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int)));
        assert {:id "id77"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                     != null
                   ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                    read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right))));
        assert {:id "id78"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                     != null
                   ==> Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                        _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
        assert {:id "id79"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                     != null
                   ==> !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                        _module.Node.Repr)): Set, 
                    read($Heap, this, _module.IntSet.root))));
        assert {:id "id80"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                     != null
                   ==> _module.Node.Valid($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref)));
        assert {:id "id81"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                     != null
                   ==> (forall y#1: int :: 
                    { Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                            _module.Node.Contents)): Set, 
                        $Box(y#1)) } 
                    Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                            _module.Node.Contents)): Set, 
                        $Box(y#1))
                       ==> $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int
                         < y#1)));
        assert {:id "id82"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                       == null
                     && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                       == null
                   ==> Set#Equal($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                        _module.Node.Contents)): Set, 
                    Set#UnionOne(Set#Empty(): Set, 
                      read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)))));
        assert {:id "id83"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                       != null
                     && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                       == null
                   ==> Set#Equal($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                        _module.Node.Contents)): Set, 
                    Set#Union($Unbox(read($Heap, 
                          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                          _module.Node.Contents)): Set, 
                      Set#UnionOne(Set#Empty(): Set, 
                        read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))))));
        assert {:id "id84"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                       == null
                     && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                       != null
                   ==> Set#Equal($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                        _module.Node.Contents)): Set, 
                    Set#Union(Set#UnionOne(Set#Empty(): Set, 
                        read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)), 
                      $Unbox(read($Heap, 
                          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                          _module.Node.Contents)): Set))));
        assert {:id "id85"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                       != null
                     && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                       != null
                   ==> Set#Disjoint($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                        _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                        _module.Node.Repr)): Set)));
        assert {:id "id86"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> 
              _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                       != null
                     && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                       != null
                   ==> Set#Equal($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                        _module.Node.Contents)): Set, 
                    Set#Union(Set#Union($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                            _module.Node.Contents)): Set, 
                        Set#UnionOne(Set#Empty(): Set, 
                          read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))), 
                      $Unbox(read($Heap, 
                          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                          _module.Node.Contents)): Set))));
        assert {:id "id87"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, this)
           ==> _module.IntSet.Valid($Heap, this)
             || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
               ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                    _module.Node.Contents)): Set));
        assume _module.IntSet.Valid($Heap, this);
        assert {:id "id88"} 0 <= x#0
           || (Set#Subset($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
              $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
             && !Set#Subset($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
              $Unbox(read($Heap, this, _module.IntSet.Repr)): Set))
           || ##x#0 == x#0;
        assert {:id "id89"} (this == this && x#0 == x#0)
           || 
          (Set#Subset($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
              $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
             && !Set#Subset($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
              $Unbox(read($Heap, this, _module.IntSet.Repr)): Set))
           || (Set#Equal($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
              $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
             && ##x#0 < x#0);
        assume (this == this && x#0 == x#0) || _module.IntSet.Find#canCall($Heap, this, x#0);
        assume {:id "id90"} _module.IntSet.Find($Heap, this, x#0)
           <==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, $Box(x#0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#2 := $_ReadsFrame[this, _module.IntSet.root];
        newtype$check#0 := null;
        if ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null)
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.IntSet.root];
            assert {:id "id91"} $Unbox(read($Heap, this, _module.IntSet.root)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.IntSet.root), Tclass._module.Node?(), $Heap);
            ##x#1 := x#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1, TInt, $Heap);
            assert {:id "id92"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.IntSet.root));
            assert {:id "id93"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                     != null
                   ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                    read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)));
            assert {:id "id94"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                     != null
                   ==> Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                        _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set));
            assert {:id "id95"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                     != null
                   ==> !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                        _module.Node.Repr)): Set, 
                    read($Heap, this, _module.IntSet.root)));
            assert {:id "id96"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                     != null
                   ==> _module.Node.Valid($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref));
            assert {:id "id97"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                     != null
                   ==> (forall y#2: int :: 
                    { Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                            _module.Node.Contents)): Set, 
                        $Box(y#2)) } 
                    Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                            _module.Node.Contents)): Set, 
                        $Box(y#2))
                       ==> y#2
                         < $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int));
            assert {:id "id98"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                     != null
                   ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                    read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)));
            assert {:id "id99"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                     != null
                   ==> Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                        _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set));
            assert {:id "id100"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                     != null
                   ==> !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                        _module.Node.Repr)): Set, 
                    read($Heap, this, _module.IntSet.root)));
            assert {:id "id101"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                     != null
                   ==> _module.Node.Valid($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref));
            assert {:id "id102"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                     != null
                   ==> (forall y#3: int :: 
                    { Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                            _module.Node.Contents)): Set, 
                        $Box(y#3)) } 
                    Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                            _module.Node.Contents)): Set, 
                        $Box(y#3))
                       ==> $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int
                         < y#3));
            assert {:id "id103"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                       == null
                     && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                       == null
                   ==> Set#Equal($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                        _module.Node.Contents)): Set, 
                    Set#UnionOne(Set#Empty(): Set, 
                      read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))));
            assert {:id "id104"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                       != null
                     && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                       == null
                   ==> Set#Equal($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                        _module.Node.Contents)): Set, 
                    Set#Union($Unbox(read($Heap, 
                          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                          _module.Node.Contents)): Set, 
                      Set#UnionOne(Set#Empty(): Set, 
                        read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)))));
            assert {:id "id105"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                       == null
                     && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                       != null
                   ==> Set#Equal($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                        _module.Node.Contents)): Set, 
                    Set#Union(Set#UnionOne(Set#Empty(): Set, 
                        read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)), 
                      $Unbox(read($Heap, 
                          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                          _module.Node.Contents)): Set)));
            assert {:id "id106"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                       != null
                     && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                       != null
                   ==> Set#Disjoint($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                        _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                        _module.Node.Repr)): Set));
            assert {:id "id107"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
               ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
                 || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                       != null
                     && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                       != null
                   ==> Set#Equal($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                        _module.Node.Contents)): Set, 
                    Set#Union(Set#Union($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                            _module.Node.Contents)): Set, 
                        Set#UnionOne(Set#Empty(): Set, 
                          read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))), 
                      $Unbox(read($Heap, 
                          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                          _module.Node.Contents)): Set)));
            assume _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref);
            b$reqreads#4 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.Node.Find#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, x#0);
        }

        assume {:id "id108"} _module.IntSet.Find($Heap, this, x#0)
           == ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
             && _module.Node.Find($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, x#0));
        assume $Unbox(read($Heap, this, _module.IntSet.root)): ref != null
           ==> _module.Node.Find#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, x#0);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.IntSet.Find($Heap, this, x#0), TBool);
        assert {:id "id109"} b$reqreads#2;
        assert {:id "id110"} b$reqreads#3;
        assert {:id "id111"} b$reqreads#4;
        return;

        assume false;
    }
}



procedure {:verboseName "IntSet.Insert (well-formedness)"} CheckWellFormed$$_module.IntSet.Insert(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IntSet())
         && $IsAlloc(this, Tclass._module.IntSet(), $Heap), 
    x#0: int);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntSet.Insert (well-formedness)"} CheckWellFormed$$_module.IntSet.Insert(this: ref, x#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Insert, CheckWellFormed$$_module.IntSet.Insert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.IntSet?(), $Heap);
    assume _module.IntSet.Valid#canCall($Heap, this);
    assume {:id "id112"} _module.IntSet.Valid($Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.IntSet?(), $Heap);
    assume _module.IntSet.Valid#canCall($Heap, this);
    assume {:id "id113"} _module.IntSet.Valid($Heap, this);
    assert {:id "id114"} $IsAlloc(this, Tclass._module.IntSet(), old($Heap));
    assume {:id "id115"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id116"} $IsAlloc(this, Tclass._module.IntSet(), old($Heap));
    assume {:id "id117"} Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
      Set#Union($Unbox(read(old($Heap), this, _module.IntSet.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
}



procedure {:verboseName "IntSet.Insert (call)"} Call$$_module.IntSet.Insert(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IntSet())
         && $IsAlloc(this, Tclass._module.IntSet(), $Heap), 
    x#0: int);
  // user-defined preconditions
  requires {:id "id118"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this));
  requires {:id "id119"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set));
  requires {:id "id120"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
          read($Heap, this, _module.IntSet.root)));
  requires {:id "id121"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.IntSet.Repr)): Set));
  requires {:id "id122"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id123"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            read($Heap, this, _module.IntSet.root)));
  requires {:id "id124"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left))));
  requires {:id "id125"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  requires {:id "id126"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, this, _module.IntSet.root))));
  requires {:id "id127"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref)));
  requires {:id "id128"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> (forall y#0: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#0)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#0))
                 ==> y#0
                   < $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int)));
  requires {:id "id129"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right))));
  requires {:id "id130"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  requires {:id "id131"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, this, _module.IntSet.root))));
  requires {:id "id132"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref)));
  requires {:id "id133"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> (forall y#1: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#1)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#1))
                 ==> $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int
                   < y#1)));
  requires {:id "id134"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, 
                read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)))));
  requires {:id "id135"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))))));
  requires {:id "id136"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union(Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  requires {:id "id137"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Disjoint($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set)));
  requires {:id "id138"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union(Set#Union($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  Set#UnionOne(Set#Empty(): Set, 
                    read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  requires {:id "id139"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
              _module.Node.Contents)): Set));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.IntSet.Valid#canCall($Heap, this);
  free ensures {:id "id140"} _module.IntSet.Valid#canCall($Heap, this)
     && 
    _module.IntSet.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set))
     && ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
          read($Heap, this, _module.IntSet.root))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         && Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
              _module.Node.Contents)): Set));
  ensures {:id "id141"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id142"} Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
    Set#Union($Unbox(read(old($Heap), this, _module.IntSet.Contents)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IntSet.Insert (correctness)"} Impl$$_module.IntSet.Insert(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IntSet())
         && $IsAlloc(this, Tclass._module.IntSet(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id143"} _module.IntSet.Valid#canCall($Heap, this)
     && 
    _module.IntSet.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set))
     && ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
          read($Heap, this, _module.IntSet.root))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         && Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
              _module.Node.Contents)): Set));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.IntSet.Valid#canCall($Heap, this);
  ensures {:id "id144"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this));
  ensures {:id "id145"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set));
  ensures {:id "id146"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
          read($Heap, this, _module.IntSet.root)));
  ensures {:id "id147"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.IntSet.Repr)): Set));
  ensures {:id "id148"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id149"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            read($Heap, this, _module.IntSet.root)));
  ensures {:id "id150"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left))));
  ensures {:id "id151"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  ensures {:id "id152"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, this, _module.IntSet.root))));
  ensures {:id "id153"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref)));
  ensures {:id "id154"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> (forall y#6: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#6)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#6))
                 ==> y#6
                   < $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int)));
  ensures {:id "id155"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right))));
  ensures {:id "id156"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  ensures {:id "id157"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, this, _module.IntSet.root))));
  ensures {:id "id158"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref)));
  ensures {:id "id159"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> (forall y#7: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#7)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#7))
                 ==> $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int
                   < y#7)));
  ensures {:id "id160"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, 
                read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)))));
  ensures {:id "id161"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))))));
  ensures {:id "id162"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union(Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  ensures {:id "id163"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Disjoint($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set)));
  ensures {:id "id164"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union(Set#Union($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  Set#UnionOne(Set#Empty(): Set, 
                    read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  ensures {:id "id165"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
              _module.Node.Contents)): Set));
  ensures {:id "id166"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id167"} Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
    Set#Union($Unbox(read(old($Heap), this, _module.IntSet.Contents)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Node() : Ty
uses {
// Tclass._module.Node Tag
axiom Tag(Tclass._module.Node()) == Tagclass._module.Node
   && TagFamily(Tclass._module.Node()) == tytagFamily$Node;
}

const unique Tagclass._module.Node: TyTag;

// Box/unbox axiom for Tclass._module.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node()) } 
  $IsBox(bx, Tclass._module.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntSet.Insert (correctness)"} Impl$$_module.IntSet.Insert(this: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#t#0: bool;
  var t#0: ref
     where defass#t#0
       ==> $Is(t#0, Tclass._module.Node()) && $IsAlloc(t#0, Tclass._module.Node(), $Heap);
  var $rhs##0: ref;
  var x##0: int;
  var n##0: ref;
  var $rhs#0: ref;
  var $rhs#1: Set;
  var $rhs#2: Set;

    // AddMethodImpl: Insert, Impl$$_module.IntSet.Insert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(45,26)
    assume true;
    // TrCallStmt: Adding lhs with type Node
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := x#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := $Unbox(read($Heap, this, _module.IntSet.root)): ref;
    assert {:id "id168"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember((if n##0 != null
               then $Unbox(read($Heap, n##0, _module.Node.Repr)): Set
               else Set#Empty(): Set), 
            $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id169"} $rhs##0 := Call$$_module.IntSet.InsertHelper(x##0, n##0);
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    defass#t#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(46,10)
    assume true;
    assert {:id "id171"} $_ModifiesFrame[this, _module.IntSet.root];
    assert {:id "id172"} defass#t#0;
    assume true;
    $rhs#0 := t#0;
    $Heap := update($Heap, this, _module.IntSet.root, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(47,14)
    assume true;
    assert {:id "id175"} $_ModifiesFrame[this, _module.IntSet.Contents];
    assert {:id "id176"} $Unbox(read($Heap, this, _module.IntSet.root)): ref != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
        _module.Node.Contents)): Set;
    $Heap := update($Heap, this, _module.IntSet.Contents, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(48,10)
    assume true;
    assert {:id "id179"} $_ModifiesFrame[this, _module.IntSet.Repr];
    assert {:id "id180"} $Unbox(read($Heap, this, _module.IntSet.root)): ref != null;
    assume true;
    $rhs#2 := Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(this)));
    $Heap := update($Heap, this, _module.IntSet.Repr, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "IntSet.InsertHelper (well-formedness)"} CheckWellFormed$$_module.IntSet.InsertHelper(x#0: int, 
    n#0: ref
       where $Is(n#0, Tclass._module.Node?()) && $IsAlloc(n#0, Tclass._module.Node?(), $Heap))
   returns (m#0: ref
       where $Is(m#0, Tclass._module.Node()) && $IsAlloc(m#0, Tclass._module.Node(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntSet.InsertHelper (well-formedness)"} CheckWellFormed$$_module.IntSet.InsertHelper(x#0: int, n#0: ref) returns (m#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var newtype$check#4: ref;
  var newtype$check#5: ref;


    // AddMethodImpl: InsertHelper, CheckWellFormed$$_module.IntSet.InsertHelper
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember((if n#0 != null
             then $Unbox(read($Heap, n#0, _module.Node.Repr)): Set
             else Set#Empty(): Set), 
          $Box($o)));
    if (*)
    {
        newtype$check#0 := null;
        assume {:id "id183"} n#0 == null;
    }
    else
    {
        assume {:id "id184"} n#0 != null;
        assert {:id "id185"} n#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(n#0), Tclass._module.Node?(), $Heap);
        assume _module.Node.Valid#canCall($Heap, n#0);
        assume {:id "id186"} _module.Node.Valid($LS($LZ), $Heap, n#0);
    }

    newtype$check#1 := null;
    if (n#0 != null)
    {
        assert {:id "id187"} n#0 != null;
    }
    else
    {
    }

    newtype$check#2 := null;
    if (n#0 == null)
    {
    }
    else
    {
        assert {:id "id188"} n#0 != null;
    }

    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember((if n#0 != null
               then $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set
               else Set#Empty(): Set), 
            $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc m#0;
    assert {:id "id189"} m#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(m#0), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, m#0);
    assume {:id "id190"} _module.Node.Valid($LS($LZ), $Heap, m#0);
    if (*)
    {
        newtype$check#3 := null;
        assume {:id "id191"} n#0 == null;
        assert {:id "id192"} m#0 != null;
        assume {:id "id193"} (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
        assert {:id "id194"} m#0 != null;
        assume {:id "id195"} Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
    }
    else
    {
        assume {:id "id196"} n#0 == null
           ==> (forall $o: ref :: 
              { $o != null } 
              Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o)) } 
              Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool)
             && Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
    }

    if (*)
    {
        newtype$check#4 := null;
        assume {:id "id197"} n#0 != null;
        assume {:id "id198"} m#0 == n#0;
        assert {:id "id199"} n#0 != null;
        assert {:id "id200"} n#0 != null;
        assert {:id "id201"} $IsAlloc(n#0, Tclass._module.Node?(), old($Heap));
        assume {:id "id202"} Set#Equal($Unbox(read($Heap, n#0, _module.Node.Contents)): Set, 
          Set#Union($Unbox(read(old($Heap), n#0, _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
    }
    else
    {
        assume {:id "id203"} n#0 != null
           ==> m#0 == n#0
             && Set#Equal($Unbox(read($Heap, n#0, _module.Node.Contents)): Set, 
              Set#Union($Unbox(read(old($Heap), n#0, _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
    }

    if (*)
    {
        newtype$check#5 := null;
        assume {:id "id204"} n#0 != null;
        assert {:id "id205"} n#0 != null;
        assert {:id "id206"} n#0 != null;
        assert {:id "id207"} $IsAlloc(n#0, Tclass._module.Node?(), old($Heap));
        assume {:id "id208"} (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { $Unbox(read(old($Heap), $o, alloc)): bool } 
            Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, $Box($o))
                 && !Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else
    {
        assume {:id "id209"} n#0 != null
           ==> (forall $o: ref :: 
              { $o != null } 
              Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { $Unbox(read(old($Heap), $o, alloc)): bool } 
              Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, $Box($o))
                   && !Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
}



procedure {:verboseName "IntSet.InsertHelper (call)"} Call$$_module.IntSet.InsertHelper(x#0: int, 
    n#0: ref
       where $Is(n#0, Tclass._module.Node?()) && $IsAlloc(n#0, Tclass._module.Node?(), $Heap))
   returns (m#0: ref
       where $Is(m#0, Tclass._module.Node()) && $IsAlloc(m#0, Tclass._module.Node(), $Heap));
  // user-defined preconditions
  requires {:id "id210"} n#0 == null || _module.Node.Valid($LS($LS($LZ)), $Heap, n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, m#0);
  free ensures {:id "id211"} _module.Node.Valid#canCall($Heap, m#0)
     && 
    _module.Node.Valid($LS($LZ), $Heap, m#0)
     && 
    Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box(m#0))
     && ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, 
          read($Heap, m#0, _module.Node.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, m#0, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Box(m#0))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref)
         && (forall y#0: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#0)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#0))
             ==> y#0 < $Unbox(read($Heap, m#0, _module.Node.data)): int))
     && ($Unbox(read($Heap, m#0, _module.Node.right)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, 
          read($Heap, m#0, _module.Node.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, m#0, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Box(m#0))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref)
         && (forall y#1: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#1)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#1))
             ==> $Unbox(read($Heap, m#0, _module.Node.data)): int < y#1))
     && ($Unbox(read($Heap, m#0, _module.Node.left)): ref == null
         && $Unbox(read($Heap, m#0, _module.Node.right)): ref == null
       ==> Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, read($Heap, m#0, _module.Node.data))))
     && ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
         && $Unbox(read($Heap, m#0, _module.Node.right)): ref == null
       ==> Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, m#0, _module.Node.data)))))
     && ($Unbox(read($Heap, m#0, _module.Node.left)): ref == null
         && $Unbox(read($Heap, m#0, _module.Node.right)): ref != null
       ==> Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
        Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, m#0, _module.Node.data)), 
          $Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Contents)): Set)))
     && ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
         && $Unbox(read($Heap, m#0, _module.Node.right)): ref != null
       ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Repr)): Set)
         && Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
          Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, m#0, _module.Node.data))), 
            $Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  free ensures true;
  ensures {:id "id212"} n#0 == null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o)) } 
        Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  ensures {:id "id213"} n#0 == null
     ==> Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
  free ensures true;
  ensures {:id "id214"} n#0 != null ==> m#0 == n#0;
  ensures {:id "id215"} n#0 != null
     ==> Set#Equal($Unbox(read($Heap, n#0, _module.Node.Contents)): Set, 
      Set#Union($Unbox(read(old($Heap), n#0, _module.Node.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
  free ensures true;
  ensures {:id "id216"} n#0 != null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember((if n#0 != null
             then $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set
             else Set#Empty(): Set), 
          $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IntSet.InsertHelper (correctness)"} Impl$$_module.IntSet.InsertHelper(x#0: int, 
    n#0: ref
       where $Is(n#0, Tclass._module.Node?()) && $IsAlloc(n#0, Tclass._module.Node?(), $Heap))
   returns (defass#m#0: bool, 
    m#0: ref
       where defass#m#0
         ==> $Is(m#0, Tclass._module.Node()) && $IsAlloc(m#0, Tclass._module.Node(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id217"} n#0 == null || _module.Node.Valid($LS($LS($LZ)), $Heap, n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, m#0);
  ensures {:id "id218"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box(m#0));
  ensures {:id "id219"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, 
          read($Heap, m#0, _module.Node.left)));
  ensures {:id "id220"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, m#0, _module.Node.Repr)): Set));
  ensures {:id "id221"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Box(m#0)));
  ensures {:id "id222"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref));
  ensures {:id "id223"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
         ==> (forall y#2: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#2)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#2))
             ==> y#2 < $Unbox(read($Heap, m#0, _module.Node.data)): int));
  ensures {:id "id224"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.right)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, 
          read($Heap, m#0, _module.Node.right)));
  ensures {:id "id225"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.right)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, m#0, _module.Node.Repr)): Set));
  ensures {:id "id226"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.right)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Box(m#0)));
  ensures {:id "id227"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.right)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref));
  ensures {:id "id228"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.right)): ref != null
         ==> (forall y#3: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#3)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#3))
             ==> $Unbox(read($Heap, m#0, _module.Node.data)): int < y#3));
  ensures {:id "id229"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.left)): ref == null
           && $Unbox(read($Heap, m#0, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, m#0, _module.Node.data))));
  ensures {:id "id230"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, m#0, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
          Set#Union($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, read($Heap, m#0, _module.Node.data)))));
  ensures {:id "id231"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.left)): ref == null
           && $Unbox(read($Heap, m#0, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
          Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, m#0, _module.Node.data)), 
            $Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  ensures {:id "id232"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, m#0, _module.Node.right)): ref != null
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Repr)): Set));
  ensures {:id "id233"} _module.Node.Valid#canCall($Heap, m#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, m#0)
       || ($Unbox(read($Heap, m#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, m#0, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
          Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, m#0, _module.Node.data))), 
            $Unbox(read($Heap, $Unbox(read($Heap, m#0, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  free ensures true;
  ensures {:id "id234"} n#0 == null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o)) } 
        Set#IsMember($Unbox(read($Heap, m#0, _module.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  ensures {:id "id235"} n#0 == null
     ==> Set#Equal($Unbox(read($Heap, m#0, _module.Node.Contents)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
  free ensures true;
  ensures {:id "id236"} n#0 != null ==> m#0 == n#0;
  ensures {:id "id237"} n#0 != null
     ==> Set#Equal($Unbox(read($Heap, n#0, _module.Node.Contents)): Set, 
      Set#Union($Unbox(read(old($Heap), n#0, _module.Node.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
  free ensures true;
  ensures {:id "id238"} n#0 != null
     ==> (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember((if n#0 != null
             then $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set
             else Set#Empty(): Set), 
          $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntSet.InsertHelper (correctness)"} Impl$$_module.IntSet.InsertHelper(x#0: int, n#0: ref) returns (defass#m#0: bool, m#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#6: ref;
  var $nw: ref;
  var x##0_0: int;
  var newtype$check#1_1_0_0: ref;
  var defass#t#1_1_0_0: bool;
  var t#1_1_0_0: ref
     where defass#t#1_1_0_0
       ==> $Is(t#1_1_0_0, Tclass._module.Node())
         && $IsAlloc(t#1_1_0_0, Tclass._module.Node(), $Heap);
  var $rhs##1_1_0_0: ref;
  var x##1_1_0_0: int;
  var n##1_1_0_0: ref;
  var $rhs#1_1_0_0: ref;
  var $rhs#1_1_0_1: Set;
  var newtype$check#1_1_1_0: ref;
  var defass#t#1_1_1_0: bool;
  var t#1_1_1_0: ref
     where defass#t#1_1_1_0
       ==> $Is(t#1_1_1_0, Tclass._module.Node())
         && $IsAlloc(t#1_1_1_0, Tclass._module.Node(), $Heap);
  var $rhs##1_1_1_0: ref;
  var x##1_1_1_0: int;
  var n##1_1_1_0: ref;
  var $rhs#1_1_1_0: ref;
  var $rhs#1_1_1_1: Set;
  var $rhs#1_1_0: Set;

    // AddMethodImpl: InsertHelper, Impl$$_module.IntSet.InsertHelper
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember((if n#0 != null
             then $Unbox(read($Heap, n#0, _module.Node.Repr)): Set
             else Set#Empty(): Set), 
          $Box($o)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(60,5)
    newtype$check#6 := null;
    assume true;
    if (n#0 == null)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(61,9)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(61,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0;
        call {:id "id239"} $nw := Call$$_module.Node.Init(x##0_0);
        // TrCallStmt: After ProcessCallStmt
        m#0 := $nw;
        defass#m#0 := true;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(62,12)
        assert {:id "id241"} n#0 != null;
        assume true;
        if (x#0 == $Unbox(read($Heap, n#0, _module.Node.data)): int)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(63,9)
            assume true;
            assert {:id "id242"} $Is(n#0, Tclass._module.Node());
            assume true;
            m#0 := n#0;
            defass#m#0 := true;
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(65,7)
            assert {:id "id244"} n#0 != null;
            assume true;
            if (x#0 < $Unbox(read($Heap, n#0, _module.Node.data)): int)
            {
                push;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(66,9)
                assert {:id "id245"} {:subsumption 0} n#0 != null;
                newtype$check#1_1_0_0 := null;
                if ($Unbox(read($Heap, n#0, _module.Node.right)): ref != null)
                {
                    assert {:id "id246"} {:subsumption 0} n#0 != null;
                    assert {:id "id247"} {:subsumption 0} $Unbox(read($Heap, n#0, _module.Node.right)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, n#0, _module.Node.right), Tclass._module.Node?(), $Heap);
                    assume _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, n#0, _module.Node.right)): ref);
                }

                assume $Unbox(read($Heap, n#0, _module.Node.right)): ref != null
                   ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, n#0, _module.Node.right)): ref);
                assert {:id "id248"} {:subsumption 0} $Unbox(read($Heap, n#0, _module.Node.right)): ref == null
                   || _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, n#0, _module.Node.right)): ref);
                assume {:id "id249"} $Unbox(read($Heap, n#0, _module.Node.right)): ref == null
                   || _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, n#0, _module.Node.right)): ref);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(67,30)
                assume true;
                // TrCallStmt: Adding lhs with type Node
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##1_1_0_0 := x#0;
                assert {:id "id250"} n#0 != null;
                assume true;
                // ProcessCallStmt: CheckSubrange
                n##1_1_0_0 := $Unbox(read($Heap, n#0, _module.Node.left)): ref;
                assert {:id "id251"} (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember((if n##1_1_0_0 != null
                           then $Unbox(read($Heap, n##1_1_0_0, _module.Node.Repr)): Set
                           else Set#Empty(): Set), 
                        $Box($o))
                     ==> $_ModifiesFrame[$o, $f]);
                assert {:id "id252"} Set#Subset((if n##1_1_0_0 == null
                       then Set#Empty(): Set
                       else $Unbox(read($Heap, n##1_1_0_0, _module.Node.Repr)): Set), 
                    (if n#0 == null
                       then Set#Empty(): Set
                       else $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set))
                   && !Set#Subset((if n#0 == null
                       then Set#Empty(): Set
                       else $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set), 
                    (if n##1_1_0_0 == null
                       then Set#Empty(): Set
                       else $Unbox(read($Heap, n##1_1_0_0, _module.Node.Repr)): Set));
                call {:id "id253"} $rhs##1_1_0_0 := Call$$_module.IntSet.InsertHelper(x##1_1_0_0, n##1_1_0_0);
                // TrCallStmt: After ProcessCallStmt
                t#1_1_0_0 := $rhs##1_1_0_0;
                defass#t#1_1_0_0 := true;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(68,16)
                assert {:id "id255"} n#0 != null;
                assume true;
                assert {:id "id256"} $_ModifiesFrame[n#0, _module.Node.left];
                assert {:id "id257"} defass#t#1_1_0_0;
                assume true;
                $rhs#1_1_0_0 := t#1_1_0_0;
                $Heap := update($Heap, n#0, _module.Node.left, $Box($rhs#1_1_0_0));
                assume $IsGoodHeap($Heap);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(69,16)
                assert {:id "id260"} n#0 != null;
                assume true;
                assert {:id "id261"} $_ModifiesFrame[n#0, _module.Node.Repr];
                assert {:id "id262"} n#0 != null;
                assert {:id "id263"} n#0 != null;
                assert {:id "id264"} $Unbox(read($Heap, n#0, _module.Node.left)): ref != null;
                assume true;
                $rhs#1_1_0_1 := Set#Union($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, $Unbox(read($Heap, n#0, _module.Node.left)): ref, _module.Node.Repr)): Set);
                $Heap := update($Heap, n#0, _module.Node.Repr, $Box($rhs#1_1_0_1));
                assume $IsGoodHeap($Heap);
                pop;
            }
            else
            {
                push;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(71,9)
                assert {:id "id267"} {:subsumption 0} n#0 != null;
                newtype$check#1_1_1_0 := null;
                if ($Unbox(read($Heap, n#0, _module.Node.left)): ref != null)
                {
                    assert {:id "id268"} {:subsumption 0} n#0 != null;
                    assert {:id "id269"} {:subsumption 0} $Unbox(read($Heap, n#0, _module.Node.left)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, n#0, _module.Node.left), Tclass._module.Node?(), $Heap);
                    assume _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, n#0, _module.Node.left)): ref);
                }

                assume $Unbox(read($Heap, n#0, _module.Node.left)): ref != null
                   ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, n#0, _module.Node.left)): ref);
                assert {:id "id270"} {:subsumption 0} $Unbox(read($Heap, n#0, _module.Node.left)): ref == null
                   || _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, n#0, _module.Node.left)): ref);
                assume {:id "id271"} $Unbox(read($Heap, n#0, _module.Node.left)): ref == null
                   || _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, n#0, _module.Node.left)): ref);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(72,30)
                assume true;
                // TrCallStmt: Adding lhs with type Node
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##1_1_1_0 := x#0;
                assert {:id "id272"} n#0 != null;
                assume true;
                // ProcessCallStmt: CheckSubrange
                n##1_1_1_0 := $Unbox(read($Heap, n#0, _module.Node.right)): ref;
                assert {:id "id273"} (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember((if n##1_1_1_0 != null
                           then $Unbox(read($Heap, n##1_1_1_0, _module.Node.Repr)): Set
                           else Set#Empty(): Set), 
                        $Box($o))
                     ==> $_ModifiesFrame[$o, $f]);
                assert {:id "id274"} Set#Subset((if n##1_1_1_0 == null
                       then Set#Empty(): Set
                       else $Unbox(read($Heap, n##1_1_1_0, _module.Node.Repr)): Set), 
                    (if n#0 == null
                       then Set#Empty(): Set
                       else $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set))
                   && !Set#Subset((if n#0 == null
                       then Set#Empty(): Set
                       else $Unbox(read(old($Heap), n#0, _module.Node.Repr)): Set), 
                    (if n##1_1_1_0 == null
                       then Set#Empty(): Set
                       else $Unbox(read($Heap, n##1_1_1_0, _module.Node.Repr)): Set));
                call {:id "id275"} $rhs##1_1_1_0 := Call$$_module.IntSet.InsertHelper(x##1_1_1_0, n##1_1_1_0);
                // TrCallStmt: After ProcessCallStmt
                t#1_1_1_0 := $rhs##1_1_1_0;
                defass#t#1_1_1_0 := true;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(73,17)
                assert {:id "id277"} n#0 != null;
                assume true;
                assert {:id "id278"} $_ModifiesFrame[n#0, _module.Node.right];
                assert {:id "id279"} defass#t#1_1_1_0;
                assume true;
                $rhs#1_1_1_0 := t#1_1_1_0;
                $Heap := update($Heap, n#0, _module.Node.right, $Box($rhs#1_1_1_0));
                assume $IsGoodHeap($Heap);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(74,16)
                assert {:id "id282"} n#0 != null;
                assume true;
                assert {:id "id283"} $_ModifiesFrame[n#0, _module.Node.Repr];
                assert {:id "id284"} n#0 != null;
                assert {:id "id285"} n#0 != null;
                assert {:id "id286"} $Unbox(read($Heap, n#0, _module.Node.right)): ref != null;
                assume true;
                $rhs#1_1_1_1 := Set#Union($Unbox(read($Heap, n#0, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, $Unbox(read($Heap, n#0, _module.Node.right)): ref, _module.Node.Repr)): Set);
                $Heap := update($Heap, n#0, _module.Node.Repr, $Box($rhs#1_1_1_1));
                assume $IsGoodHeap($Heap);
                pop;
            }

            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(76,18)
            assert {:id "id289"} n#0 != null;
            assume true;
            assert {:id "id290"} $_ModifiesFrame[n#0, _module.Node.Contents];
            assert {:id "id291"} n#0 != null;
            assume true;
            $rhs#1_1_0 := Set#Union($Unbox(read($Heap, n#0, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
            $Heap := update($Heap, n#0, _module.Node.Contents, $Box($rhs#1_1_0));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(77,9)
            assume true;
            assert {:id "id294"} $Is(n#0, Tclass._module.Node());
            assume true;
            m#0 := n#0;
            defass#m#0 := true;
        }
    }

    assert {:id "id296"} defass#m#0;
}



procedure {:verboseName "IntSet.Remove (well-formedness)"} CheckWellFormed$$_module.IntSet.Remove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IntSet())
         && $IsAlloc(this, Tclass._module.IntSet(), $Heap), 
    x#0: int);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntSet.Remove (well-formedness)"} CheckWellFormed$$_module.IntSet.Remove(this: ref, x#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Remove, CheckWellFormed$$_module.IntSet.Remove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.IntSet?(), $Heap);
    assume _module.IntSet.Valid#canCall($Heap, this);
    assume {:id "id297"} _module.IntSet.Valid($Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.IntSet?(), $Heap);
    assume _module.IntSet.Valid#canCall($Heap, this);
    assume {:id "id298"} _module.IntSet.Valid($Heap, this);
    assert {:id "id299"} $IsAlloc(this, Tclass._module.IntSet(), old($Heap));
    assume {:id "id300"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    assert {:id "id301"} $IsAlloc(this, Tclass._module.IntSet(), old($Heap));
    assume {:id "id302"} Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
      Set#Difference($Unbox(read(old($Heap), this, _module.IntSet.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
}



procedure {:verboseName "IntSet.Remove (call)"} Call$$_module.IntSet.Remove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IntSet())
         && $IsAlloc(this, Tclass._module.IntSet(), $Heap), 
    x#0: int);
  // user-defined preconditions
  requires {:id "id303"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this));
  requires {:id "id304"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set));
  requires {:id "id305"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
          read($Heap, this, _module.IntSet.root)));
  requires {:id "id306"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.IntSet.Repr)): Set));
  requires {:id "id307"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id308"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            read($Heap, this, _module.IntSet.root)));
  requires {:id "id309"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left))));
  requires {:id "id310"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  requires {:id "id311"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, this, _module.IntSet.root))));
  requires {:id "id312"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref)));
  requires {:id "id313"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> (forall y#0: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#0)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#0))
                 ==> y#0
                   < $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int)));
  requires {:id "id314"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right))));
  requires {:id "id315"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  requires {:id "id316"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, this, _module.IntSet.root))));
  requires {:id "id317"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref)));
  requires {:id "id318"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> (forall y#1: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#1)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#1))
                 ==> $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int
                   < y#1)));
  requires {:id "id319"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, 
                read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)))));
  requires {:id "id320"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))))));
  requires {:id "id321"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union(Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  requires {:id "id322"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Disjoint($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set)));
  requires {:id "id323"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union(Set#Union($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  Set#UnionOne(Set#Empty(): Set, 
                    read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  requires {:id "id324"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
              _module.Node.Contents)): Set));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.IntSet.Valid#canCall($Heap, this);
  free ensures {:id "id325"} _module.IntSet.Valid#canCall($Heap, this)
     && 
    _module.IntSet.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set))
     && ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
          read($Heap, this, _module.IntSet.root))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         && Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
              _module.Node.Contents)): Set));
  ensures {:id "id326"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id327"} Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
    Set#Difference($Unbox(read(old($Heap), this, _module.IntSet.Contents)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IntSet.Remove (correctness)"} Impl$$_module.IntSet.Remove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IntSet())
         && $IsAlloc(this, Tclass._module.IntSet(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id328"} _module.IntSet.Valid#canCall($Heap, this)
     && 
    _module.IntSet.Valid($Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set))
     && ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
          read($Heap, this, _module.IntSet.root))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.IntSet.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         && Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
              _module.Node.Contents)): Set));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.IntSet.Valid#canCall($Heap, this);
  ensures {:id "id329"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box(this));
  ensures {:id "id330"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, Set#Empty(): Set));
  ensures {:id "id331"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, 
          read($Heap, this, _module.IntSet.root)));
  ensures {:id "id332"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.IntSet.Repr)): Set));
  ensures {:id "id333"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id334"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            read($Heap, this, _module.IntSet.root)));
  ensures {:id "id335"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left))));
  ensures {:id "id336"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  ensures {:id "id337"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, this, _module.IntSet.root))));
  ensures {:id "id338"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref)));
  ensures {:id "id339"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> (forall y#6: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#6)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#6))
                 ==> y#6
                   < $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int)));
  ensures {:id "id340"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right))));
  ensures {:id "id341"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  ensures {:id "id342"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, this, _module.IntSet.root))));
  ensures {:id "id343"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref)));
  ensures {:id "id344"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> (forall y#7: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#7)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#7))
                 ==> $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)): int
                   < y#7)));
  ensures {:id "id345"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, 
                read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)))));
  ensures {:id "id346"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))))));
  ensures {:id "id347"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union(Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  ensures {:id "id348"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Disjoint($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set)));
  ensures {:id "id349"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                  _module.Node.Contents)): Set, 
              Set#Union(Set#Union($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  Set#UnionOne(Set#Empty(): Set, 
                    read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.data))), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  ensures {:id "id350"} _module.IntSet.Valid#canCall($Heap, this)
     ==> _module.IntSet.Valid($Heap, this)
       || ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, 
              $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
              _module.Node.Contents)): Set));
  ensures {:id "id351"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id352"} Set#Equal($Unbox(read($Heap, this, _module.IntSet.Contents)): Set, 
    Set#Difference($Unbox(read(old($Heap), this, _module.IntSet.Contents)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.IntSet.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntSet.Remove (correctness)"} Impl$$_module.IntSet.Remove(this: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newRoot#0_0: ref
     where $Is(newRoot#0_0, Tclass._module.Node?())
       && $IsAlloc(newRoot#0_0, Tclass._module.Node?(), $Heap);
  var $rhs##0_0: ref;
  var x##0_0: int;
  var $rhs#0_0: ref;
  var newtype$check#0_0: ref;
  var $rhs#0_0_0: Set;
  var $rhs#0_0_1: Set;
  var $rhs#0_1_0: Set;
  var $rhs#0_1_1: Set;

    // AddMethodImpl: Remove, Impl$$_module.IntSet.Remove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.IntSet.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(87,5)
    newtype$check#0 := null;
    assume true;
    if ($Unbox(read($Heap, this, _module.IntSet.root)): ref != null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(88,33)
        assume true;
        // TrCallStmt: Adding lhs with type Node?
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id353"} $Unbox(read($Heap, this, _module.IntSet.root)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0;
        assert {:id "id354"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id355"} $rhs##0_0 := Call$$_module.Node.Remove($Unbox(read($Heap, this, _module.IntSet.root)): ref, x##0_0);
        // TrCallStmt: After ProcessCallStmt
        newRoot#0_0 := $rhs##0_0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(89,12)
        assume true;
        assert {:id "id357"} $_ModifiesFrame[this, _module.IntSet.root];
        assume true;
        $rhs#0_0 := newRoot#0_0;
        $Heap := update($Heap, this, _module.IntSet.root, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(90,7)
        newtype$check#0_0 := null;
        assume true;
        if ($Unbox(read($Heap, this, _module.IntSet.root)): ref == null)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(91,18)
            assume true;
            assert {:id "id360"} $_ModifiesFrame[this, _module.IntSet.Contents];
            assume true;
            $rhs#0_0_0 := Lit(Set#Empty(): Set);
            $Heap := update($Heap, this, _module.IntSet.Contents, $Box($rhs#0_0_0));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(92,14)
            assume true;
            assert {:id "id363"} $_ModifiesFrame[this, _module.IntSet.Repr];
            assume true;
            $rhs#0_0_1 := Set#UnionOne(Set#Empty(): Set, $Box(this));
            $Heap := update($Heap, this, _module.IntSet.Repr, $Box($rhs#0_0_1));
            assume $IsGoodHeap($Heap);
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(94,18)
            assume true;
            assert {:id "id366"} $_ModifiesFrame[this, _module.IntSet.Contents];
            assert {:id "id367"} $Unbox(read($Heap, this, _module.IntSet.root)): ref != null;
            assume true;
            $rhs#0_1_0 := $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.IntSet.root)): ref, 
                _module.Node.Contents)): Set;
            $Heap := update($Heap, this, _module.IntSet.Contents, $Box($rhs#0_1_0));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(95,14)
            assume true;
            assert {:id "id370"} $_ModifiesFrame[this, _module.IntSet.Repr];
            assert {:id "id371"} $Unbox(read($Heap, this, _module.IntSet.root)): ref != null;
            assume true;
            $rhs#0_1_1 := Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(this)));
            $Heap := update($Heap, this, _module.IntSet.Repr, $Box($rhs#0_1_1));
            assume $IsGoodHeap($Heap);
        }
    }
    else
    {
    }
}



// $Is axiom for non-null type _module.IntSet
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.IntSet()) } { $Is(c#0, Tclass._module.IntSet?()) } 
  $Is(c#0, Tclass._module.IntSet())
     <==> $Is(c#0, Tclass._module.IntSet?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.IntSet
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.IntSet(), $h) } 
    { $IsAlloc(c#0, Tclass._module.IntSet?(), $h) } 
  $IsAlloc(c#0, Tclass._module.IntSet(), $h)
     <==> $IsAlloc(c#0, Tclass._module.IntSet?(), $h));

const unique class._module.Node?: ClassName;

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Node?()) } 
  $Is($o, Tclass._module.Node?())
     <==> $o == null || dtype($o) == Tclass._module.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Node?(), $h) } 
  $IsAlloc($o, Tclass._module.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Node.Contents: Field
uses {
axiom FDim(_module.Node.Contents) == 0
   && FieldOfDecl(class._module.Node?, field$Contents) == _module.Node.Contents
   && $IsGhostField(_module.Node.Contents);
}

// Node.Contents: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.Contents)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.Contents)): Set, TSet(TInt)));

// Node.Contents: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.Contents)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.Contents)): Set, TSet(TInt), $h));

const _module.Node.Repr: Field
uses {
axiom FDim(_module.Node.Repr) == 0
   && FieldOfDecl(class._module.Node?, field$Repr) == _module.Node.Repr
   && $IsGhostField(_module.Node.Repr);
}

// Node.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.Repr)): Set, TSet(Tclass._System.object())));

// Node.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.Repr)): Set, TSet(Tclass._System.object()), $h));

const _module.Node.data: Field
uses {
axiom FDim(_module.Node.data) == 0
   && FieldOfDecl(class._module.Node?, field$data) == _module.Node.data
   && !$IsGhostField(_module.Node.data);
}

// Node.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.data)): int, TInt));

// Node.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.data)): int, TInt, $h));

const _module.Node.left: Field
uses {
axiom FDim(_module.Node.left) == 0
   && FieldOfDecl(class._module.Node?, field$left) == _module.Node.left
   && !$IsGhostField(_module.Node.left);
}

// Node.left: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.left)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.left)): ref, Tclass._module.Node?()));

// Node.left: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.left)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.left)): ref, Tclass._module.Node?(), $h));

const _module.Node.right: Field
uses {
axiom FDim(_module.Node.right) == 0
   && FieldOfDecl(class._module.Node?, field$right) == _module.Node.right
   && !$IsGhostField(_module.Node.right);
}

// Node.right: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.right)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.right)): ref, Tclass._module.Node?()));

// Node.right: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.right)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.right)): ref, Tclass._module.Node?(), $h));

// function declaration for _module.Node.Valid
function _module.Node.Valid($ly: LayerType, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.Node.Valid
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.Node.Valid($ly, $Heap, this) } 
    _module.Node.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap))
       ==> 
      _module.Node.Valid($ly, $Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this)));
// definition axiom for _module.Node.Valid (revealed)
axiom {:id "id374"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.Node.Valid($LS($ly), $Heap, this), $IsGoodHeap($Heap) } 
    _module.Node.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           ==> ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.left))
               ==> 
              Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               ==> 
              !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref))
             && (
              ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.left))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($ly, $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                 && (forall y#0: int :: 
                  { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                      $Box(y#0)) } 
                  Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                      $Box(y#0))
                     ==> y#0 < $Unbox(read($Heap, this, _module.Node.data)): int))
               ==> 
              $Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.right))
               ==> 
              Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               ==> 
              !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)))
         && _module.Node.Valid($LS($ly), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.left))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($ly, $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                 && (forall y#0: int :: 
                  { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                      $Box(y#0)) } 
                  Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                      $Box(y#0))
                     ==> y#0 < $Unbox(read($Heap, this, _module.Node.data)): int))
             && ($Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.right))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($ly, $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                 && (forall y#1: int :: 
                  { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                      $Box(y#1)) } 
                  Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                      $Box(y#1))
                     ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#1))
             && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref == null
               ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))))
             && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref == null
               ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                  Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))))
             && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)), 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)))
             && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set)
                 && Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                  Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                      Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))), 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)))));
}

function _module.Node.Valid#canCall($heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid($LS($ly), $Heap, this) } 
  _module.Node.Valid($LS($ly), $Heap, this)
     == _module.Node.Valid($ly, $Heap, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid(AsFuelBottom($ly), $Heap, this) } 
  _module.Node.Valid($ly, $Heap, this) == _module.Node.Valid($LZ, $Heap, this));

// frame axiom for _module.Node.Valid
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.Valid($ly, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Node.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.Valid($ly, $h0, this) == _module.Node.Valid($ly, $h1, this));

function _module.Node.Valid#requires(LayerType, Heap, ref) : bool;

// #requires axiom for _module.Node.Valid
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid#requires($ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
     ==> _module.Node.Valid#requires($ly, $Heap, this) == true);

procedure {:verboseName "Node.Valid (well-formedness)"} CheckWellformed$$_module.Node.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id375"} _module.Node.Valid($LS($LZ), $Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Valid (well-formedness)"} CheckWellformed$$_module.Node.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var newtype$check#0: ref;
  var y#2: int;
  var newtype$check#1: ref;
  var y#3: int;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var newtype$check#4: ref;
  var newtype$check#5: ref;
  var newtype$check#6: ref;
  var newtype$check#7: ref;
  var newtype$check#8: ref;
  var newtype$check#9: ref;
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
  var b$reqreads#44: bool;
  var b$reqreads#45: bool;
  var b$reqreads#46: bool;
  var b$reqreads#47: bool;
  var b$reqreads#48: bool;
  var b$reqreads#49: bool;
  var b$reqreads#50: bool;
  var b$reqreads#51: bool;
  var b$reqreads#52: bool;
  var b$reqreads#53: bool;
  var b$reqreads#54: bool;
  var b$reqreads#55: bool;

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
    b$reqreads#44 := true;
    b$reqreads#45 := true;
    b$reqreads#46 := true;
    b$reqreads#47 := true;
    b$reqreads#48 := true;
    b$reqreads#49 := true;
    b$reqreads#50 := true;
    b$reqreads#51 := true;
    b$reqreads#52 := true;
    b$reqreads#53 := true;
    b$reqreads#54 := true;
    b$reqreads#55 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Node.Repr];
    assert {:id "id376"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            assert {:id "id377"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || _module.Node.Valid#canCall($Heap, this);
            assume {:id "id378"} _module.Node.Valid($LS($LZ), $Heap, this);
            assume {:id "id379"} Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id380"} _module.Node.Valid($LS($LZ), $Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.Node.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.Node.left];
            newtype$check#0 := null;
            if ($Unbox(read($Heap, this, _module.Node.left)): ref != null)
            {
                b$reqreads#3 := $_ReadsFrame[this, _module.Node.left];
                b$reqreads#4 := $_ReadsFrame[this, _module.Node.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.left)))
                {
                    b$reqreads#5 := $_ReadsFrame[this, _module.Node.left];
                    assert {:id "id381"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
                    b$reqreads#6 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr];
                    b$reqreads#7 := $_ReadsFrame[this, _module.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set))
                {
                    b$reqreads#8 := $_ReadsFrame[this, _module.Node.left];
                    assert {:id "id382"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
                    b$reqreads#9 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#10 := $_ReadsFrame[this, _module.Node.left];
                    assert {:id "id383"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.Node.left), Tclass._module.Node?(), $Heap);
                    b$reqreads#11 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.Node.left)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id384"} Set#Subset(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.left))), 
                        Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.left))));
                    assume _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref);
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                    $Box(this))
                   && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref))
                {
                    // Begin Comprehension WF check
                    havoc y#2;
                    if (true)
                    {
                        b$reqreads#12 := $_ReadsFrame[this, _module.Node.left];
                        assert {:id "id385"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
                        b$reqreads#13 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents];
                        if (Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                          $Box(y#2)))
                        {
                            b$reqreads#14 := $_ReadsFrame[this, _module.Node.data];
                        }
                    }

                    // End Comprehension WF check
                }
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
               && (forall y#4: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#4)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#4))
                   ==> y#4 < $Unbox(read($Heap, this, _module.Node.data)): int)))
        {
            b$reqreads#15 := $_ReadsFrame[this, _module.Node.right];
            newtype$check#1 := null;
            if ($Unbox(read($Heap, this, _module.Node.right)): ref != null)
            {
                b$reqreads#16 := $_ReadsFrame[this, _module.Node.right];
                b$reqreads#17 := $_ReadsFrame[this, _module.Node.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.right)))
                {
                    b$reqreads#18 := $_ReadsFrame[this, _module.Node.right];
                    assert {:id "id386"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                    b$reqreads#19 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr];
                    b$reqreads#20 := $_ReadsFrame[this, _module.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.right))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set))
                {
                    b$reqreads#21 := $_ReadsFrame[this, _module.Node.right];
                    assert {:id "id387"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                    b$reqreads#22 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.right))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#23 := $_ReadsFrame[this, _module.Node.right];
                    assert {:id "id388"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.Node.right), Tclass._module.Node?(), $Heap);
                    b$reqreads#24 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.Node.right)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id389"} Set#Subset(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.right))), 
                        Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.right))));
                    assume _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref);
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.right))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                    $Box(this))
                   && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref))
                {
                    // Begin Comprehension WF check
                    havoc y#3;
                    if (true)
                    {
                        b$reqreads#25 := $_ReadsFrame[this, _module.Node.right];
                        assert {:id "id390"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                        b$reqreads#26 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents];
                        if (Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                          $Box(y#3)))
                        {
                            b$reqreads#27 := $_ReadsFrame[this, _module.Node.data];
                        }
                    }

                    // End Comprehension WF check
                }
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
               && (forall y#4: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#4)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#4))
                   ==> y#4 < $Unbox(read($Heap, this, _module.Node.data)): int))
           && ($Unbox(read($Heap, this, _module.Node.right)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.right))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
               && (forall y#5: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                    $Box(y#5)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                    $Box(y#5))
                   ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#5)))
        {
            b$reqreads#28 := $_ReadsFrame[this, _module.Node.left];
            newtype$check#2 := null;
            if ($Unbox(read($Heap, this, _module.Node.left)): ref == null)
            {
                b$reqreads#29 := $_ReadsFrame[this, _module.Node.right];
                newtype$check#3 := null;
            }

            if ($Unbox(read($Heap, this, _module.Node.left)): ref == null
               && $Unbox(read($Heap, this, _module.Node.right)): ref == null)
            {
                b$reqreads#30 := $_ReadsFrame[this, _module.Node.Contents];
                b$reqreads#31 := $_ReadsFrame[this, _module.Node.data];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
               && (forall y#4: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#4)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#4))
                   ==> y#4 < $Unbox(read($Heap, this, _module.Node.data)): int))
           && ($Unbox(read($Heap, this, _module.Node.right)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.right))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
               && (forall y#5: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                    $Box(y#5)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                    $Box(y#5))
                   ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#5))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
               && $Unbox(read($Heap, this, _module.Node.right)): ref == null
             ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))))
        {
            b$reqreads#32 := $_ReadsFrame[this, _module.Node.left];
            newtype$check#4 := null;
            if ($Unbox(read($Heap, this, _module.Node.left)): ref != null)
            {
                b$reqreads#33 := $_ReadsFrame[this, _module.Node.right];
                newtype$check#5 := null;
            }

            if ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               && $Unbox(read($Heap, this, _module.Node.right)): ref == null)
            {
                b$reqreads#34 := $_ReadsFrame[this, _module.Node.Contents];
                b$reqreads#35 := $_ReadsFrame[this, _module.Node.left];
                assert {:id "id391"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
                b$reqreads#36 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents];
                b$reqreads#37 := $_ReadsFrame[this, _module.Node.data];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
               && (forall y#4: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#4)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#4))
                   ==> y#4 < $Unbox(read($Heap, this, _module.Node.data)): int))
           && ($Unbox(read($Heap, this, _module.Node.right)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.right))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
               && (forall y#5: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                    $Box(y#5)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                    $Box(y#5))
                   ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#5))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
               && $Unbox(read($Heap, this, _module.Node.right)): ref == null
             ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               && $Unbox(read($Heap, this, _module.Node.right)): ref == null
             ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
              Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))))))
        {
            b$reqreads#38 := $_ReadsFrame[this, _module.Node.left];
            newtype$check#6 := null;
            if ($Unbox(read($Heap, this, _module.Node.left)): ref == null)
            {
                b$reqreads#39 := $_ReadsFrame[this, _module.Node.right];
                newtype$check#7 := null;
            }

            if ($Unbox(read($Heap, this, _module.Node.left)): ref == null
               && $Unbox(read($Heap, this, _module.Node.right)): ref != null)
            {
                b$reqreads#40 := $_ReadsFrame[this, _module.Node.Contents];
                b$reqreads#41 := $_ReadsFrame[this, _module.Node.data];
                b$reqreads#42 := $_ReadsFrame[this, _module.Node.right];
                assert {:id "id392"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                b$reqreads#43 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
               && (forall y#4: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#4)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#4))
                   ==> y#4 < $Unbox(read($Heap, this, _module.Node.data)): int))
           && ($Unbox(read($Heap, this, _module.Node.right)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.right))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
               && (forall y#5: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                    $Box(y#5)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                    $Box(y#5))
                   ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#5))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
               && $Unbox(read($Heap, this, _module.Node.right)): ref == null
             ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               && $Unbox(read($Heap, this, _module.Node.right)): ref == null
             ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
              Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))))
           && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
               && $Unbox(read($Heap, this, _module.Node.right)): ref != null
             ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
              Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)), 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set))))
        {
            b$reqreads#44 := $_ReadsFrame[this, _module.Node.left];
            newtype$check#8 := null;
            if ($Unbox(read($Heap, this, _module.Node.left)): ref != null)
            {
                b$reqreads#45 := $_ReadsFrame[this, _module.Node.right];
                newtype$check#9 := null;
            }

            if ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               && $Unbox(read($Heap, this, _module.Node.right)): ref != null)
            {
                b$reqreads#46 := $_ReadsFrame[this, _module.Node.left];
                assert {:id "id393"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
                b$reqreads#47 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr];
                b$reqreads#48 := $_ReadsFrame[this, _module.Node.right];
                assert {:id "id394"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                b$reqreads#49 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr];
                if (Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set))
                {
                    b$reqreads#50 := $_ReadsFrame[this, _module.Node.Contents];
                    b$reqreads#51 := $_ReadsFrame[this, _module.Node.left];
                    assert {:id "id395"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
                    b$reqreads#52 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents];
                    b$reqreads#53 := $_ReadsFrame[this, _module.Node.data];
                    b$reqreads#54 := $_ReadsFrame[this, _module.Node.right];
                    assert {:id "id396"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                    b$reqreads#55 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents];
                }
            }
        }

        assume {:id "id397"} _module.Node.Valid($LS($LZ), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.left))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                 && (forall y#4: int :: 
                  { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                      $Box(y#4)) } 
                  Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                      $Box(y#4))
                     ==> y#4 < $Unbox(read($Heap, this, _module.Node.data)): int))
             && ($Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.right))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                 && (forall y#5: int :: 
                  { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                      $Box(y#5)) } 
                  Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                      $Box(y#5))
                     ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#5))
             && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref == null
               ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))))
             && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref == null
               ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                  Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))))
             && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)), 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)))
             && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set)
                 && Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                  Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                      Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))), 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set))));
        assume Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           ==> ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.left))
               ==> 
              Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               ==> 
              !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref))
             && (
              ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.left))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                 && (forall y#4: int :: 
                  { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                      $Box(y#4)) } 
                  Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                      $Box(y#4))
                     ==> y#4 < $Unbox(read($Heap, this, _module.Node.data)): int))
               ==> 
              $Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> 
              Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.right))
               ==> 
              Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set)
               ==> 
              !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Box(this))
               ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Node.Valid($LS($LZ), $Heap, this), TBool);
        assert {:id "id398"} b$reqreads#1;
        assert {:id "id399"} b$reqreads#2;
        assert {:id "id400"} b$reqreads#3;
        assert {:id "id401"} b$reqreads#4;
        assert {:id "id402"} b$reqreads#5;
        assert {:id "id403"} b$reqreads#6;
        assert {:id "id404"} b$reqreads#7;
        assert {:id "id405"} b$reqreads#8;
        assert {:id "id406"} b$reqreads#9;
        assert {:id "id407"} b$reqreads#10;
        assert {:id "id408"} b$reqreads#11;
        assert {:id "id409"} b$reqreads#12;
        assert {:id "id410"} b$reqreads#13;
        assert {:id "id411"} b$reqreads#14;
        assert {:id "id412"} b$reqreads#15;
        assert {:id "id413"} b$reqreads#16;
        assert {:id "id414"} b$reqreads#17;
        assert {:id "id415"} b$reqreads#18;
        assert {:id "id416"} b$reqreads#19;
        assert {:id "id417"} b$reqreads#20;
        assert {:id "id418"} b$reqreads#21;
        assert {:id "id419"} b$reqreads#22;
        assert {:id "id420"} b$reqreads#23;
        assert {:id "id421"} b$reqreads#24;
        assert {:id "id422"} b$reqreads#25;
        assert {:id "id423"} b$reqreads#26;
        assert {:id "id424"} b$reqreads#27;
        assert {:id "id425"} b$reqreads#28;
        assert {:id "id426"} b$reqreads#29;
        assert {:id "id427"} b$reqreads#30;
        assert {:id "id428"} b$reqreads#31;
        assert {:id "id429"} b$reqreads#32;
        assert {:id "id430"} b$reqreads#33;
        assert {:id "id431"} b$reqreads#34;
        assert {:id "id432"} b$reqreads#35;
        assert {:id "id433"} b$reqreads#36;
        assert {:id "id434"} b$reqreads#37;
        assert {:id "id435"} b$reqreads#38;
        assert {:id "id436"} b$reqreads#39;
        assert {:id "id437"} b$reqreads#40;
        assert {:id "id438"} b$reqreads#41;
        assert {:id "id439"} b$reqreads#42;
        assert {:id "id440"} b$reqreads#43;
        assert {:id "id441"} b$reqreads#44;
        assert {:id "id442"} b$reqreads#45;
        assert {:id "id443"} b$reqreads#46;
        assert {:id "id444"} b$reqreads#47;
        assert {:id "id445"} b$reqreads#48;
        assert {:id "id446"} b$reqreads#49;
        assert {:id "id447"} b$reqreads#50;
        assert {:id "id448"} b$reqreads#51;
        assert {:id "id449"} b$reqreads#52;
        assert {:id "id450"} b$reqreads#53;
        assert {:id "id451"} b$reqreads#54;
        assert {:id "id452"} b$reqreads#55;
        return;

        assume false;
    }
}



procedure {:verboseName "Node.Init (well-formedness)"} CheckWellFormed$$_module.Node.Init(x#0: int) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.Init (call)"} Call$$_module.Node.Init(x#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  free ensures {:id "id456"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
         && (forall y#0: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#0)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#0))
             ==> y#0 < $Unbox(read($Heap, this, _module.Node.data)): int))
     && ($Unbox(read($Heap, this, _module.Node.right)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
         && (forall y#1: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#1)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#1))
             ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#1))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
         && $Unbox(read($Heap, this, _module.Node.right)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         && $Unbox(read($Heap, this, _module.Node.right)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
         && $Unbox(read($Heap, this, _module.Node.right)): ref != null
       ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
        Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)), 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         && $Unbox(read($Heap, this, _module.Node.right)): ref != null
       ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set)
         && Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  ensures {:id "id457"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id458"} Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
    Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Init (correctness)"} Impl$$_module.Node.Init(x#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  ensures {:id "id459"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  ensures {:id "id460"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.left)));
  ensures {:id "id461"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  ensures {:id "id462"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id463"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref));
  ensures {:id "id464"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> (forall y#2: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#2)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#2))
             ==> y#2 < $Unbox(read($Heap, this, _module.Node.data)): int));
  ensures {:id "id465"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.right)));
  ensures {:id "id466"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  ensures {:id "id467"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id468"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref));
  ensures {:id "id469"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> (forall y#3: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#3)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#3))
             ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#3));
  ensures {:id "id470"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref == null
           && $Unbox(read($Heap, this, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))));
  ensures {:id "id471"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
           && $Unbox(read($Heap, this, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))));
  ensures {:id "id472"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref == null
           && $Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  ensures {:id "id473"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
           && $Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set));
  ensures {:id "id474"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
           && $Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  ensures {:id "id475"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id476"} Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
    Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Init (correctness)"} Impl$$_module.Node.Init(x#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Contents: Set;
  var this.Repr: Set;
  var this.data: int;
  var this.left: ref;
  var this.right: ref;
  var newtype$check#0: ref;
  var newtype$check#1: ref;

    // AddMethodImpl: Init, Impl$$_module.Node.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(138,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(139,10)
    assume true;
    assume true;
    this.data := x#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(140,10)
    assume true;
    newtype$check#0 := null;
    assume true;
    this.left := null;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(141,11)
    assume true;
    newtype$check#1 := null;
    assume true;
    this.right := null;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(142,14)
    assume true;
    assume true;
    this.Contents := Set#UnionOne(Set#Empty(): Set, $Box(x#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(143,10)
    assume true;
    assume true;
    this.Repr := Set#UnionOne(Set#Empty(): Set, $Box(this));
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(138,3)
    assume this != null && $Is(this, Tclass._module.Node?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Node.Contents)): Set == this.Contents;
    assume $Unbox(read($Heap, this, _module.Node.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.Node.data)): int == this.data;
    assume $Unbox(read($Heap, this, _module.Node.left)): ref == this.left;
    assume $Unbox(read($Heap, this, _module.Node.right)): ref == this.right;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(138,3)
}



// function declaration for _module.Node.Find
function _module.Node.Find($ly: LayerType, $heap: Heap, this: ref, x#0: int) : bool
uses {
// consequence axiom for _module.Node.Find
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
    { _module.Node.Find($ly, $Heap, this, x#0) } 
    _module.Node.Find#canCall($Heap, this, x#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && _module.Node.Valid($LS($LZ), $Heap, this))
       ==> (_module.Node.Find($ly, $Heap, this, x#0)
         <==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Contents)): Set, $Box(x#0))));
// definition axiom for _module.Node.Find (revealed)
axiom {:id "id482"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
    { _module.Node.Find($LS($ly), $Heap, this, x#0), $IsGoodHeap($Heap) } 
    _module.Node.Find#canCall($Heap, this, x#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && _module.Node.Valid($LS($LZ), $Heap, this))
       ==> (x#0 != $Unbox(read($Heap, this, _module.Node.data)): int
           ==> ($Unbox(read($Heap, this, _module.Node.left)): ref != null
                 && x#0 < $Unbox(read($Heap, this, _module.Node.data)): int
               ==> _module.Node.Find#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, x#0))
             && (!($Unbox(read($Heap, this, _module.Node.left)): ref != null
                 && x#0 < $Unbox(read($Heap, this, _module.Node.data)): int)
               ==> 
              $Unbox(read($Heap, this, _module.Node.right)): ref != null
                 && $Unbox(read($Heap, this, _module.Node.data)): int < x#0
               ==> _module.Node.Find#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, x#0)))
         && _module.Node.Find($LS($ly), $Heap, this, x#0)
           == (if x#0 == $Unbox(read($Heap, this, _module.Node.data)): int
             then true
             else (if $Unbox(read($Heap, this, _module.Node.left)): ref != null
                 && x#0 < $Unbox(read($Heap, this, _module.Node.data)): int
               then _module.Node.Find($ly, $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, x#0)
               else (if $Unbox(read($Heap, this, _module.Node.right)): ref != null
                   && $Unbox(read($Heap, this, _module.Node.data)): int < x#0
                 then _module.Node.Find($ly, $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, x#0)
                 else false))));
}

function _module.Node.Find#canCall($heap: Heap, this: ref, x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.Node.Find($LS($ly), $Heap, this, x#0) } 
  _module.Node.Find($LS($ly), $Heap, this, x#0)
     == _module.Node.Find($ly, $Heap, this, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.Node.Find(AsFuelBottom($ly), $Heap, this, x#0) } 
  _module.Node.Find($ly, $Heap, this, x#0)
     == _module.Node.Find($LZ, $Heap, this, x#0));

// frame axiom for _module.Node.Find
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref, x#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.Find($ly, $h1, this, x#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && Set#IsMember($Unbox(read($h0, this, _module.Node.Repr)): Set, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.Find($ly, $h0, this, x#0) == _module.Node.Find($ly, $h1, this, x#0));

function _module.Node.Find#requires(LayerType, Heap, ref, int) : bool;

// #requires axiom for _module.Node.Find
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.Node.Find#requires($ly, $Heap, this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
     ==> _module.Node.Find#requires($ly, $Heap, this, x#0)
       == _module.Node.Valid($LS($LZ), $Heap, this));

procedure {:verboseName "Node.Find (well-formedness)"} CheckWellformed$$_module.Node.Find(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id483"} _module.Node.Find($LS($LS($LZ)), $Heap, this, x#0)
     <==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Contents)): Set, $Box(x#0));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Find (well-formedness)"} CheckWellformed$$_module.Node.Find(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var ##x#0: int;
  var newtype$check#0: ref;
  var ##x#1: int;
  var newtype$check#1: ref;
  var ##x#2: int;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;

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

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Node.Valid#canCall($Heap, this);
    assume {:id "id484"} _module.Node.Valid($LS($LZ), $Heap, this);
    assert {:id "id485"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.Node.Repr];
    assert {:id "id486"} b$reqreads#1;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        assert {:id "id487"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
        assert {:id "id488"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.left)));
        assert {:id "id489"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set));
        assert {:id "id490"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Box(this)));
        assert {:id "id491"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref));
        assert {:id "id492"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               ==> (forall y#0: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#0)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    $Box(y#0))
                   ==> y#0 < $Unbox(read($Heap, this, _module.Node.data)): int));
        assert {:id "id493"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                read($Heap, this, _module.Node.right)));
        assert {:id "id494"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Node.Repr)): Set));
        assert {:id "id495"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Box(this)));
        assert {:id "id496"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref));
        assert {:id "id497"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> (forall y#1: int :: 
                { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                    $Box(y#1)) } 
                Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                    $Box(y#1))
                   ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#1));
        assert {:id "id498"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.left)): ref == null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref == null
               ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))));
        assert {:id "id499"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref == null
               ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                  Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))));
        assert {:id "id500"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.left)): ref == null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)), 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
        assert {:id "id501"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set));
        assert {:id "id502"} {:subsumption 0} _module.Node.Valid#canCall($Heap, this)
           ==> _module.Node.Valid($LS($LZ), $Heap, this)
             || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
                 && $Unbox(read($Heap, this, _module.Node.right)): ref != null
               ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))), 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
        assume _module.Node.Valid($LS($LZ), $Heap, this);
        assert {:id "id503"} (this == this && x#0 == x#0)
           || (Set#Subset($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
              $Unbox(read($Heap, this, _module.Node.Repr)): Set)
             && !Set#Subset($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
              $Unbox(read($Heap, this, _module.Node.Repr)): Set));
        assume (this == this && x#0 == x#0) || _module.Node.Find#canCall($Heap, this, x#0);
        assume {:id "id504"} _module.Node.Find($LS($LZ), $Heap, this, x#0)
           <==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Contents)): Set, $Box(x#0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#2 := $_ReadsFrame[this, _module.Node.data];
        if (x#0 == $Unbox(read($Heap, this, _module.Node.data)): int)
        {
            assume {:id "id505"} _module.Node.Find($LS($LZ), $Heap, this, x#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Node.Find($LS($LZ), $Heap, this, x#0), TBool);
            assert {:id "id506"} b$reqreads#2;
            return;
        }
        else
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.Node.left];
            newtype$check#0 := null;
            if ($Unbox(read($Heap, this, _module.Node.left)): ref != null)
            {
                b$reqreads#4 := $_ReadsFrame[this, _module.Node.data];
            }

            if ($Unbox(read($Heap, this, _module.Node.left)): ref != null
               && x#0 < $Unbox(read($Heap, this, _module.Node.data)): int)
            {
                b$reqreads#5 := $_ReadsFrame[this, _module.Node.left];
                assert {:id "id507"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox(read($Heap, this, _module.Node.left), Tclass._module.Node?(), $Heap);
                ##x#1 := x#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#1, TInt, $Heap);
                assert {:id "id508"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                      read($Heap, this, _module.Node.left));
                assert {:id "id509"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref
                         != null
                       ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                        read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)));
                assert {:id "id510"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref
                         != null
                       ==> Set#Subset($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref, 
                            _module.Node.Repr)): Set, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set));
                assert {:id "id511"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref
                         != null
                       ==> !Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref, 
                            _module.Node.Repr)): Set, 
                        read($Heap, this, _module.Node.left)));
                assert {:id "id512"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref
                         != null
                       ==> _module.Node.Valid($LS($LS($LZ)), 
                        $Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref));
                assert {:id "id513"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref
                         != null
                       ==> (forall y#2: int :: 
                        { Set#IsMember($Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref, 
                                _module.Node.Contents)): Set, 
                            $Box(y#2)) } 
                        Set#IsMember($Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref, 
                                _module.Node.Contents)): Set, 
                            $Box(y#2))
                           ==> y#2
                             < $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.data)): int));
                assert {:id "id514"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref
                         != null
                       ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                        read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)));
                assert {:id "id515"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref
                         != null
                       ==> Set#Subset($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref, 
                            _module.Node.Repr)): Set, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set));
                assert {:id "id516"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref
                         != null
                       ==> !Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref, 
                            _module.Node.Repr)): Set, 
                        read($Heap, this, _module.Node.left)));
                assert {:id "id517"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref
                         != null
                       ==> _module.Node.Valid($LS($LS($LZ)), 
                        $Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref));
                assert {:id "id518"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref
                         != null
                       ==> (forall y#3: int :: 
                        { Set#IsMember($Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref, 
                                _module.Node.Contents)): Set, 
                            $Box(y#3)) } 
                        Set#IsMember($Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref, 
                                _module.Node.Contents)): Set, 
                            $Box(y#3))
                           ==> $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.data)): int
                             < y#3));
                assert {:id "id519"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref
                           == null
                         && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref
                           == null
                       ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                        Set#UnionOne(Set#Empty(): Set, 
                          read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.data))));
                assert {:id "id520"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref
                           != null
                         && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref
                           == null
                       ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                        Set#Union($Unbox(read($Heap, 
                              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref, 
                              _module.Node.Contents)): Set, 
                          Set#UnionOne(Set#Empty(): Set, 
                            read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.data)))));
                assert {:id "id521"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref
                           == null
                         && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref
                           != null
                       ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                        Set#Union(Set#UnionOne(Set#Empty(): Set, 
                            read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.data)), 
                          $Unbox(read($Heap, 
                              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref, 
                              _module.Node.Contents)): Set)));
                assert {:id "id522"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref
                           != null
                         && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref
                           != null
                       ==> Set#Disjoint($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref, 
                            _module.Node.Repr)): Set, 
                        $Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref, 
                            _module.Node.Repr)): Set));
                assert {:id "id523"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref
                           != null
                         && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref
                           != null
                       ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
                        Set#Union(Set#Union($Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.left)): ref, 
                                _module.Node.Contents)): Set, 
                            Set#UnionOne(Set#Empty(): Set, 
                              read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.data))), 
                          $Unbox(read($Heap, 
                              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.right)): ref, 
                              _module.Node.Contents)): Set)));
                assume _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref);
                b$reqreads#6 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                        $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id524"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                   && !Set#Subset($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set);
                assume _module.Node.Find#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, x#0);
                assume {:id "id525"} _module.Node.Find($LS($LZ), $Heap, this, x#0)
                   == _module.Node.Find($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, x#0);
                assume _module.Node.Find#canCall($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, x#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.Node.Find($LS($LZ), $Heap, this, x#0), TBool);
                assert {:id "id526"} b$reqreads#2;
                assert {:id "id527"} b$reqreads#3;
                assert {:id "id528"} b$reqreads#4;
                assert {:id "id529"} b$reqreads#5;
                assert {:id "id530"} b$reqreads#6;
                return;
            }
            else
            {
                b$reqreads#7 := $_ReadsFrame[this, _module.Node.right];
                newtype$check#1 := null;
                if ($Unbox(read($Heap, this, _module.Node.right)): ref != null)
                {
                    b$reqreads#8 := $_ReadsFrame[this, _module.Node.data];
                }

                if ($Unbox(read($Heap, this, _module.Node.right)): ref != null
                   && $Unbox(read($Heap, this, _module.Node.data)): int < x#0)
                {
                    b$reqreads#9 := $_ReadsFrame[this, _module.Node.right];
                    assert {:id "id531"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.Node.right), Tclass._module.Node?(), $Heap);
                    ##x#2 := x#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##x#2, TInt, $Heap);
                    assert {:id "id532"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                          read($Heap, this, _module.Node.right));
                    assert {:id "id533"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref
                             != null
                           ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                            read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)));
                    assert {:id "id534"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref
                             != null
                           ==> Set#Subset($Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref, 
                                _module.Node.Repr)): Set, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set));
                    assert {:id "id535"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref
                             != null
                           ==> !Set#IsMember($Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref, 
                                _module.Node.Repr)): Set, 
                            read($Heap, this, _module.Node.right)));
                    assert {:id "id536"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref
                             != null
                           ==> _module.Node.Valid($LS($LS($LZ)), 
                            $Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref));
                    assert {:id "id537"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref
                             != null
                           ==> (forall y#4: int :: 
                            { Set#IsMember($Unbox(read($Heap, 
                                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref, 
                                    _module.Node.Contents)): Set, 
                                $Box(y#4)) } 
                            Set#IsMember($Unbox(read($Heap, 
                                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref, 
                                    _module.Node.Contents)): Set, 
                                $Box(y#4))
                               ==> y#4
                                 < $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.data)): int));
                    assert {:id "id538"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref
                             != null
                           ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                            read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)));
                    assert {:id "id539"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref
                             != null
                           ==> Set#Subset($Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref, 
                                _module.Node.Repr)): Set, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set));
                    assert {:id "id540"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref
                             != null
                           ==> !Set#IsMember($Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref, 
                                _module.Node.Repr)): Set, 
                            read($Heap, this, _module.Node.right)));
                    assert {:id "id541"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref
                             != null
                           ==> _module.Node.Valid($LS($LS($LZ)), 
                            $Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref));
                    assert {:id "id542"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref
                             != null
                           ==> (forall y#5: int :: 
                            { Set#IsMember($Unbox(read($Heap, 
                                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref, 
                                    _module.Node.Contents)): Set, 
                                $Box(y#5)) } 
                            Set#IsMember($Unbox(read($Heap, 
                                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref, 
                                    _module.Node.Contents)): Set, 
                                $Box(y#5))
                               ==> $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.data)): int
                                 < y#5));
                    assert {:id "id543"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref
                               == null
                             && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref
                               == null
                           ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                            Set#UnionOne(Set#Empty(): Set, 
                              read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.data))));
                    assert {:id "id544"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref
                               != null
                             && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref
                               == null
                           ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                            Set#Union($Unbox(read($Heap, 
                                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref, 
                                  _module.Node.Contents)): Set, 
                              Set#UnionOne(Set#Empty(): Set, 
                                read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.data)))));
                    assert {:id "id545"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref
                               == null
                             && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref
                               != null
                           ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                            Set#Union(Set#UnionOne(Set#Empty(): Set, 
                                read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.data)), 
                              $Unbox(read($Heap, 
                                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref, 
                                  _module.Node.Contents)): Set)));
                    assert {:id "id546"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref
                               != null
                             && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref
                               != null
                           ==> Set#Disjoint($Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref, 
                                _module.Node.Repr)): Set, 
                            $Unbox(read($Heap, 
                                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref, 
                                _module.Node.Repr)): Set));
                    assert {:id "id547"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                       ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
                         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref
                               != null
                             && $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref
                               != null
                           ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
                            Set#Union(Set#Union($Unbox(read($Heap, 
                                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.left)): ref, 
                                    _module.Node.Contents)): Set, 
                                Set#UnionOne(Set#Empty(): Set, 
                                  read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.data))), 
                              $Unbox(read($Heap, 
                                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.right)): ref, 
                                  _module.Node.Contents)): Set)));
                    assume _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref);
                    b$reqreads#10 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                            $Box($o))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id548"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                        $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                       && !Set#Subset($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set);
                    assume _module.Node.Find#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, x#0);
                    assume {:id "id549"} _module.Node.Find($LS($LZ), $Heap, this, x#0)
                       == _module.Node.Find($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, x#0);
                    assume _module.Node.Find#canCall($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, x#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.Node.Find($LS($LZ), $Heap, this, x#0), TBool);
                    assert {:id "id550"} b$reqreads#2;
                    assert {:id "id551"} b$reqreads#3;
                    assert {:id "id552"} b$reqreads#4;
                    assert {:id "id553"} b$reqreads#5;
                    assert {:id "id554"} b$reqreads#6;
                    assert {:id "id555"} b$reqreads#7;
                    assert {:id "id556"} b$reqreads#8;
                    assert {:id "id557"} b$reqreads#9;
                    assert {:id "id558"} b$reqreads#10;
                    return;
                }
                else
                {
                    assume {:id "id559"} _module.Node.Find($LS($LZ), $Heap, this, x#0) == Lit(false);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.Node.Find($LS($LZ), $Heap, this, x#0), TBool);
                    assert {:id "id560"} b$reqreads#2;
                    assert {:id "id561"} b$reqreads#3;
                    assert {:id "id562"} b$reqreads#4;
                    assert {:id "id563"} b$reqreads#5;
                    assert {:id "id564"} b$reqreads#6;
                    assert {:id "id565"} b$reqreads#7;
                    assert {:id "id566"} b$reqreads#8;
                    assert {:id "id567"} b$reqreads#9;
                    assert {:id "id568"} b$reqreads#10;
                    return;
                }
            }
        }

        assume false;
    }
}



procedure {:verboseName "Node.Remove (well-formedness)"} CheckWellFormed$$_module.Node.Remove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int)
   returns (node#0: ref
       where $Is(node#0, Tclass._module.Node?())
         && $IsAlloc(node#0, Tclass._module.Node?(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Remove (well-formedness)"} CheckWellFormed$$_module.Node.Remove(this: ref, x#0: int) returns (node#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;


    // AddMethodImpl: Remove, CheckWellFormed$$_module.Node.Remove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, this);
    assume {:id "id569"} _module.Node.Valid($LS($LZ), $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc node#0;
    assert {:id "id570"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    assume {:id "id571"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    if (*)
    {
        newtype$check#0 := null;
        assume {:id "id572"} node#0 != null;
        assert {:id "id573"} node#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(node#0), Tclass._module.Node?(), $Heap);
        assume _module.Node.Valid#canCall($Heap, node#0);
        assume {:id "id574"} _module.Node.Valid($LS($LZ), $Heap, node#0);
    }
    else
    {
        assume {:id "id575"} node#0 != null ==> _module.Node.Valid($LS($LZ), $Heap, node#0);
    }

    if (*)
    {
        newtype$check#1 := null;
        assume {:id "id576"} node#0 == null;
        assert {:id "id577"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
        assume {:id "id578"} Set#Subset($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
    }
    else
    {
        assume {:id "id579"} node#0 == null
           ==> Set#Subset($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
    }

    if (*)
    {
        newtype$check#2 := null;
        assume {:id "id580"} node#0 != null;
        assert {:id "id581"} node#0 != null;
        assume {:id "id582"} Set#Subset($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set);
        assert {:id "id583"} node#0 != null;
        assert {:id "id584"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
        assume {:id "id585"} Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Difference($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
    }
    else
    {
        assume {:id "id586"} node#0 != null
           ==> Set#Subset($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
              $Unbox(read($Heap, this, _module.Node.Repr)): Set)
             && Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
              Set#Difference($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
    }
}



procedure {:verboseName "Node.Remove (call)"} Call$$_module.Node.Remove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int)
   returns (node#0: ref
       where $Is(node#0, Tclass._module.Node?())
         && $IsAlloc(node#0, Tclass._module.Node?(), $Heap));
  // user-defined preconditions
  requires {:id "id587"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  requires {:id "id588"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.left)));
  requires {:id "id589"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  requires {:id "id590"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id591"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref));
  requires {:id "id592"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> (forall y#0: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#0)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#0))
             ==> y#0 < $Unbox(read($Heap, this, _module.Node.data)): int));
  requires {:id "id593"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.right)));
  requires {:id "id594"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  requires {:id "id595"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id596"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref));
  requires {:id "id597"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> (forall y#1: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#1)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#1))
             ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#1));
  requires {:id "id598"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref == null
           && $Unbox(read($Heap, this, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))));
  requires {:id "id599"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
           && $Unbox(read($Heap, this, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))));
  requires {:id "id600"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref == null
           && $Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  requires {:id "id601"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
           && $Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set));
  requires {:id "id602"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
           && $Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id603"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures node#0 != null ==> _module.Node.Valid#canCall($Heap, node#0);
  free ensures {:id "id604"} node#0 != null
     ==> _module.Node.Valid#canCall($Heap, node#0)
       && 
      _module.Node.Valid($LS($LZ), $Heap, node#0)
       && 
      Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, $Box(node#0))
       && ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
            read($Heap, node#0, _module.Node.left))
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, node#0, _module.Node.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
            $Box(node#0))
           && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref)
           && (forall y#2: int :: 
            { Set#IsMember($Unbox(read($Heap, 
                    $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                $Box(y#2)) } 
            Set#IsMember($Unbox(read($Heap, 
                    $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                $Box(y#2))
               ==> y#2 < $Unbox(read($Heap, node#0, _module.Node.data)): int))
       && ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
            read($Heap, node#0, _module.Node.right))
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, node#0, _module.Node.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
            $Box(node#0))
           && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref)
           && (forall y#3: int :: 
            { Set#IsMember($Unbox(read($Heap, 
                    $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set, 
                $Box(y#3)) } 
            Set#IsMember($Unbox(read($Heap, 
                    $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set, 
                $Box(y#3))
               ==> $Unbox(read($Heap, node#0, _module.Node.data)): int < y#3))
       && ($Unbox(read($Heap, node#0, _module.Node.left)): ref == null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data))))
       && ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Union($Unbox(read($Heap, 
                $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data)))))
       && ($Unbox(read($Heap, node#0, _module.Node.left)): ref == null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                _module.Node.Contents)): Set)))
       && ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set)
           && Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
            Set#Union(Set#Union($Unbox(read($Heap, 
                    $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data))), 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                  _module.Node.Contents)): Set)));
  free ensures true;
  ensures {:id "id605"} node#0 == null
     ==> Set#Subset($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
  free ensures true;
  ensures {:id "id606"} node#0 != null
     ==> Set#Subset($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
      $Unbox(read($Heap, this, _module.Node.Repr)): Set);
  ensures {:id "id607"} node#0 != null
     ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
      Set#Difference($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Remove (correctness)"} Impl$$_module.Node.Remove(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int)
   returns (node#0: ref
       where $Is(node#0, Tclass._module.Node?())
         && $IsAlloc(node#0, Tclass._module.Node?(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id608"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
         && (forall y#4: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#4)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#4))
             ==> y#4 < $Unbox(read($Heap, this, _module.Node.data)): int))
     && ($Unbox(read($Heap, this, _module.Node.right)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
         && (forall y#5: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#5)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#5))
             ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#5))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
         && $Unbox(read($Heap, this, _module.Node.right)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         && $Unbox(read($Heap, this, _module.Node.right)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
         && $Unbox(read($Heap, this, _module.Node.right)): ref != null
       ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
        Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)), 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         && $Unbox(read($Heap, this, _module.Node.right)): ref != null
       ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set)
         && Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id609"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures node#0 != null ==> _module.Node.Valid#canCall($Heap, node#0);
  ensures {:id "id610"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, $Box(node#0));
  ensures {:id "id611"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
          read($Heap, node#0, _module.Node.left)));
  ensures {:id "id612"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, node#0, _module.Node.Repr)): Set));
  ensures {:id "id613"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Box(node#0)));
  ensures {:id "id614"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref));
  ensures {:id "id615"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> (forall y#6: int :: 
          { Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                  _module.Node.Contents)): Set, 
              $Box(y#6)) } 
          Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                  _module.Node.Contents)): Set, 
              $Box(y#6))
             ==> y#6 < $Unbox(read($Heap, node#0, _module.Node.data)): int));
  ensures {:id "id616"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
          read($Heap, node#0, _module.Node.right)));
  ensures {:id "id617"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, node#0, _module.Node.Repr)): Set));
  ensures {:id "id618"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Box(node#0)));
  ensures {:id "id619"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref));
  ensures {:id "id620"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> (forall y#7: int :: 
          { Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                  _module.Node.Contents)): Set, 
              $Box(y#7)) } 
          Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                  _module.Node.Contents)): Set, 
              $Box(y#7))
             ==> $Unbox(read($Heap, node#0, _module.Node.data)): int < y#7));
  ensures {:id "id621"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref == null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data))));
  ensures {:id "id622"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Union($Unbox(read($Heap, 
                $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data)))));
  ensures {:id "id623"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref == null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                _module.Node.Contents)): Set)));
  ensures {:id "id624"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set));
  ensures {:id "id625"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Union(Set#Union($Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                  _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data))), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                _module.Node.Contents)): Set)));
  free ensures true;
  ensures {:id "id626"} node#0 == null
     ==> Set#Subset($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
  free ensures true;
  ensures {:id "id627"} node#0 != null
     ==> Set#Subset($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
      $Unbox(read($Heap, this, _module.Node.Repr)): Set);
  ensures {:id "id628"} node#0 != null
     ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
      Set#Difference($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(x#0))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Remove (correctness)"} Impl$$_module.Node.Remove(this: ref, x#0: int) returns (node#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#3: ref;
  var t#0_0: ref
     where $Is(t#0_0, Tclass._module.Node?())
       && $IsAlloc(t#0_0, Tclass._module.Node?(), $Heap);
  var $rhs##0_0: ref;
  var x##0_0: int;
  var $rhs#0_0: ref;
  var $rhs#0_1: Set;
  var newtype$check#0_0: ref;
  var $rhs#0_0_0: Set;
  var newtype$check#1_0: ref;
  var t#1_0_0: ref
     where $Is(t#1_0_0, Tclass._module.Node?())
       && $IsAlloc(t#1_0_0, Tclass._module.Node?(), $Heap);
  var $rhs##1_0_0: ref;
  var x##1_0_0: int;
  var $rhs#1_0_0: ref;
  var $rhs#1_0_1: Set;
  var newtype$check#1_0_0: ref;
  var $rhs#1_0_0_0: Set;
  var newtype$check#1_1_0_0: ref;
  var newtype$check#1_1_0_1: ref;
  var newtype$check#1_1_0_0_0: ref;
  var newtype$check#1_1_0_1_0: ref;
  var newtype$check#1_1_0_1_1_0: ref;
  var min#1_1_0_1_1_1_0: int;
  var r#1_1_0_1_1_1_0: ref
     where $Is(r#1_1_0_1_1_1_0, Tclass._module.Node?())
       && $IsAlloc(r#1_1_0_1_1_1_0, Tclass._module.Node?(), $Heap);
  var $rhs##1_1_0_1_1_1_0: int;
  var $rhs##1_1_0_1_1_1_1: ref;
  var $rhs#1_1_0_1_1_1_0: int;
  var $rhs#1_1_0_1_1_1_1: ref;
  var $rhs#1_1_0_1_1_1_2: Set;
  var newtype$check#1_1_0_1_1_1_0: ref;
  var $rhs#1_1_0_1_1_1_0_0: Set;

    // AddMethodImpl: Remove, Impl$$_module.Node.Remove
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(171,10)
    assume true;
    assume true;
    node#0 := this;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(172,5)
    newtype$check#3 := null;
    if ($Unbox(read($Heap, this, _module.Node.left)): ref != null)
    {
    }

    assume true;
    if ($Unbox(read($Heap, this, _module.Node.left)): ref != null
       && x#0 < $Unbox(read($Heap, this, _module.Node.data)): int)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(173,27)
        assume true;
        // TrCallStmt: Adding lhs with type Node?
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id630"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##0_0 := x#0;
        assert {:id "id631"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id632"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set);
        call {:id "id633"} $rhs##0_0 := Call$$_module.Node.Remove($Unbox(read($Heap, this, _module.Node.left)): ref, x##0_0);
        // TrCallStmt: After ProcessCallStmt
        t#0_0 := $rhs##0_0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(174,12)
        assume true;
        assert {:id "id635"} $_ModifiesFrame[this, _module.Node.left];
        assume true;
        $rhs#0_0 := t#0_0;
        $Heap := update($Heap, this, _module.Node.left, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(175,16)
        assume true;
        assert {:id "id638"} $_ModifiesFrame[this, _module.Node.Contents];
        assume true;
        $rhs#0_1 := Set#Difference($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
        $Heap := update($Heap, this, _module.Node.Contents, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(176,7)
        newtype$check#0_0 := null;
        assume true;
        if ($Unbox(read($Heap, this, _module.Node.left)): ref != null)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(176,30)
            assume true;
            assert {:id "id641"} $_ModifiesFrame[this, _module.Node.Repr];
            assert {:id "id642"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
            assume true;
            $rhs#0_0_0 := Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set);
            $Heap := update($Heap, this, _module.Node.Repr, $Box($rhs#0_0_0));
            assume $IsGoodHeap($Heap);
        }
        else
        {
        }
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(177,12)
        newtype$check#1_0 := null;
        if ($Unbox(read($Heap, this, _module.Node.right)): ref != null)
        {
        }

        assume true;
        if ($Unbox(read($Heap, this, _module.Node.right)): ref != null
           && $Unbox(read($Heap, this, _module.Node.data)): int < x#0)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(178,28)
            assume true;
            // TrCallStmt: Adding lhs with type Node?
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assert {:id "id645"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_0_0 := x#0;
            assert {:id "id646"} (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                    $Box($o))
                 ==> $_ModifiesFrame[$o, $f]);
            assert {:id "id647"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                $Unbox(read(old($Heap), this, _module.Node.Repr)): Set)
               && !Set#Subset($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set);
            call {:id "id648"} $rhs##1_0_0 := Call$$_module.Node.Remove($Unbox(read($Heap, this, _module.Node.right)): ref, x##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            t#1_0_0 := $rhs##1_0_0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(179,13)
            assume true;
            assert {:id "id650"} $_ModifiesFrame[this, _module.Node.right];
            assume true;
            $rhs#1_0_0 := t#1_0_0;
            $Heap := update($Heap, this, _module.Node.right, $Box($rhs#1_0_0));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(180,16)
            assume true;
            assert {:id "id653"} $_ModifiesFrame[this, _module.Node.Contents];
            assume true;
            $rhs#1_0_1 := Set#Difference($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
            $Heap := update($Heap, this, _module.Node.Contents, $Box($rhs#1_0_1));
            assume $IsGoodHeap($Heap);
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(181,7)
            newtype$check#1_0_0 := null;
            assume true;
            if ($Unbox(read($Heap, this, _module.Node.right)): ref != null)
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(181,31)
                assume true;
                assert {:id "id656"} $_ModifiesFrame[this, _module.Node.Repr];
                assert {:id "id657"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                assume true;
                $rhs#1_0_0_0 := Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set);
                $Heap := update($Heap, this, _module.Node.Repr, $Box($rhs#1_0_0_0));
                assume $IsGoodHeap($Heap);
            }
            else
            {
            }
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(182,12)
            assume true;
            if (x#0 == $Unbox(read($Heap, this, _module.Node.data)): int)
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(183,7)
                newtype$check#1_1_0_0 := null;
                if ($Unbox(read($Heap, this, _module.Node.left)): ref == null)
                {
                    newtype$check#1_1_0_1 := null;
                }

                assume true;
                if ($Unbox(read($Heap, this, _module.Node.left)): ref == null
                   && $Unbox(read($Heap, this, _module.Node.right)): ref == null)
                {
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(184,14)
                    assume true;
                    newtype$check#1_1_0_0_0 := null;
                    assume true;
                    node#0 := null;
                }
                else
                {
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(185,14)
                    newtype$check#1_1_0_1_0 := null;
                    assume true;
                    if ($Unbox(read($Heap, this, _module.Node.left)): ref == null)
                    {
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(186,14)
                        assume true;
                        assume true;
                        node#0 := $Unbox(read($Heap, this, _module.Node.right)): ref;
                    }
                    else
                    {
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(187,14)
                        newtype$check#1_1_0_1_1_0 := null;
                        assume true;
                        if ($Unbox(read($Heap, this, _module.Node.right)): ref == null)
                        {
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(188,14)
                            assume true;
                            assume true;
                            node#0 := $Unbox(read($Heap, this, _module.Node.left)): ref;
                        }
                        else
                        {
                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(191,38)
                            assume true;
                            assume true;
                            // TrCallStmt: Adding lhs with type int
                            // TrCallStmt: Adding lhs with type Node?
                            // TrCallStmt: Before ProcessCallStmt
                            assume true;
                            assert {:id "id663"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                            assert {:id "id664"} (forall $o: ref, $f: Field :: 
                              $o != null
                                   && $Unbox(read($Heap, $o, alloc)): bool
                                   && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
                                    $Box($o))
                                 ==> $_ModifiesFrame[$o, $f]);
                            call {:id "id665"} $rhs##1_1_0_1_1_1_0, $rhs##1_1_0_1_1_1_1 := Call$$_module.Node.RemoveMin($Unbox(read($Heap, this, _module.Node.right)): ref);
                            // TrCallStmt: After ProcessCallStmt
                            min#1_1_0_1_1_1_0 := $rhs##1_1_0_1_1_1_0;
                            r#1_1_0_1_1_1_0 := $rhs##1_1_0_1_1_1_1;
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(192,14)
                            assume true;
                            assert {:id "id668"} $_ModifiesFrame[this, _module.Node.data];
                            assume true;
                            $rhs#1_1_0_1_1_1_0 := min#1_1_0_1_1_1_0;
                            $Heap := update($Heap, this, _module.Node.data, $Box($rhs#1_1_0_1_1_1_0));
                            assume $IsGoodHeap($Heap);
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(192,29)
                            assume true;
                            assert {:id "id671"} $_ModifiesFrame[this, _module.Node.right];
                            assume true;
                            $rhs#1_1_0_1_1_1_1 := r#1_1_0_1_1_1_0;
                            $Heap := update($Heap, this, _module.Node.right, $Box($rhs#1_1_0_1_1_1_1));
                            assume $IsGoodHeap($Heap);
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(193,18)
                            assume true;
                            assert {:id "id674"} $_ModifiesFrame[this, _module.Node.Contents];
                            assume true;
                            $rhs#1_1_0_1_1_1_2 := Set#Difference($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
                              Set#UnionOne(Set#Empty(): Set, $Box(x#0)));
                            $Heap := update($Heap, this, _module.Node.Contents, $Box($rhs#1_1_0_1_1_1_2));
                            assume $IsGoodHeap($Heap);
                            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(194,9)
                            newtype$check#1_1_0_1_1_1_0 := null;
                            assume true;
                            if ($Unbox(read($Heap, this, _module.Node.right)): ref != null)
                            {
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(194,33)
                                assume true;
                                assert {:id "id677"} $_ModifiesFrame[this, _module.Node.Repr];
                                assert {:id "id678"} $Unbox(read($Heap, this, _module.Node.right)): ref != null;
                                assume true;
                                $rhs#1_1_0_1_1_1_0_0 := Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set);
                                $Heap := update($Heap, this, _module.Node.Repr, $Box($rhs#1_1_0_1_1_1_0_0));
                                assume $IsGoodHeap($Heap);
                            }
                            else
                            {
                            }
                        }
                    }
                }
            }
            else
            {
            }
        }
    }
}



procedure {:verboseName "Node.RemoveMin (well-formedness)"} CheckWellFormed$$_module.Node.RemoveMin(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap))
   returns (min#0: int, 
    node#0: ref
       where $Is(node#0, Tclass._module.Node?())
         && $IsAlloc(node#0, Tclass._module.Node?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.RemoveMin (well-formedness)"} CheckWellFormed$$_module.Node.RemoveMin(this: ref) returns (min#0: int, node#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var x#0: int;


    // AddMethodImpl: RemoveMin, CheckWellFormed$$_module.Node.RemoveMin
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, this);
    assume {:id "id681"} _module.Node.Valid($LS($LZ), $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc min#0, node#0;
    assert {:id "id682"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    assume {:id "id683"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    if (*)
    {
        newtype$check#0 := null;
        assume {:id "id684"} node#0 != null;
        assert {:id "id685"} node#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(node#0), Tclass._module.Node?(), $Heap);
        assume _module.Node.Valid#canCall($Heap, node#0);
        assume {:id "id686"} _module.Node.Valid($LS($LZ), $Heap, node#0);
    }
    else
    {
        assume {:id "id687"} node#0 != null ==> _module.Node.Valid($LS($LZ), $Heap, node#0);
    }

    if (*)
    {
        newtype$check#1 := null;
        assume {:id "id688"} node#0 == null;
        assert {:id "id689"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
        assume {:id "id690"} Set#Equal($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(min#0)));
    }
    else
    {
        assume {:id "id691"} node#0 == null
           ==> Set#Equal($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(min#0)));
    }

    if (*)
    {
        newtype$check#2 := null;
        assume {:id "id692"} node#0 != null;
        assert {:id "id693"} node#0 != null;
        assume {:id "id694"} Set#Subset($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set);
        assert {:id "id695"} node#0 != null;
        assert {:id "id696"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
        assume {:id "id697"} Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Difference($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(min#0))));
    }
    else
    {
        assume {:id "id698"} node#0 != null
           ==> Set#Subset($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
              $Unbox(read($Heap, this, _module.Node.Repr)): Set)
             && Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
              Set#Difference($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, $Box(min#0))));
    }

    assert {:id "id699"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    assume {:id "id700"} Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, $Box(min#0));
    // Begin Comprehension WF check
    havoc x#0;
    if (true)
    {
        assert {:id "id701"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
        if (Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, $Box(x#0)))
        {
        }
    }

    // End Comprehension WF check
    assume {:id "id702"} (forall x#1: int :: 
      { Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, $Box(x#1)) } 
      Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, $Box(x#1))
         ==> min#0 <= x#1);
}



procedure {:verboseName "Node.RemoveMin (call)"} Call$$_module.Node.RemoveMin(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap))
   returns (min#0: int, 
    node#0: ref
       where $Is(node#0, Tclass._module.Node?())
         && $IsAlloc(node#0, Tclass._module.Node?(), $Heap));
  // user-defined preconditions
  requires {:id "id703"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  requires {:id "id704"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.left)));
  requires {:id "id705"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  requires {:id "id706"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id707"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref));
  requires {:id "id708"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         ==> (forall y#0: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#0)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#0))
             ==> y#0 < $Unbox(read($Heap, this, _module.Node.data)): int));
  requires {:id "id709"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.right)));
  requires {:id "id710"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  requires {:id "id711"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id712"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref));
  requires {:id "id713"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> (forall y#1: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#1)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#1))
             ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#1));
  requires {:id "id714"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref == null
           && $Unbox(read($Heap, this, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))));
  requires {:id "id715"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
           && $Unbox(read($Heap, this, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))));
  requires {:id "id716"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref == null
           && $Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  requires {:id "id717"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
           && $Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set));
  requires {:id "id718"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.left)): ref != null
           && $Unbox(read($Heap, this, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id719"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures node#0 != null ==> _module.Node.Valid#canCall($Heap, node#0);
  free ensures {:id "id720"} node#0 != null
     ==> _module.Node.Valid#canCall($Heap, node#0)
       && 
      _module.Node.Valid($LS($LZ), $Heap, node#0)
       && 
      Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, $Box(node#0))
       && ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
            read($Heap, node#0, _module.Node.left))
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, node#0, _module.Node.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
            $Box(node#0))
           && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref)
           && (forall y#2: int :: 
            { Set#IsMember($Unbox(read($Heap, 
                    $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                $Box(y#2)) } 
            Set#IsMember($Unbox(read($Heap, 
                    $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                $Box(y#2))
               ==> y#2 < $Unbox(read($Heap, node#0, _module.Node.data)): int))
       && ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
            read($Heap, node#0, _module.Node.right))
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, node#0, _module.Node.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
            $Box(node#0))
           && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref)
           && (forall y#3: int :: 
            { Set#IsMember($Unbox(read($Heap, 
                    $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set, 
                $Box(y#3)) } 
            Set#IsMember($Unbox(read($Heap, 
                    $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set, 
                $Box(y#3))
               ==> $Unbox(read($Heap, node#0, _module.Node.data)): int < y#3))
       && ($Unbox(read($Heap, node#0, _module.Node.left)): ref == null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data))))
       && ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Union($Unbox(read($Heap, 
                $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data)))))
       && ($Unbox(read($Heap, node#0, _module.Node.left)): ref == null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                _module.Node.Contents)): Set)))
       && ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set)
           && Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
            Set#Union(Set#Union($Unbox(read($Heap, 
                    $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data))), 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                  _module.Node.Contents)): Set)));
  free ensures true;
  ensures {:id "id721"} node#0 == null
     ==> Set#Equal($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(min#0)));
  free ensures true;
  ensures {:id "id722"} node#0 != null
     ==> Set#Subset($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
      $Unbox(read($Heap, this, _module.Node.Repr)): Set);
  ensures {:id "id723"} node#0 != null
     ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
      Set#Difference($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(min#0))));
  free ensures true;
  ensures {:id "id724"} Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, $Box(min#0));
  ensures {:id "id725"} (forall x#1: int :: 
    { Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, $Box(x#1)) } 
    Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, $Box(x#1))
       ==> min#0 <= x#1);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.RemoveMin (correctness)"} Impl$$_module.Node.RemoveMin(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap))
   returns (min#0: int, 
    node#0: ref
       where $Is(node#0, Tclass._module.Node?())
         && $IsAlloc(node#0, Tclass._module.Node?(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id726"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.left)): ref)
         && (forall y#4: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#4)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              $Box(y#4))
             ==> y#4 < $Unbox(read($Heap, this, _module.Node.data)): int))
     && ($Unbox(read($Heap, this, _module.Node.right)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.right)): ref)
         && (forall y#5: int :: 
          { Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#5)) } 
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set, 
              $Box(y#5))
             ==> $Unbox(read($Heap, this, _module.Node.data)): int < y#5))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
         && $Unbox(read($Heap, this, _module.Node.right)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         && $Unbox(read($Heap, this, _module.Node.right)): ref == null
       ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)))))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref == null
         && $Unbox(read($Heap, this, _module.Node.right)): ref != null
       ==> Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
        Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data)), 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)))
     && ($Unbox(read($Heap, this, _module.Node.left)): ref != null
         && $Unbox(read($Heap, this, _module.Node.right)): ref != null
       ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Repr)): Set)
         && Set#Equal($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#Union(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.data))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.right)): ref, _module.Node.Contents)): Set)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id727"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures node#0 != null ==> _module.Node.Valid#canCall($Heap, node#0);
  ensures {:id "id728"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, $Box(node#0));
  ensures {:id "id729"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
          read($Heap, node#0, _module.Node.left)));
  ensures {:id "id730"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, node#0, _module.Node.Repr)): Set));
  ensures {:id "id731"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Box(node#0)));
  ensures {:id "id732"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref));
  ensures {:id "id733"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
         ==> (forall y#6: int :: 
          { Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                  _module.Node.Contents)): Set, 
              $Box(y#6)) } 
          Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                  _module.Node.Contents)): Set, 
              $Box(y#6))
             ==> y#6 < $Unbox(read($Heap, node#0, _module.Node.data)): int));
  ensures {:id "id734"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
          read($Heap, node#0, _module.Node.right)));
  ensures {:id "id735"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, node#0, _module.Node.Repr)): Set));
  ensures {:id "id736"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set, 
          $Box(node#0)));
  ensures {:id "id737"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref));
  ensures {:id "id738"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> (forall y#7: int :: 
          { Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                  _module.Node.Contents)): Set, 
              $Box(y#7)) } 
          Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                  _module.Node.Contents)): Set, 
              $Box(y#7))
             ==> $Unbox(read($Heap, node#0, _module.Node.data)): int < y#7));
  ensures {:id "id739"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref == null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data))));
  ensures {:id "id740"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref == null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Union($Unbox(read($Heap, 
                $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                _module.Node.Contents)): Set, 
            Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data)))));
  ensures {:id "id741"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref == null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Union(Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                _module.Node.Contents)): Set)));
  ensures {:id "id742"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Disjoint($Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.left)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, node#0, _module.Node.right)): ref, _module.Node.Repr)): Set));
  ensures {:id "id743"} node#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, node#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, node#0)
       || ($Unbox(read($Heap, node#0, _module.Node.left)): ref != null
           && $Unbox(read($Heap, node#0, _module.Node.right)): ref != null
         ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
          Set#Union(Set#Union($Unbox(read($Heap, 
                  $Unbox(read($Heap, node#0, _module.Node.left)): ref, 
                  _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, node#0, _module.Node.data))), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, node#0, _module.Node.right)): ref, 
                _module.Node.Contents)): Set)));
  free ensures true;
  ensures {:id "id744"} node#0 == null
     ==> Set#Equal($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(min#0)));
  free ensures true;
  ensures {:id "id745"} node#0 != null
     ==> Set#Subset($Unbox(read($Heap, node#0, _module.Node.Repr)): Set, 
      $Unbox(read($Heap, this, _module.Node.Repr)): Set);
  ensures {:id "id746"} node#0 != null
     ==> Set#Equal($Unbox(read($Heap, node#0, _module.Node.Contents)): Set, 
      Set#Difference($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(min#0))));
  free ensures true;
  ensures {:id "id747"} Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, $Box(min#0));
  ensures {:id "id748"} (forall x#1: int :: 
    { Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, $Box(x#1)) } 
    Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Contents)): Set, $Box(x#1))
       ==> min#0 <= x#1);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.RemoveMin (correctness)"} Impl$$_module.Node.RemoveMin(this: ref) returns (min#0: int, node#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#3: ref;
  var t#1_0: ref
     where $Is(t#1_0, Tclass._module.Node?())
       && $IsAlloc(t#1_0, Tclass._module.Node?(), $Heap);
  var $rhs##1_0: int;
  var $rhs##1_1: ref;
  var $rhs#1_0: ref;
  var $rhs#1_1: Set;
  var newtype$check#1_0: ref;
  var $rhs#1_0_0: Set;

    // AddMethodImpl: RemoveMin, Impl$$_module.Node.RemoveMin
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(209,5)
    newtype$check#3 := null;
    assume true;
    if ($Unbox(read($Heap, this, _module.Node.left)): ref == null)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(210,11)
        assume true;
        assume true;
        min#0 := $Unbox(read($Heap, this, _module.Node.data)): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(211,12)
        assume true;
        assume true;
        node#0 := $Unbox(read($Heap, this, _module.Node.right)): ref;
    }
    else
    {
        havoc t#1_0 /* where $Is(t#1_0, Tclass._module.Node?())
           && $IsAlloc(t#1_0, Tclass._module.Node?(), $Heap) */;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(214,31)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Adding lhs with type Node?
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id751"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
        assert {:id "id752"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
                $Box($o))
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id753"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set);
        call {:id "id754"} $rhs##1_0, $rhs##1_1 := Call$$_module.Node.RemoveMin($Unbox(read($Heap, this, _module.Node.left)): ref);
        // TrCallStmt: After ProcessCallStmt
        min#0 := $rhs##1_0;
        t#1_0 := $rhs##1_1;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(215,12)
        assume true;
        assert {:id "id757"} $_ModifiesFrame[this, _module.Node.left];
        assume true;
        $rhs#1_0 := t#1_0;
        $Heap := update($Heap, this, _module.Node.left, $Box($rhs#1_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(216,12)
        assume true;
        assume true;
        node#0 := this;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(217,16)
        assume true;
        assert {:id "id761"} $_ModifiesFrame[this, _module.Node.Contents];
        assume true;
        $rhs#1_1 := Set#Difference($Unbox(read($Heap, this, _module.Node.Contents)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(min#0)));
        $Heap := update($Heap, this, _module.Node.Contents, $Box($rhs#1_1));
        assume $IsGoodHeap($Heap);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(218,7)
        newtype$check#1_0 := null;
        assume true;
        if ($Unbox(read($Heap, this, _module.Node.left)): ref != null)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(218,30)
            assume true;
            assert {:id "id764"} $_ModifiesFrame[this, _module.Node.Repr];
            assert {:id "id765"} $Unbox(read($Heap, this, _module.Node.left)): ref != null;
            assume true;
            $rhs#1_0_0 := Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.left)): ref, _module.Node.Repr)): Set);
            $Heap := update($Heap, this, _module.Node.Repr, $Box($rhs#1_0_0));
            assume $IsGoodHeap($Heap);
        }
        else
        {
        }
    }
}



// $Is axiom for non-null type _module.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Node()) } { $Is(c#0, Tclass._module.Node?()) } 
  $Is(c#0, Tclass._module.Node())
     <==> $Is(c#0, Tclass._module.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Node(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Node?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Node(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Node?(), $h));

const unique class._module.Main?: ClassName;

function Tclass._module.Main?() : Ty
uses {
// Tclass._module.Main? Tag
axiom Tag(Tclass._module.Main?()) == Tagclass._module.Main?
   && TagFamily(Tclass._module.Main?()) == tytagFamily$Main;
}

const unique Tagclass._module.Main?: TyTag;

// Box/unbox axiom for Tclass._module.Main?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Main?()) } 
  $IsBox(bx, Tclass._module.Main?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Main?()));

// $Is axiom for class Main
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Main?()) } 
  $Is($o, Tclass._module.Main?())
     <==> $o == null || dtype($o) == Tclass._module.Main?());

// $IsAlloc axiom for class Main
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Main?(), $h) } 
  $IsAlloc($o, Tclass._module.Main?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.Main() : Ty
uses {
// Tclass._module.Main Tag
axiom Tag(Tclass._module.Main()) == Tagclass._module.Main
   && TagFamily(Tclass._module.Main()) == tytagFamily$Main;
}

const unique Tagclass._module.Main: TyTag;

// Box/unbox axiom for Tclass._module.Main
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Main()) } 
  $IsBox(bx, Tclass._module.Main())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Main()));

procedure {:verboseName "Main.Client0 (well-formedness)"} CheckWellFormed$$_module.Main.Client0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Main())
         && $IsAlloc(this, Tclass._module.Main(), $Heap), 
    x#0: int);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main.Client0 (call)"} Call$$_module.Main.Client0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Main())
         && $IsAlloc(this, Tclass._module.Main(), $Heap), 
    x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main.Client0 (correctness)"} Impl$$_module.Main.Client0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Main())
         && $IsAlloc(this, Tclass._module.Main(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main.Client0 (correctness)"} Impl$$_module.Main.Client0(this: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#s#0: bool;
  var s#0: ref
     where defass#s#0
       ==> $Is(s#0, Tclass._module.IntSet())
         && $IsAlloc(s#0, Tclass._module.IntSet(), $Heap);
  var $nw: ref;
  var x##0: int;
  var x##1: int;
  var present#0: bool;
  var ##x#0: int;

    // AddMethodImpl: Client0, Impl$$_module.Main.Client0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(226,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(226,25)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id768"} $nw := Call$$_module.IntSet.Init();
    // TrCallStmt: After ProcessCallStmt
    s#0 := $nw;
    defass#s#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(228,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id770"} defass#s#0;
    assume true;
    assert {:id "id771"} s#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(12);
    assert {:id "id772"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id773"} Call$$_module.IntSet.Insert(s#0, x##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(229,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id774"} defass#s#0;
    assume true;
    assert {:id "id775"} s#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(24);
    assert {:id "id776"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id777"} Call$$_module.IntSet.Insert(s#0, x##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(230,17)
    assume true;
    assert {:id "id778"} defass#s#0;
    assert {:id "id779"} s#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.IntSet?(), $Heap);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assert {:id "id780"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, $Box(s#0));
    assert {:id "id781"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref == null
           ==> Set#Equal($Unbox(read($Heap, s#0, _module.IntSet.Contents)): Set, Set#Empty(): Set));
    assert {:id "id782"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, 
            read($Heap, s#0, _module.IntSet.root)));
    assert {:id "id783"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set));
    assert {:id "id784"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            $Box(s#0)));
    assert {:id "id785"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, s#0, _module.IntSet.root)));
    assert {:id "id786"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left))));
    assert {:id "id787"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               ==> Set#Subset($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                    _module.Node.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
    assert {:id "id788"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               ==> !Set#IsMember($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                    _module.Node.Repr)): Set, 
                read($Heap, s#0, _module.IntSet.root))));
    assert {:id "id789"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               ==> _module.Node.Valid($LS($LS($LZ)), 
                $Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref)));
    assert {:id "id790"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               ==> (forall y#0: int :: 
                { Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                        _module.Node.Contents)): Set, 
                    $Box(y#0)) } 
                Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                        _module.Node.Contents)): Set, 
                    $Box(y#0))
                   ==> y#0
                     < $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data)): int)));
    assert {:id "id791"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
               ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
                read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right))));
    assert {:id "id792"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
               ==> Set#Subset($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Repr)): Set, 
                $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
    assert {:id "id793"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
               ==> !Set#IsMember($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Repr)): Set, 
                read($Heap, s#0, _module.IntSet.root))));
    assert {:id "id794"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
               ==> _module.Node.Valid($LS($LS($LZ)), 
                $Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref)));
    assert {:id "id795"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
               ==> (forall y#1: int :: 
                { Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                        _module.Node.Contents)): Set, 
                    $Box(y#1)) } 
                Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                        _module.Node.Contents)): Set, 
                    $Box(y#1))
                   ==> $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data)): int
                     < y#1)));
    assert {:id "id796"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                   == null
                 && $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                   == null
               ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data)))));
    assert {:id "id797"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                   != null
                 && $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                   == null
               ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set, 
                Set#Union($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  Set#UnionOne(Set#Empty(): Set, 
                    read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data))))));
    assert {:id "id798"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                   == null
                 && $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                   != null
               ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set, 
                Set#Union(Set#UnionOne(Set#Empty(): Set, 
                    read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data)), 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set))));
    assert {:id "id799"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                   != null
                 && $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                   != null
               ==> Set#Disjoint($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                    _module.Node.Repr)): Set, 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Repr)): Set)));
    assert {:id "id800"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> 
          _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
             || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                   != null
                 && $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                   != null
               ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set, 
                Set#Union(Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                        _module.Node.Contents)): Set, 
                    Set#UnionOne(Set#Empty(): Set, 
                      read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data))), 
                  $Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set))));
    assert {:id "id801"} {:subsumption 0} _module.IntSet.Valid#canCall($Heap, s#0)
       ==> _module.IntSet.Valid($Heap, s#0)
         || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
           ==> Set#Equal($Unbox(read($Heap, s#0, _module.IntSet.Contents)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set));
    assume _module.IntSet.Valid($Heap, s#0);
    assume _module.IntSet.Find#canCall($Heap, s#0, x#0);
    assume _module.IntSet.Find#canCall($Heap, s#0, x#0);
    present#0 := _module.IntSet.Find($Heap, s#0, x#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(231,5)
    if (x#0 != LitInt(12))
    {
    }

    assume true;
    assert {:id "id803"} present#0 <==> x#0 == LitInt(12) || x#0 == LitInt(24);
}



procedure {:verboseName "Main.Client1 (well-formedness)"} CheckWellFormed$$_module.Main.Client1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Main())
         && $IsAlloc(this, Tclass._module.Main(), $Heap), 
    s#0: ref
       where $Is(s#0, Tclass._module.IntSet())
         && $IsAlloc(s#0, Tclass._module.IntSet(), $Heap), 
    x#0: int);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main.Client1 (well-formedness)"} CheckWellFormed$$_module.Main.Client1(this: ref, s#0: ref, x#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Client1, CheckWellFormed$$_module.Main.Client1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, $Box($o)));
    assert {:id "id804"} s#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.IntSet?(), $Heap);
    assume _module.IntSet.Valid#canCall($Heap, s#0);
    assume {:id "id805"} _module.IntSet.Valid($Heap, s#0);
    assert {:id "id806"} s#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), s#0, _module.IntSet.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "Main.Client1 (call)"} Call$$_module.Main.Client1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Main())
         && $IsAlloc(this, Tclass._module.Main(), $Heap), 
    s#0: ref
       where $Is(s#0, Tclass._module.IntSet())
         && $IsAlloc(s#0, Tclass._module.IntSet(), $Heap), 
    x#0: int);
  // user-defined preconditions
  requires {:id "id807"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, $Box(s#0));
  requires {:id "id808"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref == null
         ==> Set#Equal($Unbox(read($Heap, s#0, _module.IntSet.Contents)): Set, Set#Empty(): Set));
  requires {:id "id809"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, 
          read($Heap, s#0, _module.IntSet.root)));
  requires {:id "id810"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set));
  requires {:id "id811"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(s#0)));
  requires {:id "id812"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
            read($Heap, s#0, _module.IntSet.root)));
  requires {:id "id813"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left))));
  requires {:id "id814"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  requires {:id "id815"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, s#0, _module.IntSet.root))));
  requires {:id "id816"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref)));
  requires {:id "id817"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
               != null
             ==> (forall y#0: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#0)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#0))
                 ==> y#0
                   < $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data)): int)));
  requires {:id "id818"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right))));
  requires {:id "id819"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set)));
  requires {:id "id820"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set, 
              read($Heap, s#0, _module.IntSet.root))));
  requires {:id "id821"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> _module.Node.Valid($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref)));
  requires {:id "id822"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
               != null
             ==> (forall y#1: int :: 
              { Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#1)) } 
              Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                      _module.Node.Contents)): Set, 
                  $Box(y#1))
                 ==> $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data)): int
                   < y#1)));
  requires {:id "id823"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set, 
              Set#UnionOne(Set#Empty(): Set, 
                read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data)))));
  requires {:id "id824"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                 == null
             ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set, 
              Set#Union($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                    _module.Node.Contents)): Set, 
                Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data))))));
  requires {:id "id825"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                 == null
               && $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set, 
              Set#Union(Set#UnionOne(Set#Empty(): Set, 
                  read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  requires {:id "id826"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Disjoint($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                  _module.Node.Repr)): Set, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                  _module.Node.Repr)): Set)));
  requires {:id "id827"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> 
        _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref
                 != null
               && $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref
                 != null
             ==> Set#Equal($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set, 
              Set#Union(Set#Union($Unbox(read($Heap, 
                      $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.left)): ref, 
                      _module.Node.Contents)): Set, 
                  Set#UnionOne(Set#Empty(): Set, 
                    read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.data))), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.right)): ref, 
                    _module.Node.Contents)): Set))));
  requires {:id "id828"} _module.IntSet.Valid#canCall($Heap, s#0)
     ==> _module.IntSet.Valid($Heap, s#0)
       || ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
         ==> Set#Equal($Unbox(read($Heap, s#0, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), s#0, _module.IntSet.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main.Client1 (correctness)"} Impl$$_module.Main.Client1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Main())
         && $IsAlloc(this, Tclass._module.Main(), $Heap), 
    s#0: ref
       where $Is(s#0, Tclass._module.IntSet())
         && $IsAlloc(s#0, Tclass._module.IntSet(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id829"} _module.IntSet.Valid#canCall($Heap, s#0)
     && 
    _module.IntSet.Valid($Heap, s#0)
     && 
    Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, $Box(s#0))
     && ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref == null
       ==> Set#Equal($Unbox(read($Heap, s#0, _module.IntSet.Contents)): Set, Set#Empty(): Set))
     && ($Unbox(read($Heap, s#0, _module.IntSet.root)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, 
          read($Heap, s#0, _module.IntSet.root))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Repr)): Set, 
          $Box(s#0))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref)
         && Set#Equal($Unbox(read($Heap, s#0, _module.IntSet.Contents)): Set, 
          $Unbox(read($Heap, $Unbox(read($Heap, s#0, _module.IntSet.root)): ref, _module.Node.Contents)): Set));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), s#0, _module.IntSet.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main.Client1 (correctness)"} Impl$$_module.Main.Client1(this: ref, s#0: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x##0: int;
  var x##1: int;

    // AddMethodImpl: Client1, Impl$$_module.Main.Client1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(238,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id830"} s#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := x#0;
    assert {:id "id831"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id832"} Call$$_module.IntSet.Insert(s#0, x##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(239,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id833"} s#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(24);
    assert {:id "id834"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, s#0, _module.IntSet.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id835"} Call$$_module.IntSet.Insert(s#0, x##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/BinaryTree.dfy(240,5)
    assert {:id "id836"} {:subsumption 0} s#0 != null;
    assert {:id "id837"} $IsAlloc(s#0, Tclass._module.IntSet(), old($Heap));
    assert {:id "id838"} {:subsumption 0} s#0 != null;
    assume true;
    assert {:id "id839"} Set#Equal(Set#Difference($Unbox(read(old($Heap), s#0, _module.IntSet.Contents)): Set, 
        Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(x#0)), $Box(LitInt(24)))), 
      Set#Difference($Unbox(read($Heap, s#0, _module.IntSet.Contents)): Set, 
        Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(x#0)), $Box(LitInt(24)))));
}



// $Is axiom for non-null type _module.Main
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Main()) } { $Is(c#0, Tclass._module.Main?()) } 
  $Is(c#0, Tclass._module.Main())
     <==> $Is(c#0, Tclass._module.Main?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Main
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Main(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Main?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Main(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Main?(), $h));

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

const unique tytagFamily$IntSet: TyTagFamily;

const unique tytagFamily$Node: TyTagFamily;

const unique tytagFamily$Main: TyTagFamily;

const unique field$Contents: NameFamily;

const unique field$Repr: NameFamily;

const unique field$root: NameFamily;

const unique field$left: NameFamily;

const unique field$data: NameFamily;

const unique field$right: NameFamily;
