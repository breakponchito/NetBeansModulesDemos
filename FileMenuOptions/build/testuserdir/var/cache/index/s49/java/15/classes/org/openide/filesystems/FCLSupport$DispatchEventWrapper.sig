Êþº¾   4 Ë
      java/lang/Object <init> ()V	  	 
   7org/openide/filesystems/FCLSupport$DispatchEventWrapper fe #Lorg/openide/filesystems/FileEvent;	     	operation 'Lorg/openide/filesystems/FCLSupport$Op;
      "org/openide/filesystems/FCLSupport 
access$000 ()Ljava/util/Queue;      java/util/Queue offer (Ljava/lang/Object;)Z
      
access$100 *()Lorg/openide/util/RequestProcessor$Task;
 " # $ % & &org/openide/util/RequestProcessor$Task schedule (I)V
  ( ) * dispatchAllEventsSync (Ljava/util/Collection;)V	  , - . $assertionsDisabled Z 0 java/lang/AssertionError
 / 
 3 4 5 6 7 java/lang/Thread currentThread ()Ljava/lang/Thread;
 3 9 : ; getName ()Ljava/lang/String; =  :: 
 ? @ A B C java/lang/String contains (Ljava/lang/CharSequence;)Z E java/lang/StringBuilder
 D 
 D H I J append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 D L I M -(Ljava/lang/Object;)Ljava/lang/StringBuilder; O  
 Q R S T U !org/openide/filesystems/FileEvent getFile &()Lorg/openide/filesystems/FileObject;
 W X Y Z ; "org/openide/filesystems/FileObject getPath
 D \ ] ; toString
 3 _ ` a setName (Ljava/lang/String;)V c java/lang/SecurityException
 Q e f * setPostNotify	 h i j k l $org/openide/filesystems/FCLSupport$2 0$SwitchMap$org$openide$filesystems$FCLSupport$Op [I
 n o p q r %org/openide/filesystems/FCLSupport$Op ordinal ()I t u v w x *org/openide/filesystems/FileChangeListener fileDataCreated &(Lorg/openide/filesystems/FileEvent;)V t z { x fileFolderCreated t } ~ x fileChanged t   x fileDeleted  'org/openide/filesystems/FileRenameEvent t    fileRenamed ,(Lorg/openide/filesystems/FileRenameEvent;)V  *org/openide/filesystems/FileAttributeEvent t    fileAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V
 /    (Ljava/lang/Object;)V  java/lang/RuntimeException
      org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
      java/lang/Class desiredAssertionStatus ()Z M(Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;)V Code LineNumberTable LocalVariableTable this 9Lorg/openide/filesystems/FCLSupport$DispatchEventWrapper; MethodParameters dispatchEvent (ZLjava/util/Collection;)V async 
postNotify Ljava/util/Collection; LocalVariableTypeTable ,Ljava/util/Collection<Ljava/lang/Runnable;>; StackMapTable 	Signature 0(ZLjava/util/Collection<Ljava/lang/Runnable;>;)V /(Ljava/util/Collection<Ljava/lang/Runnable;>;)V dispatchEventImpl (Lorg/openide/filesystems/FileChangeListener;Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Collection;)V 
threadName Ljava/lang/String; x Ljava/lang/RuntimeException; fcl ,Lorg/openide/filesystems/FileChangeListener; asserts origThreadName thread Ljava/lang/Thread; ¾ java/util/Collection À java/lang/Throwable ¥(Lorg/openide/filesystems/FileChangeListener;Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Collection<Ljava/lang/Runnable;>;)V <clinit> 
SourceFile FCLSupport.java InnerClasses DispatchEventWrapper Op É !org/openide/util/RequestProcessor Task                 - .             Y     *· *+µ *,µ ±    ¡       g  h 	 i  j ¢         £ ¤               ¥   	       ¦ §             ¸ *¹  W¸ ,¶ !§ *,¶ '±    ¡       l  m  n  p  r ¢          £ ¤       ¨ .      © ª  «         © ¬  ­     ¥   	 ¨   ©   ®    ¯ ) *  ¥    ©   ®    °  ± ²     i    j6² + Y6 » /Y· 1¿:: S¸ 2:¶ 8:Æ B<¶ > 8:» DY· F¶ G<¶ G-¶ KN¶ G,¶ P¶ V¶ G¶ [¶ ^§ :	Æ 	,¶ d² g-¶ m.ª    h         &   0   :   D   N   [+,¹ s § D+,¹ y § :+,¹ | § 0+,¹  § &+,À ¹  § +,À ¹  § » /Y-· ¿Æ ,¶ dÆ fÆ a¶ ^§ W:§ R:¸ Æ ,¶ dÆ <Æ 7¶ ^§ -:§ (:
Æ ,¶ dÆ Æ ¶ ^§ :
¿±  > n q b b s ÷ 5<? b s ÷D  !D  Zad bDFD    ¡   Ò 4   ~         #  (  /  >  B  n  q  s  x  ~  ¬  ³  ¶  ½  À  Ç  Ê  Ñ  Ô  Þ   á ¢ ë £ î ¥ ÷ ª ü « ­ ¯ ± ° ± § ¨! ª& «+ ­5 ¯< ±? °A ±D ªK «P ­Z ¯a ±d °f ³i ´ ¢   f 
 / D ³ ´   µ ¶   j £ ¤    j · ¸   j     j     j © ª  g ¹ .  O º ´  L » ¼  «      j © ¬  ­   W ü ÿ X 	  t Q n ½ ? 3 ?  bú 
-					S bD S bD ¿þ    ¿S bø  ¥    ·         ©   ®    Á  Â       4      ¶  § ³ +±    ¡       c ­    @  Ã    Ä Å   "    Æ
 n  Ç@ " È Ê  h    