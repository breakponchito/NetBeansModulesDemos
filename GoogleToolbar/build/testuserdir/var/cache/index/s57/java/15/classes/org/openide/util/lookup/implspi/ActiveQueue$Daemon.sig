Êþº¾   4 	      2org/openide/util/lookup/implspi/ActiveQueue$Daemon running 4Lorg/openide/util/lookup/implspi/ActiveQueue$Daemon;  Active Reference Queue Daemon
 
     java/lang/Thread <init> (Ljava/lang/String;)V	     initialized Z
     ()V
     setPriority (I)V
     	setDaemon (Z)V
      start
 " # $ % & +org/openide/util/lookup/implspi/ActiveQueue 
access$100 ()Ljava/util/logging/Logger; ( starting thread
 * + , -  java/util/logging/Logger fine / java/lang/SecurityException	 1 2 3 4 5 java/util/logging/Level FINE Ljava/util/logging/Level; 7 cannot start thread
 * 9 : ; log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 " = > ? 
access$200 4()Lorg/openide/util/lookup/implspi/ActiveQueue$Impl;
  A B ? obtainQueue
 D E F G H 0org/openide/util/lookup/implspi/ActiveQueue$Impl remove ()Ljava/lang/ref/Reference; J Got dequeued reference {0} L java/lang/Object
 * N : O A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V Q java/lang/Runnable	 1 S T 5 WARNING V aA reference not implementing runnable has been added to the Utilities.activeReferenceQueue(): {0}
 K X Y Z getClass ()Ljava/lang/Class;
 * \ : ] @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V P _ `  run b java/lang/ThreadDeath d java/lang/Throwable f java/lang/StringBuilder
 e  i Cannot process 
 e k l m append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 e o l p -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 e r s t toString ()Ljava/lang/String; v java/lang/InterruptedException Code LineNumberTable LocalVariableTable this ping t ex Ljava/lang/SecurityException; StackMapTable isActive ()Z td Ljava/lang/ThreadDeath; Ljava/lang/Throwable; impl 2Lorg/openide/util/lookup/implspi/ActiveQueue$Impl; ref Ljava/lang/ref/Reference; LocalVariableTypeTable Ljava/lang/ref/Reference<*>;  java/lang/ref/Reference #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
access$000 6()Lorg/openide/util/lookup/implspi/ActiveQueue$Daemon; 
SourceFile ActiveQueue.java InnerClasses Daemon Impl 0  
    
     
          w   5     *· 	±    x   
    U  V y        z    ( {   w   ä     K²  G» Y· K*¶ *¶ *¶ ¸ !'¶ )*³ ³ § K¸ !² 06*¶ 8³ § 
L³ +¿±   ( / .  ( C   / < C    x   B    Y  [  \  ]  ^  _ $ ` ( d , e / a 0 b < d @ e C d H e J g y       |    0  } ~       o .S c (    w   /      ² Æ § ¬    x       j     
@ ( B ?  w         ¸ <°    x       n  `   w       |¸ @L+Ç ±+¶ CM¸ !² 0I½ KY,S¶ M,Á P ¸ !² RU,¶ W¶ [§ÿÉ,À P¹ ^ M§ 0N-¿N¸ !² R» eY· gh¶ j,¶ n¶ q-¶ 8M§ 
:M¿§ÿL§ÿ  : C H a : C K c : C n   H i n   n p n      x u 	 7 x u : u x u  x   Z    u  v  w 	 y  z ! { ( | 7 } :  C  E  H  I  K  L  i  k  n  r  u  x  y  y   4  I     L  |    q     g      | z          g       "  ü  Dü 0 M aB cb cù B u            w         ² °    x       P             "   D "  