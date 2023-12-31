Êþº¾   4 Ì
      java/lang/Object <init> ()V	  	 
   org/openide/text/FilterDocument original Ljavax/swing/text/Document;      javax/swing/text/Document 	getLength ()I     addDocumentListener '(Ljavax/swing/event/DocumentListener;)V     removeDocumentListener     addUndoableEditListener +(Ljavax/swing/event/UndoableEditListener;)V      removeUndoableEditListener " javax/swing/text/DocumentFilter $ !javax/swing/text/AbstractDocument
 # & ' ( getDocumentFilter #()Ljavax/swing/text/DocumentFilter;  * + , getProperty &(Ljava/lang/Object;)Ljava/lang/Object;
 # . / 0 setDocumentFilter $(Ljavax/swing/text/DocumentFilter;)V  2 3 4 putProperty '(Ljava/lang/Object;Ljava/lang/Object;)V  6 7 8 remove (II)V  : ; < insertString 5(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V  > ? @ getText (II)Ljava/lang/String;  B ? C (IILjavax/swing/text/Segment;)V  E F G getStartPosition ()Ljavax/swing/text/Position;  I J G getEndPosition  L M N createPosition (I)Ljavax/swing/text/Position;  P Q R getRootElements ()[Ljavax/swing/text/Element;  T U V getDefaultRootElement ()Ljavax/swing/text/Element;  X Y Z render (Ljava/lang/Runnable;)V
  T ] ^ _ ` a javax/swing/text/Element isLeaf ()Z ] c d e getElementIndex (I)I ] g h i 
getElement (I)Ljavax/swing/text/Element;
  k l V getLeafElement	 n o p q r java/awt/Color black Ljava/awt/Color;	 n t u r white	  w x y leaf Ljavax/swing/text/Element; { "javax/swing/text/html/HTMLDocument
 z  ~ -javax/swing/text/AbstractDocument$LeafElement
     , java/util/Objects requireNonNull
 }    a(Ljavax/swing/text/AbstractDocument;Ljavax/swing/text/Element;Ljavax/swing/text/AttributeSet;II)V  javax/swing/text/StyledDocument (Ljavax/swing/text/Document;)V Code LineNumberTable LocalVariableTable this !Lorg/openide/text/FilterDocument; MethodParameters l $Ljavax/swing/event/DocumentListener; listener (Ljavax/swing/event/UndoableEditListener; key Ljava/lang/Object; StackMapTable value offset I len 
Exceptions  %javax/swing/text/BadLocationException str Ljava/lang/String; a Ljavax/swing/text/AttributeSet; txt Ljavax/swing/text/Segment; r Ljava/lang/Runnable; addStyle D(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style; nm parent Ljavax/swing/text/Style; removeStyle (Ljava/lang/String;)V getStyle ,(Ljava/lang/String;)Ljavax/swing/text/Style; setCharacterAttributes %(IILjavax/swing/text/AttributeSet;Z)V length s replace Z setParagraphAttributes setLogicalStyle (ILjavax/swing/text/Style;)V pos getLogicalStyle (I)Ljavax/swing/text/Style; p getParagraphElement index e getCharacterElement getForeground 1(Ljavax/swing/text/AttributeSet;)Ljava/awt/Color; attr getBackground getFont 0(Ljavax/swing/text/AttributeSet;)Ljava/awt/Font; doc #Ljavax/swing/text/AbstractDocument; 
SourceFile FilterDocument.java InnerClasses LeafElement !      
 x y                F     
*· *+µ ±           ,  - 	 .        
       
                  4     
*´ ¹  ¬           4        
            C     *´ +¹  ±       
    9 
 :                                 C     *´ +¹  ±       
    > 
 ?                                 C     *´ +¹  ±       
    C 
 D                                  C     *´ +¹  ±       
    H 
 I                           + ,     k     &+!¦ *´ Á # *´ À #¶ %°*´ +¹ ) °           M  N  P        &       &                 3 4          -+!¦ *´ Á # *´ À #,À !¶ -§ *´ +,¹ 1 ±           U  V ! X , Z         -       -      -        !
    	        7 8     N     *´ ¹ 5 ±       
    ^  _                                   	        ; <     Y     *´ ,-¹ 9 ±       
    d  e    *                          ¡                       ? @     J     *´ ¹ = °           i                                   	        ? C     Y     *´ -¹ A ±       
    o  p    *                        ¢ £                  ¢    F G     4     
*´ ¹ D °           t        
      J G     4     
*´ ¹ H °           y        
      M N     ?     *´ ¹ K °           ~                                 Q R     4     
*´ ¹ O °                   
      U V     4     
*´ ¹ S °                   
      Y Z     C     *´ +¹ W ±       
     
                 ¤ ¥      ¤    ¦ §     @     °           §                 ¨      © ª     	 ¨   ©    « ¬     5      ±           °                ¨       ¨    ­ ®     6     °           ¹                ¨       ¨    ¯ °     S      ±           Ð    4                  ±      ² ¡     ³ ´         ±   ²   ³    µ °     S      ±           à    4                  ±      ² ¡     ³ ´         ±   ²   ³    ¶ ·     ?      ±           î                 ¸      ² ª     	 ¸   ²    ¹ º     6     °           ÷                »       »    ¼ i          +*¶ [M,Æ ,¹ \  ,¹ b >,¹ f M§ ¸ jM,°              " % )	    *    ½     +       + ¸    & ¾ y     	 ü % ]     ¸    ¿ i     8     ¸ j°                          ¸       ¸    À Á     8     ² m°                           Â ¡      Â    Ã Á     8     ² s°          ,                Â ¡      Â    Ä Å     6     °          9                Â ¡      Â   
 l V     g     (² vÆ ² v°» zY· |K» }Y*Y¸ W· Y³ v°          ? @ 
C E        Æ Ç       
  È    É Ê   
  } # Ë 