Êþº¾   4 ­	      .org/openide/filesystems/MultiFileObject$MfLock this$0 )Lorg/openide/filesystems/MultiFileObject;
  	 
    org/openide/filesystems/FileLock <init> ()V  java/util/HashMap
     (I)V	     map Ljava/util/Map;      java/util/Enumeration hasMoreElements ()Z     nextElement ()Ljava/lang/Object; ! "org/openide/filesystems/FileObject
   # $ % getFileSystem &()Lorg/openide/filesystems/FileSystem; ' ( ) * + java/util/Set contains (Ljava/lang/Object;)Z
   - . / lock $()Lorg/openide/filesystems/FileLock; 1 2 3 4 5 java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 1 7 8 9 get &(Ljava/lang/Object;)Ljava/lang/Object; 1 ; < 9 remove
  > ?  releaseLock
  A B C addLock '(Lorg/openide/filesystems/FileObject;)V
  E F  isValid
  H I  releaseLockForDelegates
  K L / getCurrentMfLock
 N O P Q R 'org/openide/filesystems/MultiFileObject 
access$602 ](Lorg/openide/filesystems/MultiFileObject;Ljava/lang/ref/Reference;)Ljava/lang/ref/Reference;
 N T U V 
access$600 D(Lorg/openide/filesystems/MultiFileObject;)Ljava/lang/ref/Reference;
 X Y Z 8  java/lang/ref/Reference 1 \ ] ^ values ()Ljava/util/Collection; ` a b c d java/util/Collection iterator ()Ljava/util/Iterator; f g h i  java/util/Iterator hasNext f k l  next 1 n o  clear q java/lang/StringBuilder
 p 	
 t u v w x java/lang/Object toString ()Ljava/lang/String;
 p z { | append -(Ljava/lang/String;)Ljava/lang/StringBuilder; ~  for 
 p  {  -(Ljava/lang/Object;)Ljava/lang/StringBuilder;   valid=
 p  {  (Z)Ljava/lang/StringBuilder;
 p u 	Signature WLjava/util/Map<Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileLock;>; v(Lorg/openide/filesystems/MultiFileObject;Lorg/openide/filesystems/FileObject;Ljava/util/Enumeration;Ljava/util/Set;)V Code LineNumberTable LocalVariableTable l "Lorg/openide/filesystems/FileLock; fo $Lorg/openide/filesystems/FileObject; this 0Lorg/openide/filesystems/MultiFileObject$MfLock; leader 	delegates Ljava/util/Enumeration; systems Ljava/util/Set; LocalVariableTypeTable =Ljava/util/Enumeration<Lorg/openide/filesystems/FileObject;>; 6Ljava/util/Set<+Lorg/openide/filesystems/FileSystem;>; StackMapTable 
Exceptions  java/io/IOException MethodParameters (Lorg/openide/filesystems/FileObject;Ljava/util/Enumeration<Lorg/openide/filesystems/FileObject;>;Ljava/util/Set<+Lorg/openide/filesystems/FileSystem;>;)V findLock H(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileLock; changeLocks K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V old n currentLock 
SourceFile MultiFileObject.java InnerClasses MfLock                            
     R*+µ *· *» Y· µ -¹   5-¹  À  :¶ "¹ &  ¶ ,:*´ ¹ 0 W§ÿÈ±       & 	   	   * 9 @ N Q«    >  @     * $      R       R      R      R           R      R        ÿ    N    '  7                          ¡  ¢ £     B     *´ +¹ 6 À °          ²                            B C     H     *´ ++¶ ,¹ 0 W±       
   º »                                  ¤ ¥          *´ +¹ : À N-Æ -¶ =*,¶ @±          Â Ä Å È É    *            ¦      §            ü             	 ¦   §    ?      h     !*¶ D *· =*· G*· J*¦ *´ ¸ MW±          Ì Í Î Ð Ò  Õ        !            L /     j     L*´ ¸ SÆ *´ ¸ S¶ WÀ L+°          Ø Û Ü ß               ¨       ü    I           3*´ ¹ [ ¹ _ L+¹ e  +¹ j À M,¶ =§ÿé*´ ¹ m ±          ã "ä &å )ç 2è      "       3         ü  fú   w x     T     *» pY· r*· s¶ y}¶ y*´ ¶ ¶ y*¶ D¶ ¶ °          ì        *      ©    ª «   
   N ¬ 