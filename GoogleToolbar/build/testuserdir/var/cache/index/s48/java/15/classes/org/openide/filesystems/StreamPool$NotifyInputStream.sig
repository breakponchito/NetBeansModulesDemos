Êþº¾   4 _
      4org/openide/filesystems/StreamPool$NotifyInputStream setOriginal (Ljava/io/InputStream;)V	   	 
 emptyIs Ljava/io/InputStream;
      java/io/FilterInputStream <init>	     closed Z	     fo (Lorg/openide/filesystems/AbstractFolder;
      "org/openide/filesystems/StreamPool 
access$300 ()Z  java/lang/Exception
  !  " ()V	  $ % & ex Ljava/lang/Exception;	  ( ) 
 in
  + , " close
  . / 0 
access$500 @(Lorg/openide/filesystems/AbstractFolder;Ljava/io/InputStream;)V
  2 3 4 
access$100 J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/StreamPool;
  6 7  isInputStreamOpen
 9 : ; < " java/lang/Object 	notifyAll > java/io/ByteArrayInputStream
 = @  A ([B)V +(Lorg/openide/filesystems/AbstractFolder;)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/filesystems/StreamPool$NotifyInputStream; StackMapTable J &org/openide/filesystems/AbstractFolder MethodParameters is N java/lang/Throwable 
Exceptions Q java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getException ()Ljava/lang/Exception; 
access$000 N(Lorg/openide/filesystems/StreamPool$NotifyInputStream;Ljava/io/InputStream;)V x0 x1 <clinit> 
SourceFile StreamPool.java InnerClasses NotifyInputStream 0       	 
    % &                 B  C        #*² · *µ *+µ ¸  *» Y·  µ #±    D           " E       # F G     #    H    ÿ "   I   K           C   >     *+µ '±    D   
     E        F G      L 
  K    L    , "  C   ²     ?*´  :*µ *µ #*· **´ *¸ -YLÂ*´ ¸ 1¶ 5 ¶ 8+Ã§ M+Ã,¿±  " 6 9   9 < 9    D   * 
        " / 4 >¡ E       ? F G   H    ü 4 9D Mú  O     P R     S    T U  C   /     *´ #°    D      ¤ E        F G   V W  C   :     *+· ±    D       E        X G      Y 
   Z "  C   &      » =Y¼· ?³ ±    D        [    \ ]   
    ^ 