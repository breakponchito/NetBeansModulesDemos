����   4 p	      !org/openide/text/PositionBounds$1 this$0 !Lorg/openide/text/PositionBounds;	   	 
 val$text Ljava/lang/String;	     val$doc !Ljavax/swing/text/StyledDocument;	     
val$editor )Lorg/openide/text/CloneableEditorSupport;	     val$hold ([Ljavax/swing/text/BadLocationException;
      java/lang/Object <init> ()V
     ! " org/openide/text/PositionBounds 
access$000 A(Lorg/openide/text/PositionBounds;)Lorg/openide/text/PositionRef;
 $ % & ' ( org/openide/text/PositionRef 	getOffset ()I
  * + " 
access$100
 - . / 0 ( java/lang/String length 2 3 4 5 6 javax/swing/text/StyledDocument remove (II)V 2 8 9 ( 	getLength 2 ; < = insertString 5(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
 $ ? @ A getPositionBias "()Ljavax/swing/text/Position$Bias;
 C D E F G 'org/openide/text/CloneableEditorSupport createPositionRef A(ILjavax/swing/text/Position$Bias;)Lorg/openide/text/PositionRef;
  I J K 
access$002 _(Lorg/openide/text/PositionBounds;Lorg/openide/text/PositionRef;)Lorg/openide/text/PositionRef;
  M N K 
access$102 P %javax/swing/text/BadLocationException R java/lang/Runnable �(Lorg/openide/text/PositionBounds;Ljava/lang/String;Ljavax/swing/text/StyledDocument;Lorg/openide/text/CloneableEditorSupport;[Ljavax/swing/text/BadLocationException;)V Code LineNumberTable LocalVariableTable this #Lorg/openide/text/PositionBounds$1; MethodParameters 	Signature run docLen I p1 p2 len e 'Ljavax/swing/text/BadLocationException; StackMapTable 
SourceFile PositionBounds.java EnclosingMethod h i setText (Ljava/lang/String;)V InnerClasses l javax/swing/text/Position$Bias n javax/swing/text/Position Bias      Q  	 
                       S  T   T      *+� *,� *-� *� *� *� �    U       O V         W X          Y    � 	    Z      [   T  �    *� � � #<*� � )� #=*� � ,>� � �*� d� 1 � �*� � 7 6d� B*� `*� � : *� � 7 d>*� ``dd� 1 *� � 1 � �*� *� � : *� � 7 d>� *� `d� 1 *� � � #� *� *� *� � � >� B� HW*� � )� #d� *� *� `*� � )� >� B� LW� L*� +S�    O  U   b    R  S  T  V " X ' Y 7 ] B _ I ` Z c g d z e � l � o � q � r � u � v � y � z � ~  � V   >  B � \ ]   ^ ]   � _ ]   � ` ]   a b    W X   c    � 7� P/'� +    B O  d    e f     g j            k m o 