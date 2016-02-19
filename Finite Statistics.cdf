(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.3' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     11437,        419]
NotebookOptionsPosition[     10708,        369]
NotebookOutlinePosition[     11146,        388]
CellTagsIndexPosition[     11103,        385]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"$Assumptions", "=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"0", "\[LessEqual]", "a", "<=", "b", "<=", "1"}], ")"}], "&&", 
   RowBox[{"(", 
    RowBox[{"0", "\[LessEqual]", "c", "<=", "1"}], ")"}], "&&", 
   RowBox[{"(", 
    RowBox[{"0", "==", 
     RowBox[{"Im", "[", "a", "]"}], "==", 
     RowBox[{"Im", "[", "b", "]"}], "==", 
     RowBox[{"Im", "[", "c", "]"}], "==", 
     RowBox[{"Im", "[", "n", "]"}], "==", 
     RowBox[{"Im", "[", "k", "]"}]}], ")"}], "&&", 
   RowBox[{"(", 
    RowBox[{"0", "\[LessEqual]", "k", "\[LessEqual]", "n"}], ")"}], "&&", 
   RowBox[{"(", 
    RowBox[{"n", "\[Element]", "Integers"}], ")"}], "&&", 
   RowBox[{"(", 
    RowBox[{"k", "\[Element]", "Integers"}], ")"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
  "0", "\[LessEqual]", "a", "\[LessEqual]", "b", "\[LessEqual]", "1"}], "&&", 
  RowBox[{"0", "\[LessEqual]", "c", "\[LessEqual]", "1"}], "&&", 
  RowBox[{"0", "\[Equal]", 
   RowBox[{"Im", "[", "a", "]"}], "\[Equal]", 
   RowBox[{"Im", "[", "b", "]"}], "\[Equal]", 
   RowBox[{"Im", "[", "c", "]"}], "\[Equal]", 
   RowBox[{"Im", "[", "n", "]"}], "\[Equal]", 
   RowBox[{"Im", "[", "k", "]"}]}], "&&", 
  RowBox[{"0", "\[LessEqual]", "k", "\[LessEqual]", "n"}], "&&", 
  RowBox[{"n", "\[Element]", "Integers"}], "&&", 
  RowBox[{"k", "\[Element]", "Integers"}]}]], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"fp", "[", "p_", "]"}], ":=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"n", "+", "1"}], ")"}], 
   RowBox[{"Binomial", "[", 
    RowBox[{"n", ",", "k"}], "]"}], 
   RowBox[{"p", "^", "k"}], 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "-", "p"}], ")"}], "^", 
    RowBox[{"(", 
     RowBox[{"n", "-", "k"}], ")"}]}]}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"fp", "[", "p", "]"}], "/.", 
     RowBox[{"{", 
      RowBox[{"k", "\[Rule]", "0"}], "}"}]}], ",", 
    RowBox[{"{", 
     RowBox[{"p", ",", "0", ",", "b"}], "}"}]}], "]"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"1", "-", 
  SuperscriptBox[
   RowBox[{"(", 
    RowBox[{"1", "-", "b"}], ")"}], 
   RowBox[{"1", "+", "n"}]]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", "\[IndentingNewLine]", 
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{"c", "==", 
     RowBox[{"1", "-", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"1", "-", "b"}], ")"}], 
       RowBox[{"1", "+", "n"}]]}]}], ",", "b"}], "]"}], "\[IndentingNewLine]",
   "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Solve", "::", "ifun"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Inverse functions are being used by \
\[NoBreak]\\!\\(\\*RowBox[{\\\"Solve\\\"}]\\)\[NoBreak], so some solutions \
may not be found; use Reduce for complete solution information. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/Solve/ifun\\\", \
ButtonNote -> \\\"Solve::ifun\\\"]\\)\"\>"}]], "Message", "MSG"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"b", "\[Rule]", 
    RowBox[{"1", "-", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "c"}], ")"}], 
      FractionBox["1", 
       RowBox[{"1", "+", "n"}]]]}]}], "}"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"N", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"1", "-", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "c"}], ")"}], 
      FractionBox["1", 
       RowBox[{"1", "+", "n"}]]]}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"c", "\[Rule]", 
       RowBox[{"1", "/", "2"}]}], ",", 
      RowBox[{"n", "\[Rule]", "2"}]}], "}"}]}], ",", "10"}], "]"}]], "Input"],

Cell[BoxData["0.20629947401590020827910620937473140657`10."], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"N", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"1", "-", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "c"}], ")"}], 
      FractionBox["1", 
       RowBox[{"1", "+", "n"}]]]}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"c", "\[Rule]", 
       RowBox[{"95", "/", "100"}]}], ",", 
      RowBox[{"n", "\[Rule]", "2"}]}], "}"}]}], ",", "10"}], "]"}]], "Input"],

Cell[BoxData["0.63159685013596126477774051659922322`10."], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"1", "/", "100"}], "==", 
    RowBox[{"1", "-", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", 
        RowBox[{"99", "/", "100"}]}], ")"}], 
      FractionBox["1", 
       RowBox[{"1", "+", "n"}]]]}]}], ",", "n", ",", "Reals"}], 
  "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"n", "\[Rule]", 
    FractionBox[
     RowBox[{
      RowBox[{"2", " ", 
       RowBox[{"Log", "[", "3", "]"}]}], "+", 
      RowBox[{"Log", "[", "11", "]"}]}], 
     RowBox[{
      RowBox[{"2", " ", 
       RowBox[{"Log", "[", "2", "]"}]}], "-", 
      RowBox[{"2", " ", 
       RowBox[{"Log", "[", "3", "]"}]}], "+", 
      RowBox[{"2", " ", 
       RowBox[{"Log", "[", "5", "]"}]}], "-", 
      RowBox[{"Log", "[", "11", "]"}]}]]}], "}"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"N", "[", 
  RowBox[{
   FractionBox[
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"Log", "[", "3", "]"}]}], "+", 
     RowBox[{"Log", "[", "11", "]"}]}], 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"Log", "[", "2", "]"}]}], "-", 
     RowBox[{"2", " ", 
      RowBox[{"Log", "[", "3", "]"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"Log", "[", "5", "]"}]}], "-", 
     RowBox[{"Log", "[", "11", "]"}]}]], ",", "10"}], "]"}]], "Input"],

Cell[BoxData["457.21057655338891223693687416514100719354`10."], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", "\[IndentingNewLine]", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"fp", "[", "p", "]"}], "/.", 
     RowBox[{"{", 
      RowBox[{"n", "\[Rule]", "k"}], "}"}]}], ",", 
    RowBox[{"{", 
     RowBox[{"p", ",", "a", ",", "1"}], "}"}]}], "]"}], "\[IndentingNewLine]",
   "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"1", "-", 
  SuperscriptBox["a", 
   RowBox[{"1", "+", "k"}]]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", "\[IndentingNewLine]", 
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{"c", "==", 
     RowBox[{"1", "-", 
      SuperscriptBox["a", 
       RowBox[{"1", "+", "k"}]]}]}], ",", "a"}], "]"}], "\[IndentingNewLine]",
   "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Solve", "::", "ifun"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Inverse functions are being used by \
\[NoBreak]\\!\\(\\*RowBox[{\\\"Solve\\\"}]\\)\[NoBreak], so some solutions \
may not be found; use Reduce for complete solution information. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/Solve/ifun\\\", \
ButtonNote -> \\\"Solve::ifun\\\"]\\)\"\>"}]], "Message", "MSG"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"a", "\[Rule]", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"1", "-", "c"}], ")"}], 
     FractionBox["1", 
      RowBox[{"1", "+", "k"}]]]}], "}"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", "\[IndentingNewLine]", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"n", "+", "1"}], ")"}], 
     RowBox[{"Binomial", "[", 
      RowBox[{"n", ",", "k"}], "]"}], 
     RowBox[{"p", "^", "k"}], 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "-", "p"}], ")"}], "^", 
      RowBox[{"(", 
       RowBox[{"n", "-", "k"}], ")"}]}]}], ",", 
    RowBox[{"{", 
     RowBox[{"p", ",", "a", ",", "b"}], "}"}]}], "]"}], "\[IndentingNewLine]",
   "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{"1", "+", "n"}], ")"}], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"Beta", "[", 
      RowBox[{"a", ",", 
       RowBox[{"1", "+", "k"}], ",", 
       RowBox[{"1", "-", "k", "+", "n"}]}], "]"}]}], "+", 
    RowBox[{"Beta", "[", 
     RowBox[{"b", ",", 
      RowBox[{"1", "+", "k"}], ",", 
      RowBox[{"1", "-", "k", "+", "n"}]}], "]"}]}], ")"}], " ", 
  RowBox[{"Binomial", "[", 
   RowBox[{"n", ",", "k"}], "]"}]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", 
  RowBox[{"D", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"p", "^", "k"}], 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "-", "p"}], ")"}], "^", 
      RowBox[{"(", 
       RowBox[{"n", "-", "k"}], ")"}]}]}], ",", "p"}], "]"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  SuperscriptBox[
   RowBox[{"(", 
    RowBox[{"1", "-", "p"}], ")"}], 
   RowBox[{
    RowBox[{"-", "1"}], "-", "k", "+", "n"}]], " ", 
  SuperscriptBox["p", 
   RowBox[{
    RowBox[{"-", "1"}], "+", "k"}]], " ", 
  RowBox[{"(", 
   RowBox[{"k", "-", 
    RowBox[{"n", " ", "p"}]}], ")"}]}]], "Output"]
}, Open  ]]
},
WindowSize->{821, 482},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.3 for Microsoft Windows (64-bit) (December 10, 2015)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 746, 19, 72, "Input"],
Cell[2235, 56, 610, 13, 52, "Output"]
}, Open  ]],
Cell[2860, 72, 368, 13, 31, "Input"],
Cell[CellGroupData[{
Cell[3253, 89, 303, 9, 31, "Input"],
Cell[3559, 100, 147, 5, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3743, 110, 335, 10, 77, "Input"],
Cell[4081, 122, 510, 10, 39, "Message"],
Cell[4594, 134, 263, 9, 44, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4894, 148, 408, 14, 44, "Input"],
Cell[5305, 164, 71, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5413, 169, 411, 14, 44, "Input"],
Cell[5827, 185, 68, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5932, 190, 342, 12, 44, "Input"],
Cell[6277, 204, 516, 16, 48, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6830, 225, 478, 15, 48, "Input"],
Cell[7311, 242, 73, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7421, 247, 352, 10, 72, "Input"],
Cell[7776, 259, 98, 3, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7911, 267, 278, 8, 77, "Input"],
Cell[8192, 277, 510, 10, 39, "Message"],
Cell[8705, 289, 233, 8, 44, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8975, 302, 545, 17, 72, "Input"],
Cell[9523, 321, 503, 16, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[10063, 342, 299, 10, 31, "Input"],
Cell[10365, 354, 327, 12, 31, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature awT6U6rEaHTb1AgDDmOZ22Y0 *)
