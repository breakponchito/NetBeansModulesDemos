����   4 0
      java/lang/Object <init> ()V	  	 
   .org/openide/util/lookup/ProxyLookup$Controller consumer %Lorg/openide/util/lookup/ProxyLookup;  java/lang/IllegalStateException  CCannot use Controller until a ProxyLookup has been created with it.
     (Ljava/lang/String;)V
      #org/openide/util/lookup/ProxyLookup 
setLookups <(Ljava/util/concurrent/Executor;[Lorg/openide/util/Lookup;)V
    9Controller cannot be used with more than one ProxyLookup. Code LineNumberTable LocalVariableTable this 0Lorg/openide/util/lookup/ProxyLookup$Controller; notifyIn Ljava/util/concurrent/Executor; lookups [Lorg/openide/util/Lookup; StackMapTable MethodParameters ([Lorg/openide/util/Lookup;)V setProxyLookup ((Lorg/openide/util/lookup/ProxyLookup;)V lkp 
SourceFile ProxyLookup.java InnerClasses 
Controller 1                   3     *� �       
      �           !   �       n     *� � � Y� �*� +,� �           �  �  �  �            !      " #     $ %  &     '   	 "   $   �  (     a     *� � � Y� �*+� �           �  �  �  �           !      $ %  &     '    $     ) *     `     *� � � Y� �*+� �           �  �  �  �           !      +   &     '    +    ,    - .   
    / 