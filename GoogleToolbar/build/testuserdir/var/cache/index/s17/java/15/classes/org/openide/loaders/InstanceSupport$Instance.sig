����   4 ;
      java/lang/Object <init> ()V	  	 
   ,org/openide/loaders/InstanceSupport$Instance obj Ljava/lang/Object;
     getClass ()Ljava/lang/Class;
      java/lang/Class getName ()Ljava/lang/String;
     instanceClass
     isAssignableFrom (Ljava/lang/Class;)Z  %org/openide/cookies/InstanceCookie$Of (Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this .Lorg/openide/loaders/InstanceSupport$Instance; MethodParameters instanceName 	Signature ()Ljava/lang/Class<*>; instanceCreate ()Ljava/lang/Object; 
instanceOf type Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<*>; (Ljava/lang/Class<*>;)Z 
SourceFile InstanceSupport.java InnerClasses 6 #org/openide/loaders/InstanceSupport Instance 9 "org/openide/cookies/InstanceCookie Of !                 !   F     
*� *+� �    "        	 #       
 $ %     
    &        '   !   5     *� � � �    "      	 #        $ %       !   2     *� � �    "       #        $ %   (    )  * +  !   /     *� �    "       #        $ %    ,   !   O     	+*� � �    "       #       	 $ %     	 - .  /       	 - 0  &    -   (    1  2    3 4      5 7 	  8 :	