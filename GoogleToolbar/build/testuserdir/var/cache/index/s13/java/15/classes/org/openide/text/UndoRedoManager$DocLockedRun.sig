Êþº¾   4 Ê
      -org/openide/text/UndoRedoManager$DocLockedRun <init> H(Lorg/openide/text/UndoRedoManager;ILjavax/swing/text/StyledDocument;I)V
    	 I(Lorg/openide/text/UndoRedoManager;ILjavax/swing/text/StyledDocument;IZ)V	     this$0 "Lorg/openide/text/UndoRedoManager;
      java/lang/Object ()V	     type I	     	intResult  )org/openide/text/NbDocument$WriteLockable     	runAtomic (Ljava/lang/Runnable;)V ! " # $  javax/swing/text/StyledDocument render
  & '  run
 ) * + , -  org/openide/text/UndoRedoManager 
access$000 C(Lorg/openide/text/UndoRedoManager;)Ljavax/swing/undo/CompoundEdit; / $javax/swing/undo/CannotRedoException
 . 
 ) 2 3 4 
access$101 %(Lorg/openide/text/UndoRedoManager;)V
 ) 6 7 4 
access$200
 ) 9 : 4 
access$301
 ) < = > 
access$401 %(Lorg/openide/text/UndoRedoManager;)Z	  @ A B booleanResult Z
 ) D E > 
access$501
 ) G H I 
access$601 %(Lorg/openide/text/UndoRedoManager;)I
 ) K L M 
access$700 ()Ljava/util/logging/Logger;	 O P Q R S java/util/logging/Level FINE Ljava/util/logging/Level;
 U V W X Y java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z
 ) [ \ ] 
access$800 6(Lorg/openide/text/UndoRedoManager;)Ljava/util/Vector;
 ) _ ` ] 
access$900
 b c d e f java/util/Vector size ()I h java/lang/StringBuilder
 g  k discardAllEdits(): savepoint=
 g m n o append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ) q r s isAtSavepoint ()Z
 g u n v (Z)Ljava/lang/StringBuilder; x , editsSize=
 g z n { (I)Ljava/lang/StringBuilder; } 

 g    toString ()Ljava/lang/String;
 U    fine (Ljava/lang/String;)V
 )   4 access$1000
 )   4 access$1101
 )    access$1201 &(Lorg/openide/text/UndoRedoManager;I)V
 )   > access$1301
 )    access$1401 6(Lorg/openide/text/UndoRedoManager;)Ljava/lang/String;	     stringResult Ljava/lang/String;
      javax/swing/undo/CompoundEdit getRedoPresentationName
 ) ¡ ¢  access$1501
  ¤ ¥  getUndoPresentationName
 ) § ¨  access$1601
 ) ª « 4 access$1701 ­ "java/lang/IllegalArgumentException ¯ Unknown type: 
 ¬ ±   ³ java/lang/Runnable G(Lorg/openide/text/UndoRedoManager;ILjavax/swing/text/StyledDocument;)V Code LineNumberTable LocalVariableTable this /Lorg/openide/text/UndoRedoManager$DocLockedRun; doc !Ljavax/swing/text/StyledDocument; MethodParameters intValue readLock StackMapTable 	editsSize Â java/lang/String 
SourceFile UndoRedoManager.java InnerClasses DocLockedRun È org/openide/text/NbDocument WriteLockable 0    ²         A B                      ´  µ   K     	*+-· ±    ¶   
   O P ·        	 ¸ ¹     	      	 º »  ¼        º       µ   W     *+-· ±    ¶   
   S 
T ·   *     ¸ ¹            º »     ½   ¼        º   ½     	  µ   Ô     E*+µ 
*· *µ *µ  -Á  -À *¹  §  -Æ -*¹   § *¶ %±    ¶   & 	  V 	W X Z  [ -] 6^ @f Di ·   4    E ¸ ¹     E      E º »    E ½     E ¾ B  ¿    ÿ -   ) !   ¼        º   ½   ¾    '   µ  ð    »*´ ª               @   \   m      ¥   ³    +  6  D  i  *´ 
¸ (Æ » .Y· 0¿*´ 
¸ 1§]*´ 
¸ 5*´ 
¸ 8§L**´ 
¸ (Æ § 
*´ 
¸ ;µ ?§0**´ 
¸ (Æ § 
*´ 
¸ Cµ ?§**´ 
¸ Fµ §¸ J² N¶ T I*´ 
¸ ZÆ *´ 
¸ ^¶ a§ <¸ J» gY· ij¶ l*´ 
¶ p¶ tw¶ l¶ y|¶ l¶ ~¶ *´ 
¸ 5*´ 
¸ *´ 
¸ § *´ 
*´ ¸ § *´ 
¸ W§ **´ 
¸ µ § u**´ 
¸ (Æ *´ 
¸ (¶ § 
*´ 
¸  µ § P**´ 
¸ (Æ *´ 
¸ (¶ £§ 
*´ 
¸ ¦µ § +*´ 
¸ ©§ !» ¬Y» gY· i®¶ l*´ ¶ y¶ ~· °¿±    ¶    '  l Dn No Vq ]r `u gv nw qz { ~ ¦ © ´ · Ã Ü	!,/7:EHS`j m£x¤¥¦©ª­º¯ ·     Ü - À    » ¸ ¹   ¿   c û D	N ÿ     N ÿ     "@-
W ÿ      ÁW ÿ      Á	  Ã    Ä Å      ) Æ   Ç É	