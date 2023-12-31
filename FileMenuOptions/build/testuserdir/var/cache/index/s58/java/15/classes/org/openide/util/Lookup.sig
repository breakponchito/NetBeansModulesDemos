����   4	      org/openide/util/Lookup LOG Ljava/util/logging/Logger;
  	 
   java/lang/Object <init> ()V
      .org/netbeans/modules/openide/util/GlobalLookup current ()Lorg/openide/util/Lookup;	     defaultLookup Lorg/openide/util/Lookup;	     defaultLookupProvider "Lorg/openide/util/Lookup$Provider;       org/openide/util/Lookup$Provider 	getLookup	 ! " # $ % java/util/logging/Level FINER Ljava/util/logging/Level; ' 2About to initialize Lookup@{0}.getDefault() by {1}
 ) * + , - java/lang/Class getClassLoader ()Ljava/lang/ClassLoader;
 / 0 1 2 3 java/lang/Thread currentThread ()Ljava/lang/Thread;
 5 6 7 8 9 java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V ; org.openide.util.Lookup
 = > ? @ A java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String; C !Specified by property? Value: {0}
 5 E 8 F @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V H -
 J K L M N java/lang/String equals (Ljava/lang/Object;)Z	  P Q  EMPTY
 / S T - getContextClassLoader V Searching in classloader {0}
 ) X Y Z forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
 ) \ ] ^ newInstance ()Ljava/lang/Object;
  ` a b setSystemLookup (Lorg/openide/util/Lookup;)V	 ! d e % FINE g Default lookup initialized {0} i java/lang/Exception	 ! k l % WARNING n java/lang/StringBuilder
 m 	 q Constuction of 
 m s t u append -(Ljava/lang/String;)Ljava/lang/StringBuilder; w  via 
 m y t z -(Ljava/lang/Object;)Ljava/lang/StringBuilder; |  failed
 m ~  � toString ()Ljava/lang/String;
 5 � 8 � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 � � � � � org/openide/util/lookup/Lookups metaInfServices 2(Ljava/lang/ClassLoader;)Lorg/openide/util/Lookup;
  � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object; � #Searching for {0} in {1} yields {2}
 � � � � proxy =(Lorg/openide/util/Lookup$Provider;)Lorg/openide/util/Lookup; � !org/openide/util/Lookup$DefLookup
 � 	
 � � � � init 4(Ljava/lang/ClassLoader;Lorg/openide/util/Lookup;Z)V
  � � � D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
 � � � � � org/openide/util/Lookup$Result allItems ()Ljava/util/Collection; � � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � ^ next � org/openide/util/Lookup$Item �  org/openide/util/Lookup$Template
 � �  � (Ljava/lang/Class;)V
  � � � lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
 � � � � allInstances � org.openide.util.lookup.init
 5 � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; � org/openide/util/Lookup$Empty
 � 	 Code LineNumberTable LocalVariableTable this 
getDefault lkp o Ljava/lang/Object; e Ljava/lang/Exception; gLpk 	className Ljava/lang/String; l Ljava/lang/ClassLoader; misl prov def #Lorg/openide/util/Lookup$DefLookup; StackMapTable � java/lang/ClassLoader resetDefaultLookup MethodParameters clazz 	Signature 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; template d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; 
lookupItem B(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Item; "Lorg/openide/util/Lookup$Template; res  Lorg/openide/util/Lookup$Result; it Ljava/util/Iterator; LocalVariableTypeTable 'Lorg/openide/util/Lookup$Template<TT;>; %Lorg/openide/util/Lookup$Result<TT;>; :Ljava/util/Iterator<+Lorg/openide/util/Lookup$Item<TT;>;>; b<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Item<TT;>; Ljava/lang/Class; Ljava/lang/Class<TT;>; S<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; J<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/Collection<+TT;>; 
access$000 ()Ljava/util/logging/Logger; <clinit> 
SourceFile Lookup.java InnerClasses Provider 	DefLookup Template Result Item Empty!            Q    
     
     
     �   3     *� �    �   
    N  O �        �    ) �   �  �    ݸ K*� *�� � 	� � � � � �  L+� +�� �� �  &� Y� (SY� .S� 4:� <L� �  B+� DG+� I� � O�� .� RM� �  U,� D+� L+,� W� [N-� � � � _� � cf� � D-� � -� � � �  :� �� �� /N� � j� mY� op� r+� rv� r,� x{� r� }-� �,� �N-� �� � � �  �� YSY-SY� S� 4� � 9� � � � � � � �  :� �� � cf� � D� �-� �� :� �  �� YSY-SY� S� 4� � �� � � cf� � D� �� �Y� �:,-� �� ,-� �� � cf� � D� �  ~ � � h � � � h  �   � 7   ^  _  ` 
 c  d  e % f ) g + j / l ? m I l L p R r ^ t g v k y r z ~ | � } � ~ � � � � � � � � � � � � � � � � � � � � � � � � � � �) �/ �8 �A �K �P �S �a �e �p �� �� �� �� �� �� �� �� �� �� � �   p  %  �   �  �   � ? � �  � + � � K  �   � �    R� � �  rk � �  � � �  p m �  � ' � �  �   / � 
 � ; J� [ � � B h+� X � G  * �   �   �     A� � � � �� 4� � �K� .� RL+� �M*� � �Y� �K*+,� �*� *+,� ��    �   * 
   �  �  �  � " � & � . � 5 � 9 � @ � �       * � �    # � �  "  �   �    � ) � � �  � �  �    �   �    � � �  �    �   �    �  � �  �   �     '*+� �M,� �� � N-� � � -� � � �� �    �         �   *    ' �      ' � �   ! � �    � �  �        ' � �   ! � �    � �  �    � % � �@ � �    �   �    �  � �  �   S     *� �Y+� �� ��    �       �        �       � �  �        � �  �    �   �    �  � �  �   O     	*+� �� ��    �       �       	 �      	 � �  �       	 � �  �    �   �    � � �  �         � �    �       >  �   �   /      �� ó � �Y� ɳ O�    �   
    ?  C  �    � �   2    �	 �    �   � 	 � 	 �  