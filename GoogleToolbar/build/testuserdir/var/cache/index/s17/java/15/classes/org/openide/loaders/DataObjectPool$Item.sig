Êþº¾   4 ±
      'org/openide/loaders/DataObjectPool$Item <init> P(Lorg/openide/loaders/DataObjectPool$Item;Lorg/openide/filesystems/FileObject;)V
  	 
   java/lang/Object ()V	     $assertionsDisabled Z
      "org/openide/loaders/DataObjectPool getPOOL &()Lorg/openide/loaders/DataObjectPool;
      java/lang/Thread 	holdsLock (Ljava/lang/Object;)Z  java/lang/AssertionError
  		    ! " primaryFile $Lorg/openide/filesystems/FileObject;	  $ % & REFERENCE_NOT_SET Ljava/lang/ref/Reference;	  ( ) & obj + 0org/openide/loaders/DataObjectPool$ItemReference
 * -  . L(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataObjectPool$Item;)V
 0 1 2 3 4 org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 6 7 8 9 : "org/openide/filesystems/FileObject isValid ()Z
  < = > countRegistration '(Lorg/openide/filesystems/FileObject;)V
  @ A B 
deregister (Z)V
  D E  	notifyAll
  G H  wait J java/lang/InterruptedException
 L M N O P java/lang/ref/Reference get ()Ljava/lang/Object;
  R S T getDataObjectOrNull "()Lorg/openide/loaders/DataObject; V java/lang/IllegalStateException
 U 	
 6 Y Z 4 	getParent
  \ ] ^ 
access$900 (Lorg/openide/loaders/DataObjectPool;Lorg/openide/loaders/DataObjectPool$Item;Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Z)V
  ` a b access$1000 À(Lorg/openide/loaders/DataObjectPool;Lorg/openide/loaders/DataObjectPool$Item;Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObjectPool$Item;
  d e f access$1100 X(Lorg/openide/loaders/DataObjectPool;)Lorg/openide/loaders/DataObjectPool$DoubleHashMap;
 h i j O k 0org/openide/loaders/DataObjectPool$DoubleHashMap &(Ljava/lang/Object;)Ljava/lang/Object; m java/lang/StringBuilder
 l 	 p nothing[
 l r s t append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 l v s w -(Ljava/lang/Object;)Ljava/lang/StringBuilder; y ]
 l { | } toString ()Ljava/lang/String;
 0 {
     : java/lang/Class desiredAssertionStatus  java/lang/ref/WeakReference
     (Ljava/lang/Object;)V 	Signature ;Ljava/lang/ref/Reference<Lorg/openide/loaders/DataObject;>; Code LineNumberTable LocalVariableTable this )Lorg/openide/loaders/DataObjectPool$Item; fo StackMapTable MethodParameters clone newFo setDataObject #(Lorg/openide/loaders/DataObject;)V dobj  Lorg/openide/loaders/DataObject;  java/lang/Throwable getDataObject o refresh changePrimaryFile O(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObjectPool$Item; newFile #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; v(Lorg/openide/loaders/DataObjectPool$Item;Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObjectPool$1;)V x0 x1 x2 &Lorg/openide/loaders/DataObjectPool$1; <clinit> 
SourceFile DataObjectPool.java InnerClasses Item ItemReference DoubleHashMap ° $org/openide/loaders/DataObjectPool$1 0       % &        ) &        ! "          >          (*· ²  ¸ ¸  » Y· ¿*+µ *² #µ '±               '        (       (  "      ÿ    6                      )*· ²  ¸ ¸  » Y· ¿*,µ *+´ 'µ '±               (         )       )      )  "      ÿ     6      	              ¶     A¸ YMÂ*» *Y+*· ,µ '+Æ +¶ /¶ 5 ¸ +¶ /¶ ;*¶ ?¸ ¶ C,Ã§ N,Ã-¿±   8 ;   ; > ;       "   £ ¤ ¥ !§ +¨ 0ª 6« @¬        A       A        ü 0 J ú           S T     ¤     /¸ YLÂ*´ '² #¦ ¸ ¶ F§ÿðM§ÿì*´ '¶ KÀ 0+Ã°N+Ã-¿     I  ) *   * - *       "   ² ³ µ ¸ · ¸ º *»        /         ü  R IL    T     a     *¶ QL+Ç » UY· W¿+°          Ä Å 	Æ È                      ü  0  A B     L     ¸ **´ *´ ¶ X¸ [±       
   Ï Ð                                 A     ¸ *++¶ X¸ _°          Ö                  "           9 :     V     ¸ ¸ c*´ ¶ g*¦ *´ ¶ 5¬¬          Ü Ý ß                   | }     À     ?¸ YLÂ*´ '¶ KÀ 0M,Ç !» lY· no¶ q*´ ¶ ux¶ q¶ z+Ã°,¶ ~+Ã°N+Ã-¿   2 :   3 9 :   : = :          æ ç è é 3ë :ì       )      ?         ý 3  0ÿ       ¡     ¢     £     O     *+,· ±              *            ¤      ¥ "     ¦ §   ¨      C      ¶  § ³ » Y· ³ #±       
         @  ©    ª «   "    ¬  *  ­  h  ®  ¯    