Êþº¾   4 ¼	      )org/openide/loaders/MultiDataObject$Entry file $Lorg/openide/filesystems/FileObject;	   	 
 this$0 %Lorg/openide/loaders/MultiDataObject;
      java/lang/Object <init> ()V  java/lang/NullPointerException
  
     isImportant ()Z
      "org/openide/filesystems/FileObject setImportant (Z)V  java/lang/StringBuilder
   " NPE for 
  $ % & append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ( % ) -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  + , - toString ()Ljava/lang/String;
  /  0 (Ljava/lang/String;)V
  2 3 4 equals (Ljava/lang/Object;)Z	 6 7 8 9 : #org/openide/loaders/MultiDataObject ERR Ljava/util/logging/Logger;	 < = > ? @ java/util/logging/Level FINE Ljava/util/logging/Level;
 B C D E F java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z H changeFile:  J  for  L  of 
  N O P getDataObject '()Lorg/openide/loaders/MultiDataObject;
 B R S 0 fine	  U V W lock Ljava/lang/ref/WeakReference;
 Y Z [ \ ] java/lang/ref/WeakReference get ()Ljava/lang/Object; _  org/openide/filesystems/FileLock
 ^ a b  isValid d releasing old lock:  f  was: 
 ^ h i  releaseLock k java/io/IOException m Unsupported operation
 j /
  p q r getFile &()Lorg/openide/filesystems/FileObject;
  t V u $()Lorg/openide/filesystems/FileLock;
 Y w  x (Ljava/lang/Object;)V z 
takeLock:  |  is: 
  ~   hashCode ()I  0org/openide/loaders/MultiDataObject$EntryReplace
     '(Lorg/openide/filesystems/FileObject;)V  java/io/Serializable serialVersionUID J ConstantValueS_õUTâC 	Signature ALjava/lang/ref/WeakReference<Lorg/openide/filesystems/FileLock;>; L(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/loaders/MultiDataObject$Entry; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation 
changeFile newFile l "Lorg/openide/filesystems/FileLock; copy \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; 
Exceptions f suffix rename 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; name move delete createFromTemplate 
copyRename n(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; Ljava/lang/String; ext takeLock isLocked o Ljava/lang/Object; Ljava/lang/Override; writeReplace 
access$000 Q(Lorg/openide/loaders/MultiDataObject$Entry;)Lorg/openide/filesystems/FileObject; x0 
SourceFile MultiDataObject.java InnerClasses Entry EntryReplace!                     V W       	 
                '*+µ *· ,Ç » Y· ¿*,µ *¶  ,¶ ±          ê 	ë ì î ï !ð &ò         '       ' 	 
    '        ÿ    6       	 	           [ s        [     Î+Ç !» Y» Y·  !¶ #*´ ¶ '¶ *· .¿+*´ ¶ 1 ±² 5² ;¶ A 1² 5» Y·  G¶ #+¶ 'I¶ #*¶ 'K¶ #*¶ M¶ '¶ *¶ Q+*¶ ¶ *+µ *´ TÇ § *´ T¶ XÀ ^M,Æ <,¶ ` 5² 5² ;¶ A %² 5» Y·  c¶ #*¶ 'e¶ #,¶ '¶ *¶ Q,¶ g*µ T±       >   ù ú "ü -ý .ÿ :  h p u   ¢	 Ä È Í         Î       Î     C        "9I ^ü 9 ^               [ s   q r     /     *´ °                        O P     /     *´ °                              ,     ¬          $                 ¡     j    	 ¢   £   ¤ ¥  ¡     j     ¦   §    ¡     j    	 ¢   £   ¨   ¡     j ©    ¡     j    	 ¢   ¦    ª «     R     
» jYl· n¿          ]    *    
       
 ¢     
 ¦ ¬    
 ­ ¬  ¡     j     ¢   ¦   ­    ® u     Æ     e*´ TÇ § *´ T¶ XÀ ^L+Æ 
+¶ ` *¶ o¶ sL*» YY+· vµ T² 5² ;¶ A %² 5» Y·  y¶ #*¶ '{¶ #+¶ '¶ *¶ Q+°          e f !g )h 5j Ak cm        e      O        I ^ü  ^- ¡     j  ¯      t     '*´ TÇ § *´ T¶ XÀ ^L+Æ +¶ ` § ¬       
   t u        '              I ^ü  ^@  3 4     Y     +Á  ¬*¶ o+À ¶ o¶ 1¬       
   z 	{                ° ±      	     °        ²          2     *¶ o¶ }¬                            ²    ³ ]     6     » Y*¶ o· °                       ´ µ     /     *´ °          Û         ¶     ·    ¸ ¹      6 º  6 » 