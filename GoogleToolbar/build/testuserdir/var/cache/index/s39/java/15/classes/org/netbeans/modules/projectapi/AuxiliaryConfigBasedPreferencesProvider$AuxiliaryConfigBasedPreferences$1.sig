����   4 S	      iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$1 this$1 iLorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;	   	 
 val$key Ljava/lang/String;	    
 	val$value
      java/lang/Object <init> ()V
      gorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences getSpi &(Ljava/lang/String;)Ljava/lang/String;
      java/lang/String equals (Ljava/lang/Object;)Z
  ! " # access$1701 �(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;Ljava/lang/String;Ljava/lang/String;)V % "java/lang/IllegalArgumentException
 $ ' ( ) 
getMessage ()Ljava/lang/String; + too long
  - . / contains (Ljava/lang/CharSequence;)Z
  1 2 3 putSpi '(Ljava/lang/String;Ljava/lang/String;)V
  5 6 7 run ()Ljava/lang/Void; 9 org/openide/util/Mutex$Action Code LineNumberTable LocalVariableTable this kLorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$1; MethodParameters 	Signature iae $Ljava/lang/IllegalArgumentException; oldValue StackMapTable ()Ljava/lang/Object; CLjava/lang/Object;Lorg/openide/util/Mutex$Action<Ljava/lang/Void;>; 
SourceFile ,AuxiliaryConfigBasedPreferencesProvider.java EnclosingMethod K 3 put InnerClasses N Gorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider AuxiliaryConfigBasedPreferences Q org/openide/util/Mutex Action      8  	 
    
           #  :   H     *+� *,� *-� *� �    ;      q <        = >         ?    � 	  @      6 7  :   �     N*� *� � L*� +� � �*� *� *� �  � $M,� &*� ,� *� *� *� � 0� ,��   ( + $  ;   * 
  t u v y (� +z ,{ 8} J L� <      ,   A B    N = >    B C 
  D    �  Q $�  $� A 6 E  :   /     *� 4�    ;      q <        = >    @    F G    H I     J L      M O         8 P R	