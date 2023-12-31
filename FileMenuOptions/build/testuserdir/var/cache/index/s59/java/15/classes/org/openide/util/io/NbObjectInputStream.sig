Êþº¾   4 Á
      java/io/ObjectInputStream <init> (Ljava/io/InputStream;)V
  	 
   'org/openide/util/io/NbObjectInputStream enableResolveObject (Z)Z  java/lang/SecurityException  java/io/IOException
     toString ()Ljava/lang/String;
     (Ljava/lang/String;)V
     getNBClassLoader ()Ljava/lang/ClassLoader;
       java/io/ObjectStreamClass getName
 " # $ % & java/lang/Class forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; (  java/lang/ClassNotFoundException * java/lang/StringBuilder
 ) ,  - ()V / Offending classloader: 
 ) 1 2 3 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ) 5 2 6 -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 ) 
 9 : ; < = org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 ? @ A B C org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; E java/lang/ClassLoader
 ? G H I lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 D K L  getSystemClassLoader
  N O P readClassDescriptor ()Ljava/io/ObjectStreamClass;
 R S T U V org/openide/util/BaseUtilities 	translate &(Ljava/lang/String;)Ljava/lang/String;
  X H Y .(Ljava/lang/Class;)Ljava/io/ObjectStreamClass; [  java/io/NotSerializableException
 Z  ^ _ ` a b java/io/ObjectInput readInt ()I ^ d e f 	readFully ([BII)V h java/io/ByteArrayInputStream
 g j  k ([B)V
  
  n o p 
readObject ()Ljava/lang/Object;
 g r s - close u java/lang/Exception w !org/openide/util/io/SafeException
 v y  z (Ljava/lang/Exception;)V | java/lang/LinkageError ~ +java/lang/reflect/InvocationTargetException
 }    (Ljava/lang/Throwable;)V ^    skip (J)J Code LineNumberTable LocalVariableTable ex Ljava/lang/SecurityException; this )Lorg/openide/util/io/NbObjectInputStream; is Ljava/io/InputStream; StackMapTable  java/io/InputStream 
Exceptions MethodParameters resolveClass .(Ljava/io/ObjectStreamClass;)Ljava/lang/Class; msg Ljava/lang/String; cnfe "Ljava/lang/ClassNotFoundException; v Ljava/io/ObjectStreamClass; cl Ljava/lang/ClassLoader; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; c ose name newN clazz Ljava/lang/Class; newOse LocalVariableTypeTable Ljava/lang/Class<*>; ª java/lang/String 
readSafely )(Ljava/io/ObjectInput;)Ljava/lang/Object; bis Ljava/io/ByteArrayInputStream; ois obj Ljava/lang/Object; exc Ljava/lang/Exception; le Ljava/lang/LinkageError; oi Ljava/io/ObjectInput; size I 	byteArray [B » 
skipSafely (Ljava/io/ObjectInput;)V 
SourceFile NbObjectInputStream.java !                    *+· *¶ W§ M» Y,¶ · ¿±              3  6  9  7  8  :                             ÿ                           ¶     -¸ M+¶ ,¸ !°N» )Y· +.¶ 0,¶ 4¶ 7:-¸ 8W-¿     '         A  D  E  F $ G + H    4  $ 	           -       -     )        ÿ     D  '       '                
       X     ¸ >D¶ FÀ DK*Æ *§ ¸ J°       
    N  P                 ü  DB D  O P     ü     <*· ML+¶ M,¸ QN,-¦ +°¸ :-¸ !:¸ W:Ç » ZY-· \¿°       .    u  w 
 x  z  |     $  +  0  9     H    <      7 ¡   
 2 ¢    - £    !    $  ¤ ¥  +  ¦   §     $  ¤ ¨      þ   © ©þ " D "        '         	 « ¬         P*¹ ] <¼M*,¹ c » gY,· iN» Y-· l:¶ m:-¶ q°N» vY-· x¿N» vY» }Y-· · x¿   4 5 t  4 ? {     2             '  .   2 ¢ 5 £ 6 ¥ ? ¦ @ §    R    ­ ®  '  ¯   .  ° ±  6 	 ² ³  @  ´ µ    P ¶ ·    I ¸ ¹   E º »      ÿ 5  ^ ¼  tI {           ¶   	 ½ ¾     M     *¹ ] <*¹  X±           ²  ³  ´         ¶ ·    
 ¸ ¹            ¶    ¿    À