����   4 O
      java/lang/Object <init> ()V
  	 
   Gorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider 
access$000 ()Ljava/util/Map;
      Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$Down flush (Ljava/util/Map;)V
     
access$100      java/util/Map values ()Ljava/util/Collection;      ! java/util/Collection iterator ()Ljava/util/Iterator; # $ % & ' java/util/Iterator hasNext ()Z # ) * + next ()Ljava/lang/Object; - java/lang/ref/Reference
 , / 0 + get
  2   4 java/lang/Runnable Code LineNumberTable LocalVariableTable this NLorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$Down; run #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; p ILorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider; rp Ljava/lang/ref/Reference; m Ljava/util/Map; LocalVariableTypeTable dLjava/lang/ref/Reference<Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;>; �Ljava/util/Map<Lorg/netbeans/api/project/Project;Ljava/lang/ref/Reference<Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;>;>; StackMapTable MethodParameters 	Signature �(Ljava/util/Map<Lorg/netbeans/api/project/Project;Ljava/lang/ref/Reference<Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;>;>;)V 
SourceFile ,AuxiliaryConfigBasedPreferencesProvider.java Lorg/openide/modules/OnStop; InnerClasses Down 1    3        5   /     *� �    6       e 7        8 9    :   5   A     *� � *� � �    6       h  i  j 7        8 9   ;     <       5   �     6+�  �  M,� " � #,� ( � ,N-� .� :� � 1��ڱ    6       m  n ( o - p 2 r 5 s 7   *  ( 
 = >    ? @    6 8 9     6 A B  C       ? D    6 A E  F    �  #%�  G    A   H    I  J    K ;     L   M   
    N 