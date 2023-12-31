Êþº¾   4 À
      java/lang/Object <init> ()V	  	 
   org/openide/text/LazyLines set #Lorg/openide/text/DocumentLine$Set;	      !org/openide/text/DocumentLine$Set listener Lorg/openide/text/LineListener;
      org/openide/text/LineListener getOriginalLineCount ()I  java/util/ArrayList
     (I)V
     ! getOriginal (I)Lorg/openide/text/Line; # $ % & ' java/util/List add (Ljava/lang/Object;)Z	  ) * + delegate Ljava/util/List;
  - . / createDelegate ()Ljava/util/List; 1 org/openide/text/DocumentLine
  3 4 5 findLine 0(Lorg/openide/text/Line;)Lorg/openide/text/Line;
 7 8 9 :  org/openide/text/Line getLineNumber
  < = > getOld (I)I
  @ A ' equals
  C D E indexOf (Ljava/lang/Object;)I
  G H / getDelegate # J K  hashCode M 'java/lang/UnsupportedOperationException
 L  # P Q R listIterator ()Ljava/util/ListIterator; # T U V toArray ()[Ljava/lang/Object; # X U Y (([Ljava/lang/Object;)[Ljava/lang/Object; # [ Q \ (I)Ljava/util/ListIterator; # @ # _ ` ' contains # b c  clear # e f  size # h i j get (I)Ljava/lang/Object; # l m n containsAll (Ljava/util/Collection;)Z # p q r isEmpty ()Z # t u v subList (II)Ljava/util/List; # x y j remove # { | } iterator ()Ljava/util/Iterator;
   y !
   &  (ILorg/openide/text/Line;)V
     1(ILorg/openide/text/Line;)Lorg/openide/text/Line;
   i !
   &  (Lorg/openide/text/Line;)Z 	Signature )Ljava/util/List<Lorg/openide/text/Line;>; &(Lorg/openide/text/DocumentLine$Set;)V Code LineNumberTable LocalVariableTable this Lorg/openide/text/LazyLines; MethodParameters i I cnt l LocalVariableTypeTable StackMapTable +()Ljava/util/List<Lorg/openide/text/Line;>; indx find Lorg/openide/text/Line; o Ljava/lang/Object; lastIndexOf addAll c Ljava/util/Collection; 0Ljava/util/Collection<+Lorg/openide/text/Line;>; 3(Ljava/util/Collection<+Lorg/openide/text/Line;>;)Z 	removeAll Ljava/util/Collection<*>; (Ljava/util/Collection<*>;)Z 3()Ljava/util/ListIterator<Lorg/openide/text/Line;>; a [Ljava/lang/Object; [TT;  <T:Ljava/lang/Object;>([TT;)[TT; index 4(I)Ljava/util/ListIterator<Lorg/openide/text/Line;>; obj element 	retainAll 	fromIndex toIndex -(II)Ljava/util/List<Lorg/openide/text/Line;>; /()Ljava/util/Iterator<Lorg/openide/text/Line;>; (ILjava/util/Collection;)Z 4(ILjava/util/Collection<+Lorg/openide/text/Line;>;)Z (ILjava/lang/Object;)V '(ILjava/lang/Object;)Ljava/lang/Object; ;Ljava/lang/Object;Ljava/util/List<Lorg/openide/text/Line;>; 
SourceFile LazyLines.java InnerClasses Set 0    #   * +            !        F     
*· *+µ ±           !  " 	 #        
       
            . /     ³     2*´ ´ ¶ <» Y· M>¢ ,*´ ¶ ¹ " W§ÿé,°           (  )  +  , * + 0 /    *         2      '       +                þ  #ú       " H /     O     *´ (Ç **· ,µ (*´ (°           3  4  7                        D E     ¢     9+Á 0 3*´ +À 0¶ 2M,Æ #*´ ´ ,¶ 6¶ ;>*´ ¶ +¶ ? ¬¬           ;  <  >  ? & A 5 C 7 H    *  &      $      9       9        7           E     :     *+¶ B¬           L                           K      4     
*· F¹ I ¬           S        
      ¡ n     N     » LY· N¿           W                ¢ £          ¢ ¤      ¢       ¥  ¦ n     N     » LY· N¿           [                ¢ £          ¢ §      ¢       ¨  Q R     4     
*· F¹ O °           _        
         ©  U V     4     
*· F¹ S °           c        
      U Y     Q     *· F+¹ W °           g                ª «          ª ¬      ª       ­  Q \     ?     *· F¹ Z °           k                ®       ®       ¯  y '     <     » LY· N¿           o                           A '     ?     *· F+¹ ] ¬           s                °       °    ` '     ?     *· F+¹ ^ ¬           w                           &      F     » LY· N¿           {                 ®      ±      	 ®   ±    c      8     
*· F¹ a ±       
     	         
            F     » LY· N¿                            ®      ±      	 ®   ±    f      4     
*· F¹ d ¬                   
      i !     B     *· F¹ g À 7°                           ®       ®    m n     Q     *· F+¹ k ¬                           ¢ £          ¢ §      ¢       ¨  &      <     » LY· N¿                                      q r     4     
*· F¹ o ¬                   
      ² n     N     » LY· N¿                           ¢ £          ¢ §      ¢       ¨  u v     J     *· F¹ s °                            ³      ´      	 ³   ´       µ  y !     B     *· F¹ w À 7°           £                ®       ®    | }     4     
*· F¹ z °           §        
         ¶  ¡ ·     X     » LY· N¿           «                 ®      ¢ £          ¢ ¤     	 ®   ¢       ¸A y j     0     *¶ ~°                            ® A & ¹     4     
*,À 7¶ ±                   
        	 ®  ± A  º     4     
*,À 7¶ °                   
        	 ®  ± A i j     0     *¶ °                            ® A & '     3     	*+À 7¶ ¬                   	                » ¼    ½ ¾   
   0 ¿	