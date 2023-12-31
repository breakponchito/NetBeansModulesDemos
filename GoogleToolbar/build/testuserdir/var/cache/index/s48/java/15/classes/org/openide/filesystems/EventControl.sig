Êþº¾   4 ³
      java/lang/Object <init> ()V
  	 
   $org/openide/filesystems/EventControl postponeFiring 7(Lorg/openide/filesystems/FileSystem$EventDispatcher;)Z
      2org/openide/filesystems/FileSystem$EventDispatcher run
     enterAtomicAction (Ljava/lang/Object;Z)V
     exitAtomicAction (Z)V    /org/openide/filesystems/FileSystem$AtomicAction  5org/openide/filesystems/EventControl$AtomicActionLink
     ! (Ljava/lang/Object;)V	  # $ % currentAtomAction 7Lorg/openide/filesystems/EventControl$AtomicActionLink;
  ' ( ) setPreviousLink :(Lorg/openide/filesystems/EventControl$AtomicActionLink;)V	  + , - priorityRequests I	  / 0 - requests 2 java/util/LinkedList
 1 
  5 6 7 setRequestsQueue (Ljava/util/LinkedList;)V
  9 : ; getPreviousLink 9()Lorg/openide/filesystems/EventControl$AtomicActionLink;
  = > ? getRequestsQueue ()Ljava/util/LinkedList;
  A B C invokeDispatchers /(ZLjava/util/LinkedList;)Ljava/util/LinkedList;
 1 E F G isEmpty ()Z
 1 I J K removeFirst ()Ljava/lang/Object;
 1 M N O add (Ljava/lang/Object;)Z Q java/util/LinkedHashSet
 P 
  T U V dispatch (ZLjava/util/Collection;)V X Y Z [ \ java/util/Set iterator ()Ljava/util/Iterator; ^ _ ` a G java/util/Iterator hasNext ^ c d K next f java/lang/Runnable e 
  i j ) setAtomicActionLink	  l m n $assertionsDisabled Z
 p q r s O java/lang/Thread 	holdsLock u java/lang/AssertionError
 t 	  x y z requestsQueue Ljava/util/LinkedList;
 | } ~  G java/lang/Class desiredAssertionStatus 	Signature LLjava/util/LinkedList<Lorg/openide/filesystems/FileSystem$EventDispatcher;>; Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/EventControl; dispatchEvent 7(Lorg/openide/filesystems/FileSystem$EventDispatcher;)V 
dispatcher 4Lorg/openide/filesystems/FileSystem$EventDispatcher; StackMapTable MethodParameters beginAtomicAction 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)V 1Lorg/openide/filesystems/FileSystem$AtomicAction; finishAtomicAction runAtomicAction  java/lang/Throwable 
Exceptions  java/io/IOException propID Ljava/lang/Object; priority 
nextPropID reqQueueCopy r newReqQueue fireAll firePriority LocalVariableTypeTable Ljava/lang/Runnable; newEnum 
postNotify Ljava/util/Set; %Ljava/util/Set<Ljava/lang/Runnable;>; (ZLjava/util/LinkedList<Lorg/openide/filesystems/FileSystem$EventDispatcher;>;)Ljava/util/LinkedList<Lorg/openide/filesystems/FileSystem$EventDispatcher;>; disp N()Ljava/util/LinkedList<Lorg/openide/filesystems/FileSystem$EventDispatcher;>; O(Ljava/util/LinkedList<Lorg/openide/filesystems/FileSystem$EventDispatcher;>;)V <clinit> 
SourceFile EventControl.java InnerClasses ¯ "org/openide/filesystems/FileSystem EventDispatcher AtomicAction AtomicActionLink         0 -    , -    $ %    y z       m n            /     *· ±                                W     *+·  ±+¶ ±           7  8 	 ;  <                       	                ?     *+· ±       
    L  M                                  4     *· ±       
    [  \                     ~     *+· +¹  *· § M*· ,¿±                e  f  h  i  h  i  j                       T              "       ±     >» Y+· N-*´ "¶ &*-µ " *Y´ *`µ **Y´ .Z`µ . *» 1Y· 3· 4±       "    o 	 p  q  s  t $ w 2 x = z    *    >       >      >  n  	 5  %     	 ü $     	               	   â=>*Y:Â**´ "¶ 8µ "*Y´ .dµ . *Y´ *dµ **´ . =  *´ * >  *· <:*· 4*µ *§ Ã±  *» 1Y· 3· 4Ã§ :Ã¿ *· @W± M*· @:*Y:Â*· <Æ $*· <¶ D *· <¶ HÀ :¶ LW§ÿÛ*· 4Ã§ :Ã¿±  	 d ~   e { ~   ~  ~   ¥ Ö Ù   Ù Þ Ù                 	      "  ,  3  5  D  F  N  T  Y  a  e  m  x   ¢  £  ¥  ¨  ª   ¬ ¥ ­ ¶ ® Â ¯ Ê ° Í ² Ó ³ á µ    \ 	 T   z  e   z  Â       A  z    â       â  n   à  n   Þ  n   \  z      *  T     e       A     \       a ÿ ,      ÿ    1   ÿ       ÿ    1  ý  1 'K ù          B C    :     f» 1Y· 3N» PY· R:,Æ ),¶ D ",¶ HÀ :¶ S 
-¶ LW§ÿÙ¹ W :¹ ]  ¹ b À e:¹ g §ÿã-°       2    ¸  ¹  º  » % ¼ - ¾ 1 ¿ 8 Á ; Â Z Ã a Ä d Æ    H  %     Z   ¡    f       f  n    f  z   ^ ¢ z   U £ ¤           f     ^ ¢    U £ ¥      ý  1 X&ü  ^ú     	           ¦ "            1*´ * +*´ "¶ h+¶ S*· <Æ +*´ "¶ h*· <+¶ LW¬¬       "    Ë  Ì  Í  Ð  Ò $ Ó - Õ / Ø        1       1 §            §    > ?     Q     ² k *¸ o » tY· v¿*´ w°       
    Ü  Ý                      ¨  6 7     r     ² k *¸ o » tY· v¿*+µ w±           á  â  ã                y z           y            y       ©  ª      4      ¶ { § ³ k±                @  «    ¬ ­      ® °  ® ±	   ² 