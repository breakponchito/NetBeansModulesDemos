Êþº¾   4 ­
      (org/netbeans/api/progress/ProgressHandle createHandle \(Ljava/lang/String;Lorg/openide/util/Cancellable;)Lorg/netbeans/api/progress/ProgressHandle;
  	 
   1org/netbeans/progress/module/DefaultHandleFactory get 9()Lorg/netbeans/modules/progress/spi/ProgressEnvironment;      5org/netbeans/modules/progress/spi/ProgressEnvironment ](Ljava/lang/String;Lorg/openide/util/Cancellable;Z)Lorg/netbeans/api/progress/ProgressHandle;
     addDefaultAction (Ljavax/swing/Action;)Z
      java/lang/Object <init> ()V	     LOG Ljava/util/logging/Logger;
 ! " # $ % 0org/netbeans/modules/progress/spi/InternalHandle getDisplayName ()Ljava/lang/String;
 ' ( ) * + java/util/logging/Logger fine (Ljava/lang/String;)V	  - . / internal 2Lorg/netbeans/modules/progress/spi/InternalHandle;ÿÿÿÿÿÿÿÿ
  3 4 5 start (IJ)V 7  
 ! 9 4 : (Ljava/lang/String;IJ)V
 ! < =  toIndeterminate	 ? @ A B C java/util/logging/Level FINE Ljava/util/logging/Level;
 ' E F G 
isLoggable (Ljava/util/logging/Level;)Z I {0}: {1}
 ' K L M log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 ! O P + toSilent
 ! R S 5 toDeterminate
  U V  finish
 ! U
  Y Z [ progress (Ljava/lang/String;I)V
 ! Y
 ! ^ _ ` setInitialDelay (I)V
 ! b c + requestDisplayNameChange e performView
 ! g h i requestAction )(Ljava/lang/String;Ljavax/swing/Action;)Z
 k l m n % java/lang/Class getName
 ' p q r 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; t 1org/netbeans/api/progress/ProgressHandle$Accessor
 s 
 w x y z { 0org/netbeans/progress/module/ProgressApiAccessor setInstance 5(Lorg/netbeans/progress/module/ProgressApiAccessor;)V } java/lang/AutoCloseable ACTION_VIEW Ljava/lang/String; ConstantValue >(Ljava/lang/String;)Lorg/netbeans/api/progress/ProgressHandle; Code LineNumberTable LocalVariableTable displayName MethodParameters allowToCancel Lorg/openide/util/Cancellable; createSystemHandle p(Ljava/lang/String;Lorg/openide/util/Cancellable;Ljavax/swing/Action;)Lorg/netbeans/api/progress/ProgressHandle; 
viewAction Ljavax/swing/Action; h *Lorg/netbeans/api/progress/ProgressHandle; StackMapTable 5(Lorg/netbeans/modules/progress/spi/InternalHandle;)V this 	workunits I estimate J switchToIndeterminate suspend message switchToDeterminate close #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; workunit millis setDisplayName newDisplayName action getInternalHandle 4()Lorg/netbeans/modules/progress/spi/InternalHandle; RuntimeInvisibleAnnotations #Lorg/openide/modules/PatchedPublic; § java/lang/Throwable <clinit> 
SourceFile ProgressHandle.java InnerClasses Accessor 1    |   ~       d       . /    	       0     *¸ °           >                    	       @     ¸ *+¹  °           J                      	       	       @     ¸ *+¹  °           W                      	       	       z     ¸ *+¹  N,Æ 	-,¶ W-°           k  l  m  o    *                              ü                	       z     ¸ *+¹  N,Æ 	-,¶ W-°           }  ~        *                              ü                        T     *· ² +¶  ¶ &*+µ ,±                                 . /      .    4      7     	* 0¶ 2±       
              	      4 `     A     	* 0¶ 2±       
              	       	            4 5     N     *´ ,6 ¶ 8±       
    §  ¨                             	              6     *´ ,¶ ;±       
    ±  ²               +     {     2² ² >¶ D  ² ² >H½ Y*´ ,¶  SY+S¶ J*´ ,+¶ N±           ¾  ¿ ) Á 1 Â        2       2        )          `     D     *´ , 0¶ Q±       
    Ì  Í                            5     L     
*´ , ¶ Q±       
    Ø 	 Ù         
       
      
       	              3     *¶ T±       
    à  á                      V      6     *´ ,¶ W±       
    è  é              Z `     ?     *¶ X±       
    ò  ó                           Z +     @     *+þ¶ X±       
    û  ü                           Z [          3² ² >¶ D  ² ² >H½ Y*´ ,¶  SY+S¶ J*´ ,+¶ \±            ) 2	         3       3      3        )    	        _ `     A     	*´ ,¶ ]±       
            	       	             +     L     ² +¶ &*´ ,+¶ a±          " # $                                   ?     *´ ,d+¶ f¬          -                ¡       ¡    ¢ £     /     *´ ,°          5             ¤     ¥     $ %     p     *´ ,YLÂ*´ ,¶  +Ã°M+Ã,¿                   : ; <                 ÿ      ¦  ¨      6      ¶ j¸ o³ » sY· u¸ v±           4 M N  ©    ª «   
  s  ¬ 