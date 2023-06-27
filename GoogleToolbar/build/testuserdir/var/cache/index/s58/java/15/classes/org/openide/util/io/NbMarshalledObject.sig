Źžŗ¾   4 
      java/lang/Object <init> ()V	  	 
   &org/openide/util/io/NbMarshalledObject objBytes [B	     hash I  java/io/ByteArrayOutputStream
    (org/openide/util/io/NbObjectOutputStream
     (Ljava/io/OutputStream;)V
      java/io/ObjectOutputStream writeObject (Ljava/lang/Object;)V
    !  flush
  # $ % toByteArray ()[B ' java/io/ByteArrayInputStream
 & )  * ([B)V , 'org/openide/util/io/NbObjectInputStream
 + .  / (Ljava/io/InputStream;)V
 1 2 3 4 5 java/io/ObjectInputStream 
readObject ()Ljava/lang/Object;
 1 7 8  close : java/lang/RuntimeException < java/lang/StringBuffer
 ; >  ? (I)V A Bad ser data: 
 ; C D E append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;	  G H I HEX [C
 ; K D L (C)Ljava/lang/StringBuffer; N java/io/IOException P java/lang/StringBuilder
 O 
 9 S T U toString ()Ljava/lang/String;
 O W D X -(Ljava/lang/String;)Ljava/lang/StringBuilder; Z : 
 O \ D ] -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 O S
 M `  a (Ljava/lang/String;)V
 M c d e 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;
 g h i j k java/util/Arrays equals ([B[B)Z m java/io/Serializable serialVersionUID J ConstantValuelÕĢ£Ąņ Code LineNumberTable LocalVariableTable i this (Lorg/openide/util/io/NbMarshalledObject; obj Ljava/lang/Object; bout Ljava/io/ByteArrayOutputStream; out Ljava/io/ObjectOutputStream; h StackMapTable 
Exceptions MethodParameters get b buf Ljava/lang/StringBuffer; ioe Ljava/io/IOException; weird Ljava/lang/RuntimeException; bin Ljava/io/ByteArrayInputStream; ois Ljava/io/ObjectInputStream;  java/lang/Throwable   java/lang/ClassNotFoundException hashCode ()I (Ljava/lang/Object;)Z other <clinit> 
SourceFile NbMarshalledObject.java 1    l   n o  p    q  H I                  s  '     b*· *µ +Ē 
*µ ±» Y· M» Y,· N-+¶ -¶ *,¶ "µ 66*“ ¾¢ %h*“ 3`6§’ä*µ ±    t   B    @  0 	 A  B  D  G  H % I * J . K 6 M 9 O F P U O [ S a T u   >  <  v     b w x     b y z   F { |  % = } ~  9 )       ' ’      ’ '       ś       M     y     5  s  Ż     Į*“ Ē °» &Y*“ · (L» +Y+· -M,¶ 0N,¶ 6-°N» ;Y*“ ¾h`· =:@¶ BW6*“ ¾¢ ;*“ 36 	Ä  ² Fl4¶ JW² Fp4¶ JW§’Į» MY» OY· Q-¶ R¶ VY¶ V¶ [¶ ^· _:-¶ bWæ:,¶ 6æ   # ) 9  # ø   ) ŗ ø    t   Z    `  b 	 e  f  i # ~ ' i ) j * l = m E o R p [ r ` s f v u w  o  z ® { µ | ø ~ ¾  u   R  [ )    H B v   = {    ® 
    *       Į w x    ¬     £       : 	’    & 1  9ž  9 ;ü ł #’ -   & 1        M      s   /     *“ ¬    t        u        w x    j   s   }     !+*¦ ¬+Į  +Ą M*“ ,“ ø f¬¬    t                  u         x    ! w x     ! y z           y       s   z      b¼Y0UY1UY2UY3UY4UY5UY6UY7UY8UY	9UY
AUYBUYCUYDUYEUYFU³ F±    t       )      