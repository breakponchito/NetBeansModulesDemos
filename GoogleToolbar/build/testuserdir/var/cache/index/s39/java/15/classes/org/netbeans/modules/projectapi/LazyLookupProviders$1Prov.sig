����   4 Y	      9org/netbeans/modules/projectapi/LazyLookupProviders$1Prov 	val$attrs Ljava/util/Map;
  	 
   java/lang/Object <init> ()V  *org/netbeans/modules/projectapi/LazyLookup
     +(Ljava/util/Map;Lorg/openide/util/Lookup;)V	      3org/netbeans/modules/projectapi/LazyLookupProviders LOG Ljava/util/logging/Logger;	      java/util/logging/Level FINE Ljava/util/logging/Level;
    ! " # java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z % FAdditional lookup created: {0} service class: {1} for base lookup: {2}
 ' ( ) * + java/lang/System identityHashCode (Ljava/lang/Object;)I
 - . / 0 1 java/lang/Integer valueOf (I)Ljava/lang/Integer; 3 class 5 6 7 8 9 java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;
  ; < = log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V ? 'org/netbeans/spi/project/LookupProvider (Ljava/util/Map;)V Code LineNumberTable LocalVariableTable this ;Lorg/netbeans/modules/projectapi/LazyLookupProviders$1Prov; MethodParameters 	Signature createAdditionalLookup 4(Lorg/openide/util/Lookup;)Lorg/openide/util/Lookup; lkp Lorg/openide/util/Lookup; result ,Lorg/netbeans/modules/projectapi/LazyLookup; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile LazyLookupProviders.java EnclosingMethod U V forProjectServiceProvider :(Ljava/util/Map;)Lorg/netbeans/spi/project/LookupProvider; InnerClasses Prov      >          @  A   4     
*+� *� �    B       : C       
 D E   F     G      H I  A   �     L� Y*� +� M� � � � 4� � $� Y,� &� ,SY*� 2� 4 SY+� &� ,S� :,�    B   "    =  >  ? ( C 7 D @ E G ? J H C        L D E     L J K   ? L M  N    � J  F    J   O     P    Q    R S     T W   
     X  