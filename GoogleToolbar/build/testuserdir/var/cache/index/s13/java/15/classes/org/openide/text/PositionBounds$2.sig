Źžŗ¾   4 s	      !org/openide/text/PositionBounds$2 this$0 !Lorg/openide/text/PositionBounds;	   	 
 
val$editor )Lorg/openide/text/CloneableEditorSupport;	     val$doc !Ljavax/swing/text/StyledDocument;	     val$text Ljava/lang/String;	     val$hold [Ljava/lang/Object;
      java/lang/Object <init> ()V
     ! " 'org/openide/text/CloneableEditorSupport getLock ()Ljava/lang/Object; $ % & ' ( javax/swing/text/StyledDocument 	getLength ()I
 * + , - . org/openide/text/PositionBounds 
access$100 A(Lorg/openide/text/PositionBounds;)Lorg/openide/text/PositionRef;
 0 1 2 3 ( org/openide/text/PositionRef 	getOffset $ 5 6 7 insertString 5(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
 0 9 : ; getPositionBias "()Ljavax/swing/text/Position$Bias;
  = > ? createPositionRef A(ILjavax/swing/text/Position$Bias;)Lorg/openide/text/PositionRef;
 * A B C 
access$102 _(Lorg/openide/text/PositionBounds;Lorg/openide/text/PositionRef;)Lorg/openide/text/PositionRef;	 E F G H I javax/swing/text/Position$Bias Forward  Ljavax/swing/text/Position$Bias;	 E K L I Backward
 * N  O ?(Lorg/openide/text/PositionRef;Lorg/openide/text/PositionRef;)V Q %javax/swing/text/BadLocationException S java/lang/Runnable (Lorg/openide/text/PositionBounds;Lorg/openide/text/CloneableEditorSupport;Ljavax/swing/text/StyledDocument;Ljava/lang/String;[Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this #Lorg/openide/text/PositionBounds$2; MethodParameters 	Signature run docLen I p1 p2 posBegin Lorg/openide/text/PositionRef; posEnd e 'Ljavax/swing/text/BadLocationException; StackMapTable h java/lang/Throwable 
SourceFile PositionBounds.java EnclosingMethod m n insertAfter 5(Ljava/lang/String;)Lorg/openide/text/PositionBounds; InnerClasses q javax/swing/text/Position Bias      R  	 
                       T  U   T      *+µ *,µ *-µ *µ *µ *· ±    V        W         X Y          Z     	    [      \   U  m     *“ ¶ YLĀ*“ ¹ # =*“ ø )¶ />*“ *“ ¹ 4 *“ ¹ # `d6*“ *“ *“ ø )¶ 8¶ <ø @W*“ ² D¶ <:*“ ² J¶ <:*“ » *Y· MS§ M*“ ,S+Ć§ 
:+Ćæ±  
   P 
           V   :     
 §  ©  Ŗ . ¬ = ® W ° d ± r ²  µ  ³  “  ¶  · W   H   o ] ^   d _ ^  = F ` ^  d  a b  r  c b    d e     X Y   f    ’      PD gś   i    j k    * l o            E p r 