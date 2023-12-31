Êþº¾   4 ©
      java/io/InputStream <init> ()V	  	 
   5org/openide/filesystems/MIMESupport$CachedInputStream buffer [B	     len I	     pos	     eof Z	     inputStream Ljava/io/InputStream;	     
fileObject $Lorg/openide/filesystems/FileObject;
  ! "  close $ java/io/IOException
  & '  internalClose	  ) * + cantRead Ljava/io/IOException;
  - . / computeNewLength (II)I
 1 2 3 4 5 java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V
  7 8 9 read ([BII)I ; java/io/InterruptedIOException
 = > ? @ A #org/openide/filesystems/MIMESupport 
access$100 ()Ljava/util/logging/Logger;	 C D E F G java/util/logging/Level INFO Ljava/util/logging/Level; I 'Ignoring Interrupted I/O exception #{0}
 K L M N O java/lang/Integer valueOf (I)Ljava/lang/Integer;
 Q R S T U java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 W X Y Z / java/lang/Math min
 W \ ] / max	 C _ ` G FINE
 Q b c d 
isLoggable (Ljava/util/logging/Level;)Z f @CachedInputStream buffer length for {0} will be increased to {1} h java/lang/Object
 Q j T k A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
  m n o ensureBufferLength (I)Z q java/lang/StringBuilder
 p 
 g t u v toString ()Ljava/lang/String;
 p x y z append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 p | y } (C)Ljava/lang/StringBuilder;
 p t  java/lang/String
     ([B)V <(Ljava/io/InputStream;Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/filesystems/MIMESupport$CachedInputStream; is fo MethodParameters 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; StackMapTable finalize readLen ex  Ljava/io/InterruptedIOException; newLen 	tmpBuffer requiredLen retries  currLen recommendedIncrease b off blen readPos retval ()I cacheToStart retVal Ljava/lang/String; 
SourceFile MIMESupport.java InnerClasses CachedInputStream                                       * +   
         }     #*· *µ *µ *µ *µ *+µ *,µ ±       "    { 	| } ~   "         #       #      #       	        "      +      ±                            #           '      W     *´ ¶  § L±     
 #          
                  J #         3     *¶ %±       
                          n o    Ò     °=*´  *´ ¤ *´ (Æ *´ (¿**´ · ,>¼:*´  *´ *´ ¸ 0*´ *´ *´ d¶ 66 *µ *Y´ `µ § *µ § -:¸ <² BH¸ J¶ P¤ ¿§ÿ®:*µ (¿*´ ¡ § ¬  B u x : B u  #     ^        ' ,  3¡ B¥ W¦ \§ b¨ pª u¬ x­ z® ¯ ° ² ³ ´ µ ¢¹    R  W !    z      	  +  ' {    , v      °       °     ®       D 
ü ý $ ü -ÿ      :ü  :ÿ      #ù 
@      #         . /     Å     J@  ¸ V¸ [>`¸ [6@¤ -¸ <² ^¶ a !¸ <² ^e½ gY*´ SY¸ JS¶ i¬       "   Ê Ë Ì Í )Î @Ð DÎ GÓ    4    J       J      J     =     4        ý G    	        8 9     Ù     S**´ `· lW*´ *´ `¸ V6*´ ¤ *´ d§ 6 *´ *´ +¸ 0*Y´ `µ ¬          Ø Ù Ú 0Û 6Ü EÝ Pß    >    S       S      S      S     9    0 #         ü -@ü !      #                       8 ¡          9<**´ `· lW*´ *´ ¤ "*´ *Y´ Z`µ 3<  `§ <¬          ä å æ ç )è 7ê        9      7        	 ü 5@       #   ¢      =     *µ *µ ±          î ï 
ð              u v          J» pY· r*· s¶ w[¶ {*´ ¶ s¶ w]¶ {
¶ {¶ ~L» pY· r+¶ w» Y*´ · ¶ w¶ ~L+°          õ +ö Hø        J     +  £ ¤           ¥    ¦ §   
   = ¨ 
