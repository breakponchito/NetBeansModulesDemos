����   4 a	      +org/openide/util/lookup/ProxyLookup$1Notify this$0 %Lorg/openide/util/lookup/ProxyLookup;	   	 
 val$evAndListeners Ljava/util/ArrayList;
      java/lang/Object <init> ()V
      java/util/ArrayList iterator ()Ljava/util/Iterator;      java/util/Iterator hasNext ()Z      next ()Ljava/lang/Object; " org/openide/util/LookupEvent $ org/openide/util/LookupListener # & ' ( resultChanged !(Lorg/openide/util/LookupEvent;)V * java/lang/RuntimeException , #org/openide/util/lookup/ProxyLookup
 . / 0 1 2 java/lang/Class getName ()Ljava/lang/String;
 4 5 6 7 8 java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 : ; < = > java/util/logging/Level WARNING Ljava/util/logging/Level;
 4 @ A B log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V D java/lang/Runnable =(Lorg/openide/util/lookup/ProxyLookup;Ljava/util/ArrayList;)V Code LineNumberTable LocalVariableTable this -Lorg/openide/util/lookup/ProxyLookup$1Notify; MethodParameters 	Signature run x Ljava/lang/RuntimeException; ev Lorg/openide/util/LookupEvent; l !Lorg/openide/util/LookupListener; it Ljava/util/Iterator; LocalVariableTypeTable Ljava/util/Iterator<*>; StackMapTable 
SourceFile ProxyLookup.java EnclosingMethod ] ^ 
setLookups <(Ljava/util/concurrent/Executor;[Lorg/openide/util/Lookup;)V InnerClasses Notify      C  	 
           E  F   C     *+� *,� *� �    G       � H        I J         K   	 � 	 L      M   F   �     F*� � L+�  � 7+�  � !M+�  � #N-,� % � :+� -� 3� 9� ?��Ʊ  % , / )  G   * 
   �  �  �  � % � , � / � 1 � B � E � H   4  1  N O   ' P Q  %  R S    F I J    > T U  V      > T W  X   " �  � &    ! #  )�   Y    Z [    + \ _   
     `  