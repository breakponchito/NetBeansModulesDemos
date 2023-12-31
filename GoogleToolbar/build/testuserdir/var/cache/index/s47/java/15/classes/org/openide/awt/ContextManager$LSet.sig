Êþº¾   4 ¬
      #org/openide/awt/ContextManager$LSet cleanup ()V
  	 
   org/openide/util/WeakSet <init>	     result  Lorg/openide/util/Lookup$Result;
      org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
     allItems ()Ljava/util/Collection;	     $assertionsDisabled Z  java/lang/AssertionError
  	
  " # $ add (Ljava/lang/Object;)Z	 & ' ( ) * org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
 & , - . 
readAccess (Ljava/lang/Runnable;)V
 0 1 2 3 4 org/openide/awt/ContextManager 
access$500 ()Ljava/util/Map; 6 org/openide/awt/ContextAction
  8 9 : toArray (([Ljava/lang/Object;)[Ljava/lang/Object; <  [Lorg/openide/awt/ContextAction;
 > ? @ A B java/lang/System currentTimeMillis ()J
 5 D E  updateState      Ð
 0 I J K 
access$600 ()Ljava/util/logging/Logger;	 M N O P Q java/util/logging/Level WARNING Ljava/util/logging/Level; S CUpdating state of {1} actions took {0} ms. here is the action list: U java/lang/Object
 W X Y Z [ java/lang/Long valueOf (J)Ljava/lang/Long;
 ] ^ _ Z ` java/lang/Integer (I)Ljava/lang/Integer;
 b c d e f java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V	 M h i Q INFO k   {0}
 b m e n @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  p q  removeLookupListener
  s # t "(Lorg/openide/awt/ContextAction;)Z
 v w x y z java/lang/Class desiredAssertionStatus ()Z | org/openide/util/LookupListener ~ java/lang/Runnable 	Signature %Lorg/openide/util/Lookup$Result<TT;>; 4(Lorg/openide/util/Lookup$Result;Ljava/lang/Class;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/awt/ContextManager$LSet; context type Ljava/lang/Class; LocalVariableTypeTable *Lorg/openide/awt/ContextManager$LSet<TT;>; Ljava/lang/Class<TT;>; MethodParameters >(Lorg/openide/util/Lookup$Result<TT;>;Ljava/lang/Class<TT;>;)V e Lorg/openide/awt/ContextAction; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; run arr a now J took  java/lang/Throwable 
access$100 ((Lorg/openide/awt/ContextManager$LSet;)V x0 <clinit> <T:Ljava/lang/Object;>Lorg/openide/util/WeakSet<Lorg/openide/awt/ContextAction;>;Lorg/openide/util/LookupListener;Ljava/lang/Runnable; 
SourceFile ContextManager.java InnerClasses LSet ª org/openide/util/Lookup Result 0    { }                            *· *+µ *´ *¶ *´ ¶ W±          ¦ § 	¨ ª «                                                      	             # t     k     ²  +Ç » Y·  ¿*+· !¬       
   ¯ °                                                          R     ² %*¶ +±       
   µ ¶                                                    ß  
   Ò¸ /YMÂ*½ 5¶ 7À ;L,Ã§ N,Ã-¿	A²  ¸ =\A	 » Y·  ¿+:¾66¢ 2:Æ ¶ C§ÿå	7²  ¸ = e\7	 » Y·  ¿ F N¸ H² LR½ TY¸ VSY+¾¸ \S¶ a+:¾66¢ 2:	¸ H² gj	¶ l§ÿâ±                F   » ¼ ½ ¾ ¿ 6À OÁ TÂ YÀ _Å bÆ }Ç È ¥É ¾Ê ËÉ ÑÍ    H     <  O 
    ¾    	   Ò      ¶  <   ´    b p           Ò        ? 	ÿ     T  ÿ    ;  ü þ 
 ;ø ü þ 2 ;ø                  I     	*´ *¶ o±       
   Ð Ñ        	            	    A # $     E     	*+À 5¶ r¬          ¢        	            	                     ¡     /     *· ±          ¢         ¢     £      4      0¶ u § ³ ±          ¢     @      ¤ ¥    ¦ §      0 ¨   © «	