����   4 a	      1org/openide/text/CloneableEditorSupport$DocFilter this$0 )Lorg/openide/text/CloneableEditorSupport;
  	 
   javax/swing/text/DocumentFilter <init> ()V	     
origFilter !Ljavax/swing/text/DocumentFilter;
     checkModificationAllowed (I)Z
     insertString c(Ljavax/swing/text/DocumentFilter$FilterBypass;ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
      'org/openide/text/CloneableEditorSupport callNotifyUnmodified
     ! remove 3(Ljavax/swing/text/DocumentFilter$FilterBypass;II)V
  # $ % replace d(Ljavax/swing/text/DocumentFilter$FilterBypass;IILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
  ' ( ) 
access$400 =(Lorg/openide/text/CloneableEditorSupport;)Ljava/lang/Object;
  + , - isAlreadyModified ()Z
  / 0 - callNotifyModified
  2 3 4 modificationNotAllowed (I)V 6 %javax/swing/text/BadLocationException 8 Modification not allowed
 5 :  ; (Ljava/lang/String;I)V M(Lorg/openide/text/CloneableEditorSupport;Ljavax/swing/text/DocumentFilter;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/text/CloneableEditorSupport$DocFilter; MethodParameters fb .Ljavax/swing/text/DocumentFilter$FilterBypass; offset I string Ljava/lang/String; attr Ljavax/swing/text/AttributeSet; origModified Z success StackMapTable P java/lang/Throwable 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; length text attrs alreadyModified Y java/lang/Object 
SourceFile CloneableEditorSupport.java InnerClasses 	DocFilter _ ,javax/swing/text/DocumentFilter$FilterBypass FilterBypass 0                   <  =   K     *+� *� *,� �    >      	 		 	 ?        @ A         B   	         =       W*� 66*� � *� +-� � *+-� 6� (� #*� � � :� � 
*� � ��  
 , @   @ B @    >   :   	 	  
	" 	#  	% )	' ,	) 1	* 6	+ @	) G	* L	+ S	. V	/ ?   H    W @ A     W C D    W E F    W G H    W I J   P K L  
 M M L  N    �  V O�  O�  Q     5 B    C   E   G   I   R     S      !  =       S*� 66*� � *� +� � 
*+� 6� (� #*� � � :� � 
*� � ��  
 ( <   < > <    >   :   	3 	4 
	6 	7 	9 %	; (	= -	> 2	? <	= C	> H	? O	B R	C ?   >    S @ A     S C D    S E F    S T F   L K L  
 I M L  N    � V O�  O�  Q     5 B    C   E   T   R     S    $ %  =  *  	   [*� 66*� � *� +� "� *+� "6� (� #*� � � :� � 
*� � ��  
 0 D   D F D    >   :   	G 	H 
	J 	K "	M -	O 0	Q 5	R :	S D	Q K	R P	S W	V Z	W ?   R    [ @ A     [ C D    [ E F    [ T F    [ U H    [ V J   T K L  
 Q M L  N    � "
V O�  O�  Q     5 B    C   E   T   U   V   R     S       =   �     /*� � &YN�*� � *=-ç 
:-��*� � .� *� 1�  
           >      	[ 
	\ 	] 	^ (	_ -	a ?   *    W L    / @ A     / E F    W L  N   ! �     X  O�      Q     5 B    E    3 4  =   ?     � 5Y7� 9�    >      	e ?        @ A      E F  Q     5 B    E    Z    [ \       ]  ^  `	