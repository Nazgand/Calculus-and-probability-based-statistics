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
NotebookDataLength[     32782,       1092]
NotebookOptionsPosition[     30915,       1005]
NotebookOutlinePosition[     31567,       1030]
CellTagsIndexPosition[     31462,       1025]
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

Cell[BoxData[
 RowBox[{"FullSimplify", "[", "\[IndentingNewLine]", 
  RowBox[{"Integrate", "[", 
   RowBox[{
    RowBox[{"fp", "[", "p", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"p", ",", "a", ",", "b"}], "}"}]}], "]"}], "\[IndentingNewLine]",
   "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"fp", "[", "p", "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{"1", "+", "n"}], ")"}], " ", 
  SuperscriptBox[
   RowBox[{"(", 
    RowBox[{"1", "-", "p"}], ")"}], 
   RowBox[{
    RowBox[{"-", "k"}], "+", "n"}]], " ", 
  SuperscriptBox["p", "k"], " ", 
  RowBox[{"Binomial", "[", 
   RowBox[{"n", ",", "k"}], "]"}]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{"fp", "[", "b", "]"}], "\[Equal]", 
   RowBox[{"fp", "[", "a", "]"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"1", "-", "a"}], ")"}], 
        RowBox[{
         RowBox[{"-", "k"}], "+", "n"}]]}], " ", 
      SuperscriptBox["a", "k"]}], "+", 
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"1", "-", "b"}], ")"}], 
       RowBox[{
        RowBox[{"-", "k"}], "+", "n"}]], " ", 
      SuperscriptBox["b", "k"]}]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{"1", "+", "n"}], ")"}], " ", 
   RowBox[{"Binomial", "[", 
    RowBox[{"n", ",", "k"}], "]"}]}], "\[Equal]", "0"}]], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"FindAB", "[", 
   RowBox[{"n_", ",", "k_", ",", "c_", ",", "precision_"}], "]"}], ":=", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{"n", ">", "k", ">", "0"}], ",", 
    RowBox[{"NSolve", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"0", "\[LessEqual]", "a", "\[LessEqual]", 
        RowBox[{"k", "/", "n"}], "<=", "b", "\[LessEqual]", "1"}], "&&", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"1", "-", "a"}], ")"}], 
             RowBox[{
              RowBox[{"-", "k"}], "+", "n"}]]}], " ", 
           SuperscriptBox["a", "k"]}], "+", 
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"1", "-", "b"}], ")"}], 
            RowBox[{
             RowBox[{"-", "k"}], "+", "n"}]], " ", 
           SuperscriptBox["b", "k"]}]}], ")"}], " ", "\[Equal]", "0"}], "&&", 
       RowBox[{"c", "\[Equal]", 
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "+", "n"}], ")"}], " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"1", "-", "p"}], ")"}], 
            RowBox[{
             RowBox[{"-", "k"}], "+", "n"}]], " ", 
           SuperscriptBox["p", "k"], " ", 
           RowBox[{"Binomial", "[", 
            RowBox[{"n", ",", "k"}], "]"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"p", ",", "a", ",", "b"}], "}"}]}], "]"}]}]}], ",", 
      RowBox[{"{", 
       RowBox[{"a", ",", "b"}], "}"}], ",", "Reals", ",", 
      RowBox[{"WorkingPrecision", "\[Rule]", "precision"}]}], "]"}], 
    "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"n", ">", "k", "==", "0"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"a", "\[Rule]", "0.`10"}], ",", 
         RowBox[{"b", "\[Rule]", 
          RowBox[{"N", "[", 
           RowBox[{
            RowBox[{"1", "-", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"1", "-", "c"}], ")"}], 
              FractionBox["1", 
               RowBox[{"1", "+", "n"}]]]}], ",", "10"}], "]"}]}]}], "}"}], 
       "}"}], "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"n", "==", "k", ">", "0"}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"a", "\[Rule]", 
            RowBox[{"N", "[", 
             RowBox[{
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"1", "-", "c"}], ")"}], 
               FractionBox["1", 
                RowBox[{"1", "+", "k"}]]], ",", "10"}], "]"}]}], ",", 
           RowBox[{"b", "\[Rule]", "1`10"}]}], "}"}], "}"}], 
        "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"n", "==", "k", "==", "0"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"a", "\[Rule]", 
              RowBox[{"N", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"1", "-", "c"}], ")"}], "/", "2"}], ",", "10"}], 
               "]"}]}], ",", 
             RowBox[{"b", "\[Rule]", 
              RowBox[{"N", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"1", "+", "c"}], ")"}], "/", "2"}], ",", "10"}], 
               "]"}]}]}], "}"}], "}"}], "\[IndentingNewLine]", ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", "}"}]}], "\[IndentingNewLine]", "]"}]}], 
       "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "]"}]}], 
   "\[IndentingNewLine]", "]"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"?", "If"}]], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox["\<\"\\!\\(\\*RowBox[{\\\"If\\\", \\\"[\\\", \
RowBox[{StyleBox[\\\"condition\\\", \\\"TI\\\"], \\\",\\\", \
StyleBox[\\\"t\\\", \\\"TI\\\"], \\\",\\\", StyleBox[\\\"f\\\", \
\\\"TI\\\"]}], \\\"]\\\"}]\\) gives \\!\\(\\*StyleBox[\\\"t\\\", \
\\\"TI\\\"]\\) if \\!\\(\\*StyleBox[\\\"condition\\\", \\\"TI\\\"]\\) \
evaluates to True, and \\!\\(\\*StyleBox[\\\"f\\\", \\\"TI\\\"]\\) if it \
evaluates to False. \\n\\!\\(\\*RowBox[{\\\"If\\\", \\\"[\\\", \
RowBox[{StyleBox[\\\"condition\\\", \\\"TI\\\"], \\\",\\\", \
StyleBox[\\\"t\\\", \\\"TI\\\"], \\\",\\\", StyleBox[\\\"f\\\", \\\"TI\\\"], \
\\\",\\\", StyleBox[\\\"u\\\", \\\"TI\\\"]}], \\\"]\\\"}]\\) gives \
\\!\\(\\*StyleBox[\\\"u\\\", \\\"TI\\\"]\\) if \
\\!\\(\\*StyleBox[\\\"condition\\\", \\\"TI\\\"]\\) evaluates to neither True \
nor False. \"\>", "MSG"], "\[NonBreakingSpace]", 
  ButtonBox[
   StyleBox["\[RightSkeleton]", "SR"],
   Active->True,
   BaseStyle->"Link",
   ButtonData->"paclet:ref/If"]}]], "Print", "PrintUsage",
 CellTags->"Info-ba40e586-047f-4825-ad5d-6d3f0cf8fbf2"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FindAB", "[", 
  RowBox[{"2", ",", "1", ",", 
   RowBox[{"1", "/", "2"}], ",", "10"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{
    "a", "\[Rule]", 
     "0.32635182233306966724574443129749020629`9.384222907175104"}], ",", 
    RowBox[{
    "b", "\[Rule]", 
     "0.67364817766693033275425556870250979371`9.698970004336019"}]}], "}"}], 
  "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FindAB", "[", 
  RowBox[{"8", ",", "4", ",", 
   RowBox[{"99", "/", "100"}], ",", "10"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{
    "a", "\[Rule]", 
     "0.14605622373264690990472575549512407122`9.698970004336019"}], ",", 
    RowBox[{
    "b", "\[Rule]", 
     "0.85394377124444512639783596627148625444`9.698970004336019"}]}], "}"}], 
  "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FindAB", "[", 
  RowBox[{"0", ",", "0", ",", 
   RowBox[{"1", "/", "2"}], ",", "10"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"a", "\[Rule]", "0.25`10."}], ",", 
    RowBox[{"b", "\[Rule]", "0.75`10."}]}], "}"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FindAB", "[", 
  RowBox[{"1", ",", "0", ",", 
   RowBox[{"1", "/", "2"}], ",", "10"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"a", "\[Rule]", "0.`"}], ",", 
    RowBox[{
    "b", "\[Rule]", "0.29289321881345253828499153314623981714`10."}]}], "}"}],
   "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FindAB", "[", 
  RowBox[{"1", ",", "1", ",", 
   RowBox[{"1", "/", "2"}], ",", "10"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"a", "\[Rule]", "0.70710678118654746171500846685376018286`10."}], 
    ",", 
    RowBox[{"b", "\[Rule]", "1.`10."}]}], "}"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Table", "[", 
  RowBox[{
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"FindAB", "[", 
      RowBox[{"n", ",", "k", ",", 
       RowBox[{"1", "/", "2"}], ",", "10"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"k", ",", "0", ",", "n"}], "}"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"n", ",", "0", ",", "8"}], "}"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"{", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"a", "\[Rule]", "0.25`10."}], ",", 
       RowBox[{"b", "\[Rule]", "0.75`10."}]}], "}"}], "}"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "\[Rule]", "0.`"}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.29289321881345253828499153314623981714`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.70710678118654746171500846685376018286`10."}], ",", 
        RowBox[{"b", "\[Rule]", "1.`10."}]}], "}"}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "\[Rule]", "0.`"}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.20629947401590020827910620937473140657`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.32635182233306966724574443129749020629`9.384222907175104"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.67364817766693033275425556870250979371`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.79370052598409979172089379062526859343`10."}], ",", 
        RowBox[{"b", "\[Rule]", "1.`10."}]}], "}"}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "\[Rule]", "0.`"}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.15910358474628549796392462667427025735`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.19667132414976704173965338859238741147`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.4921993002263649182075803128506014523`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.50780069957014620779058103947510376815`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.80332867571556647611397261586687873642`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.84089641525371450203607537332572974265`10."}], ",", 
        RowBox[{"b", "\[Rule]", "1.`10."}]}], "}"}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "\[Rule]", "0.`"}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.12944943670387587530967721249908208847`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.13877544543667386720545430568664571175`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.38940442433034313387995467928747988623`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.359436164789008233410495919526978098`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.64056383521125602022978977334769379358`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.61059557549027602161891850096453022915`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.86122455462630162472706811529881113247`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.87055056329612412469032278750091791153`10."}], ",", 
        RowBox[{"b", "\[Rule]", "1.`10."}]}], "}"}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "\[Rule]", "0.`"}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.10910128185966072589252462421427480876`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.1065967785239535672572100921014618359`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.32269108403729289171983024751524846242`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.27703095058732889276004111423455981228`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.5321259945893941718723189685280290319`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.46787400554629493342698197932572529733`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.72296904968744492887262965683696627679`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.6773089164030458332498724530468050339`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.89340322192115690032613190591602149533`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.89089871814033927410747537578572519124`10."}], ",", 
        RowBox[{"b", "\[Rule]", "1.`10."}]}], "}"}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "\[Rule]", "0.`"}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.09427633573609328632159076732932589948`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.08629052978527507303487813037510227283`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.27571786918800047426893392710973110792`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.22492917717516687708084776505229263397`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.455118568163317950376251550093272998`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.37884844066411231879181251242467040252`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.62115155912303285110463274652606313098`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.54488143171649652555276454278210242069`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.77507082273507133042427664303661919247`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.72428213090160340950754371856987473525`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.91370947040358627487155216177594060437`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.90572366426390671367840923267067410052`10."}], ",", 
        RowBox[{"b", "\[Rule]", "1.`10."}]}], "}"}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "\[Rule]", "0.`"}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.08299595679532878467199452643399126828`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.07237321410838662327392294782370255548`10."}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.2407853462586129064169651027271560026`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.18912483582116804440848396207444668338`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.39763551619339234721781427233102405117`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.31809134741136149876396561911918156168`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.54406762991459312788748997169180209804`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.4559323704746364548605737778613120991`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.68190865234554028382592990161471518153`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.60236448364418745431293171398111483023`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.8108751640440398578146805200696047345`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.7592146537732710785701426415448517514`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.9276267859205276336267035994599447826`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.91700404320467121532800547356600873172`10."}], ",", 
        RowBox[{"b", "\[Rule]", "1.`10."}]}], "}"}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"a", "\[Rule]", "0.`"}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.07412528771270954219829718567780219018`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.06226629927436145104713586646353093031`10."}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.2137614499361518147229147339719905318`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.16305340517221339028806895448378459012`10."}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.35308221736750785235704873181562812989`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.27401925999053778000238996916225661791`10."}], ",", 
        RowBox[{
        "b", "\[Rule]", "0.48387847863012070264029156283163837389`10."}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.39196384257329718287426295216028142153`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.6080361573928759963979694779620920254`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.5161215201335658806622149113509674175`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.72598074036906452201949287048157818361`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.6469177820089822366594352262744359392`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.83694659540911621436590310910813569128`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", 
         "0.78623855041766985665789027336618569428`9.698970004336019"}], ",", 
        RowBox[{
        "b", "\[Rule]", 
         "0.93773370112881018035671454982217021717`9.698970004336019"}]}], 
       "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
        "a", "\[Rule]", "0.92587471228729045780170281432219780982`10."}], ",", 
        RowBox[{"b", "\[Rule]", "1.`10."}]}], "}"}], "}"}]}], "}"}]}], 
  "}"}]], "Output"]
}, Open  ]]
},
WindowSize->{1438, 741},
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
CellTagsIndex->{
 "Info-ba40e586-047f-4825-ad5d-6d3f0cf8fbf2"->{
  Cell[14503, 475, 1083, 20, 62, "Print",
   CellTags->"Info-ba40e586-047f-4825-ad5d-6d3f0cf8fbf2"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"Info-ba40e586-047f-4825-ad5d-6d3f0cf8fbf2", 31337, 1019}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 746, 19, 31, "Input"],
Cell[2235, 56, 610, 13, 31, "Output"]
}, Open  ]],
Cell[2860, 72, 368, 13, 31, "Input"],
Cell[CellGroupData[{
Cell[3253, 89, 303, 9, 31, "Input"],
Cell[3559, 100, 147, 5, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3743, 110, 335, 10, 77, "Input"],
Cell[4081, 122, 510, 10, 21, "Message"],
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
Cell[8192, 277, 510, 10, 21, "Message"],
Cell[8705, 289, 233, 8, 44, "Output"]
}, Open  ]],
Cell[8953, 300, 266, 7, 72, "Input"],
Cell[CellGroupData[{
Cell[9244, 311, 55, 1, 31, "Input"],
Cell[9302, 314, 317, 11, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9656, 330, 155, 4, 31, "Input"],
Cell[9814, 336, 658, 23, 33, "Output"]
}, Open  ]],
Cell[10487, 362, 3943, 106, 451, "Input"],
Cell[CellGroupData[{
Cell[14455, 472, 45, 1, 31, "Input"],
Cell[14503, 475, 1083, 20, 62, "Print",
 CellTags->"Info-ba40e586-047f-4825-ad5d-6d3f0cf8fbf2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15623, 500, 127, 3, 31, "Input"],
Cell[15753, 505, 298, 10, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16088, 520, 130, 3, 31, "Input"],
Cell[16221, 525, 298, 10, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16556, 540, 127, 3, 31, "Input"],
Cell[16686, 545, 173, 5, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16896, 555, 127, 3, 31, "Input"],
Cell[17026, 560, 212, 7, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17275, 572, 127, 3, 31, "Input"],
Cell[17405, 577, 212, 6, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17654, 588, 373, 11, 31, "Input"],
Cell[18030, 601, 12869, 401, 272, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature zv0tsE7mLtsBaBw8@Bk@HEpx *)
