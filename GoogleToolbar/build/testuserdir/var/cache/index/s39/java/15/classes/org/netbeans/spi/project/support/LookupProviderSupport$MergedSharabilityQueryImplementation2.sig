����   4 T
      java/lang/Object <init> ()V  8org/netbeans/spi/queries/SharabilityQueryImplementation2
 
     org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	      \org/netbeans/spi/project/support/LookupProviderSupport$MergedSharabilityQueryImplementation2 	lkpResult  Lorg/openide/util/Lookup$Result;
      org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;       java/util/Collection iterator ()Ljava/util/Iterator; " # $ % & java/util/Iterator hasNext ()Z " ( ) * next ()Ljava/lang/Object;  , - . getSharability G(Ljava/net/URI;)Lorg/netbeans/api/queries/SharabilityQuery$Sharability;	 0 1 2 3 4 5org/netbeans/api/queries/SharabilityQuery$Sharability UNKNOWN 7Lorg/netbeans/api/queries/SharabilityQuery$Sharability; 	Signature ]Lorg/openide/util/Lookup$Result<+Lorg/netbeans/spi/queries/SharabilityQueryImplementation2;>; (Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this ^Lorg/netbeans/spi/project/support/LookupProviderSupport$MergedSharabilityQueryImplementation2; lkp Lorg/openide/util/Lookup; MethodParameters $RuntimeInvisibleParameterAnnotations -Lorg/netbeans/api/annotations/common/NonNull; res impl :Lorg/netbeans/spi/queries/SharabilityQueryImplementation2; uri Ljava/net/URI; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile LookupProviderSupport.java InnerClasses Result O 6org/netbeans/spi/project/support/LookupProviderSupport %MergedSharabilityQueryImplementation2 R )org/netbeans/api/queries/SharabilityQuery Sharability 0          5    6     7  8   K     *� *+� 	� �    9      $ % & :        ; <      = >  ?    =  @     A    - .  8   �     ;*� � �  M,� ! � $,� ' � N-+� + :� /� ���ٲ /�    9      *  + ), 1- 4/ 70 :   *  )  B 4     C D    ; ; <     ; E F  G    �  "&�  ?    E   H     I    J    K L      
 M	  N P  0 Q S@