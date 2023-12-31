Ęūēž   4 
      java/lang/Object <init> ()V	  	 
   org/openide/text/WrapUndoEdit $assertionsDisabled Z  java/lang/AssertionError  Delegate is null
     (Ljava/lang/Object;)V	     undoRedoManager "Lorg/openide/text/UndoRedoManager;	     delegate Ljavax/swing/undo/UndoableEdit;  WrapUndoEdit.undo
    ! " #  org/openide/text/UndoRedoManager 
checkLogOp 4(Ljava/lang/String;Ljavax/swing/undo/UndoableEdit;)V
  % & ' isAtSavepoint ()Z
  ) * + beforeUndoAtSavepoint "(Lorg/openide/text/WrapUndoEdit;)V - . / 0  javax/swing/undo/UndoableEdit undo
  2 3 + afterUndoCheck
  5 6 + delegateUndoFailedAtSavepoint - 8 9 ' canUndo ; WrapUndoEdit.redo
  = > + beforeRedoAtSavepoint - @ A  redo
  C D + afterRedoCheck
  F G + delegateRedoFailedAtSavepoint - I J ' canRedo L WrapUndoEdit.die - N O  die
  Q R S notifyWrapEditDie "(Ljavax/swing/undo/UndoableEdit;)V
  U V + mergeSaveActionsToLastEdit - X Y Z addEdit "(Ljavax/swing/undo/UndoableEdit;)Z - \ ] Z replaceEdit _ java/lang/StringBuilder
 ^  b WrapUndoEdit.replaceEdit=
 ^ d e f append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ^ h e i (Z)Ljava/lang/StringBuilder;
 ^ k l m toString ()Ljava/lang/String;
  o p q checkReplaceSavepointEdit A(Lorg/openide/text/WrapUndoEdit;Lorg/openide/text/WrapUndoEdit;)V - s t ' isSignificant - v w m getPresentationName - y z m getUndoPresentationName - | } m getRedoPresentationName
     ' java/lang/Class desiredAssertionStatus D(Lorg/openide/text/UndoRedoManager;Ljavax/swing/undo/UndoableEdit;)V Code LineNumberTable LocalVariableTable this Lorg/openide/text/WrapUndoEdit; StackMapTable MethodParameters !()Ljavax/swing/undo/UndoableEdit; setDelegate 	savepoint done  java/lang/Throwable 
Exceptions  $javax/swing/undo/CannotUndoException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override;  $javax/swing/undo/CannotRedoException anEdit wrapEdit added replaced <clinit> 
SourceFile WrapUndoEdit.java 0    -                              #*ˇ ˛  ,Į ģ Yˇ ŋ*+ĩ *,ĩ ą           3  4  5  6 " 7         #       #      #        ˙     -      	               /     *´ °           :                S     >     *+ĩ ą       
    >  ?                           0      ø     Z*´ *ļ *´ ļ $< *´ *ļ (=*´ š , =*´ *ļ 1 % !*´ *ļ 4§ N  *´ *ļ 4-ŋą    3 F       :    C 
 D  E  F  H   J ) K + M 3 O ; P F O O P W R Y S         Z      H      :        ü ˙ '    ü  ú                 9 '     4     
*´ š 7 Ŧ           W        
              A      ø     Z*´ :*ļ *´ ļ $< *´ *ļ <=*´ š ? =*´ *ļ B % !*´ *ļ E§ N  *´ *ļ E-ŋą    3 F       :    \ 
 ]  ^  _  a   c ) d + f 3 h ; i F h O i W k Y l         Z      H      :        ü ˙ '    ü  ú                 J '     4     
*´ š H Ŧ           p        
              O      R     *´ K*ļ *´ š M *´ *ļ Pą           u 
 v  w  x                      Y Z          )*´ ļ $ *´ *ļ TŦ+Ā M*´ ,´ š W >Ŧ           | 
        '     *    )       )         '                          ] Z     Ŋ     I*´ ļ $ Ŧ+Ā M*´ ,´ š [ >*´ ģ ^Yˇ `aļ cļ gļ j+ļ  *´ ,*ļ nŦ       "     
        :  >  G     *    I       I     8     *       
 ũ :                  t '     4     
*´ š r Ŧ                   
              w m     4     
*´ š u °           ¤        
              z m     4     
*´ š x °           Š        
              } m     4     
*´ š { °           Ž        
                    4      ļ ~ § ŗ ą           '     @      