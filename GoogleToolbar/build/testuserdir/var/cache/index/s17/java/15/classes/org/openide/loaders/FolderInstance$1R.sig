Êþº¾   4 ©	      %org/openide/loaders/FolderInstance$1R this$0 $Lorg/openide/loaders/FolderInstance;	   	 
 val$arr Ljava/util/Collection;
      org/openide/util/Task <init> ()V
      "org/openide/loaders/FolderInstance 
access$000 n(Lorg/openide/loaders/FolderInstance;Ljava/util/Collection;)[Lorg/openide/loaders/FolderInstance$HoldInstance;	     all 2[Lorg/openide/loaders/FolderInstance$HoldInstance;  java/lang/Object	      	instances [Ljava/lang/Object;
 " # $ % & /org/openide/loaders/FolderInstance$HoldInstance instanceCreate ()Ljava/lang/Object; ( java/io/IOException
  * + , err ()Ljava/util/logging/Logger;	 . / 0 1 2 java/util/logging/Level INFO Ljava/util/logging/Level; 4 java/lang/StringBuilder
 3  7 Cannot create 
 3 9 : ; append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 3 = : > -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 3 @ A B toString ()Ljava/lang/String;
 D E F G H java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V J  java/lang/ClassNotFoundException	 " L M N cookie $Lorg/openide/cookies/InstanceCookie;
 " P  Q k(Lorg/openide/loaders/FolderInstance;Lorg/openide/loaders/DataObject;Lorg/openide/cookies/InstanceCookie;)V	  S T U sequence I
  W X Y 
access$100 '(Lorg/openide/loaders/FolderInstance;)I	  [ \ ] instancesTask (Lorg/openide/util/RequestProcessor$Task;	  _ ` a 	PROCESSOR #Lorg/openide/util/RequestProcessor;
 c d e f g !org/openide/util/RequestProcessor isRequestProcessorThread ()Z
  i j  init
  l  
  n o p postCreationTask -(Ljava/lang/Runnable;)Lorg/openide/util/Task;	  r o s Lorg/openide/util/Task;
  u v w defaultProcessObjectsFinal 5([Lorg/openide/loaders/FolderInstance$HoldInstance;)V
 y z { |  &org/openide/util/RequestProcessor$Task waitFinished
  z
      java/lang/System currentTimeMillis ()J
 y  |  (J)Z
   =(Lorg/openide/loaders/FolderInstance;Ljava/util/Collection;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/loaders/FolderInstance$1R; MethodParameters 	Signature ex Ljava/io/IOException; "Ljava/lang/ClassNotFoundException; indx StackMapTable run #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; wait J milliseconds waitBy 
Exceptions  java/lang/InterruptedException 
SourceFile FolderInstance.java EnclosingMethod £ ¤ processObjects (Ljava/util/Collection;)V InnerClasses R HoldInstance Task                       T U     o s     \ ]   	 
                C     *+µ *,µ *· ±                                	  	       j      >     **´ *´ ¸ µ ±       
                       N     ¨**´ ¾½ µ <*´ ¾¢ *´ *´ 2¶ !S*´ 2Æ § r§ TM*´ ¶ )² -» 3Y· 56¶ 8*´ 2¶ <¶ ?,¶ C§ *M*´ ¶ )² -» 3Y· 56¶ 8*´ 2¶ <¶ ?,¶ C*´ » "Y*´ *´ 2´ K· OS§ÿj±   / 5 '  / _ I     :     ¡ £ &¤ /¥ 2« 5§ 6¨ \« _© `ª ¬ ¡¡ §®    *  6 &    ` &       U    ¨         ü #B 'i I&ú         ¬     K*´ R*´ ¸ V ±*´ ZÆ !² ^¶ b *¶ h*¶ k**´ *¶ mµ q±*´ Ç *¶ h*´ *´ ¶ t±       2   ² ³ µ ¶ · #¸ '¹ 3º 4¾ ;¿ ?Á JÂ        K         $
          |      a     *´ ZÆ 
*´ Z¶ x*´ qÆ 
*´ q¶ }±          Æ Ç É Ê Ì                           |      ½     >¸ ~eB*´ ZÆ *´ Z¶  ¬*´ qÆ !¸ ~e7
 
7*´ q¶ ¬¬       * 
  Ð Ñ Ò Ó Ö !× (Ø /Ù 2Û <Ý    *  (       >       >     8        ü ü ú 	                             ¡     ¢ ¥        ¦   "  §  y c ¨ 