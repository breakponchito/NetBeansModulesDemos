Êþº¾   4 «	      org/openide/text/PositionBounds end Lorg/openide/text/PositionRef;	   	  begin
      java/lang/Object <init> ()V
      org/openide/text/PositionRef getCloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport;
      'org/openide/text/CloneableEditorSupport openDocument #()Ljavax/swing/text/StyledDocument;  %javax/swing/text/BadLocationException  !org/openide/text/PositionBounds$1
  !  " ¨(Lorg/openide/text/PositionBounds;Ljava/lang/String;Ljavax/swing/text/StyledDocument;Lorg/openide/text/CloneableEditorSupport;[Ljavax/swing/text/BadLocationException;)V
 $ % & ' ( org/openide/text/NbDocument 	runAtomic 8(Ljavax/swing/text/StyledDocument;Ljava/lang/Runnable;)V
 * + , - . java/lang/String length ()I
 0 1 2 3 4 org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle; 6 MSG_Empty_string
 8 9 : ; < java/util/ResourceBundle 	getString &(Ljava/lang/String;)Ljava/lang/String;
  > ? . 	getOffset
  A  B (Ljava/lang/String;I)V D !org/openide/text/PositionBounds$2
 C F  G (Lorg/openide/text/PositionBounds;Lorg/openide/text/CloneableEditorSupport;Ljavax/swing/text/StyledDocument;Ljava/lang/String;[Ljava/lang/Object;)V I J K L M javax/swing/text/StyledDocument getText (II)Ljava/lang/String; O java/lang/StringBuffer Q Position bounds[
 N S  T (Ljava/lang/String;)V
  V L W ()Ljava/lang/String;
 N Y Z [ append ,(Ljava/lang/Object;)Ljava/lang/StringBuffer; ] ,
 N _ Z ` ,(Ljava/lang/String;)Ljava/lang/StringBuffer; b ," d " f java/io/IOException h 	Invalid: 
 e j k W 
getMessage
  j n ]
 N p q W toString s java/io/Serializable serialVersionUID J ConstantValue.TÄÐö ?(Lorg/openide/text/PositionRef;Lorg/openide/text/PositionRef;)V Code LineNumberTable LocalVariableTable this !Lorg/openide/text/PositionBounds; MethodParameters getBegin  ()Lorg/openide/text/PositionRef; getEnd setText text Ljava/lang/String; editor )Lorg/openide/text/CloneableEditorSupport; doc !Ljavax/swing/text/StyledDocument; hold ([Ljavax/swing/text/BadLocationException; run Ljava/lang/Runnable; StackMapTable   java/lang/Runnable 
Exceptions insertAfter 5(Ljava/lang/String;)Lorg/openide/text/PositionBounds; [Ljava/lang/Object;  p1 I p2 content e Ljava/io/IOException; 'Ljavax/swing/text/BadLocationException; buf Ljava/lang/StringBuffer; 
access$000 A(Lorg/openide/text/PositionBounds;)Lorg/openide/text/PositionRef; x0 
access$100 
access$002 _(Lorg/openide/text/PositionBounds;Lorg/openide/text/PositionRef;)Lorg/openide/text/PositionRef; x1 
access$102 
SourceFile PositionBounds.java InnerClasses 1    r   t u  v    w  	            y  z   Y     *· 
*+µ *,µ ±    {       /  0 	 1  2 |         } ~      	            	 	          z   /     *´ °    {       9 |        } ~       z   /     *´ °    {       A |        } ~     T  z   Ò     9*´ ¶ M,¶ N½ YS:» Y*+-,·  :-¸ #2Æ 2¿±    {   "    L  M  N  O &  ,  3  8  |   >    9 } ~     9     1     ,     "    &         ÿ 8   *  I          e            z       g+¶ ) » Y¸ /5¶ 7*´ ¶ =· @¿*´ ¶ M,¶ N½ YSYS:» CY*,-+· E:-¸ #2Æ 2À ¿2À °    {   .            (  -  ;  J º P ¼ W ½ _ ¿ |   >    g } ~     g    ( ?    - :    ; ,    J          ÿ >   *  I          e         L W  z   z     &*´ ¶ ¶ L*´ ¶ ==*´ ¶ =>+d¹ H °    {       É  Ê  Ë  Í |   *    & } ~                        e  q W  z  3     p» NYP· RL*¶ UM+*´ ¶ XW+\¶ ^W+*´ ¶ XW+a¶ ^W+,¶ ^W+c¶ ^W§ (M+g¶ ^W+,¶ i¶ ^W§ M+g¶ ^W+,¶ l¶ ^W+m¶ ^W+¶ o°  
 < ? e 
 < S   {   J    Ò 
 Õ  Ö  ×  Ø ( Ù / Ú 5 Û < â ? Ü @ Ý G Þ P â S ß T à [ á d ä k æ |   4   -    @     T       p } ~   
 f        ÿ ?   N  eS    ¡  z   /     *´ °    {       " |        ¢ ~   £ ¡  z   /     *´ °    {       " |        ¢ ~   ¤ ¥  z   ;     *+Zµ °    {       " |        ¢ ~      ¦   § ¥  z   ;     *+Zµ °    {       " |        ¢ ~      ¦    ¨    © ª            C      