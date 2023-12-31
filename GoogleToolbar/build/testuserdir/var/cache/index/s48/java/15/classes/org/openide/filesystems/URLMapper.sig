����   4 �	      !org/openide/filesystems/URLMapper cache Ljava/util/List;
  	 
   java/lang/Object <init> ()V
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
     lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	     result  Lorg/openide/util/Lookup$Result;  #org/openide/filesystems/URLMapper$1
  	
    ! " # org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
  % & ' getInstances ()Ljava/util/List; ) * + , - java/util/List iterator ()Ljava/util/Iterator; / 0 1 2 3 java/util/Iterator hasNext ()Z / 5 6 7 next ()Ljava/lang/Object;
  9 : ; getURL 5(Lorg/openide/filesystems/FileObject;I)Ljava/net/URL;
 = > ? @ A org/openide/filesystems/FileURL encodeFileObject 4(Lorg/openide/filesystems/FileObject;)Ljava/net/URL; C java/util/LinkedHashSet
 B 	
  F G H getFileObjects 5(Ljava/net/URL;)[Lorg/openide/filesystems/FileObject;
 J K L M N java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; P Q R S T java/util/Set addAll (Ljava/util/Collection;)Z P V W X size ()I Z "org/openide/filesystems/FileObject P \ ] ^ toArray (([Ljava/lang/Object;)[Ljava/lang/Object; ` %[Lorg/openide/filesystems/FileObject; b java/lang/NullPointerException d 0Cannot pass null URL to URLMapper.findFileObject
 a f  g (Ljava/lang/String;)V	  i j  CACHE_JUST_COMPUTING	  l m n threadCache Ljava/lang/ThreadLocal;
 p q r s 7 java/lang/ThreadLocal get
 p u v w set (Ljava/lang/Object;)V y java/util/ArrayList
  { | } allInstances ()Ljava/util/Collection;
 x   � (Ljava/util/Collection;)V
 x * � >org/netbeans/modules/openide/filesystems/DefaultURLMapperProxy / � �  remove
 x � � � add (Ljava/lang/Object;)Z
 x 	
 p 	 � 2org/openide/filesystems/URLMapper$DefaultURLMapper
 � 	
 � � � � 
setDefault &(Lorg/openide/filesystems/URLMapper;)V
  � �  reset INTERNAL I ConstantValue     EXTERNAL    NETWORK    	Signature ELorg/openide/util/Lookup$Result<Lorg/openide/filesystems/URLMapper;>; 5Ljava/util/List<Lorg/openide/filesystems/URLMapper;>; NLjava/lang/ThreadLocal<Ljava/util/List<Lorg/openide/filesystems/URLMapper;>;>; Code LineNumberTable LocalVariableTable this #Lorg/openide/filesystems/URLMapper; findURL retVal Ljava/net/URL; mapper fo $Lorg/openide/filesystems/FileObject; type StackMapTable MethodParameters findFileObjects url retSet Ljava/util/Set; LocalVariableTypeTable 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; findFileObject 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject; results 	instances Ljava/util/Iterator; 9Ljava/util/Iterator<Lorg/openide/filesystems/URLMapper;>; m def it res Ljava/util/ArrayList; :Ljava/util/ArrayList<Lorg/openide/filesystems/URLMapper;>; � java/lang/Throwable 7()Ljava/util/List<Lorg/openide/filesystems/URLMapper;>; 
access$002 "(Ljava/util/List;)Ljava/util/List; x0 <clinit> 
SourceFile URLMapper.java InnerClasses Result DefaultURLMapper!       � �  �    �  � �  �    �  � �  �    � 
    �    �  j   �    �  m n  �    � 
    �    � 
     �   /     *� �    �       7 �        � �    �   �   A      � � � � � � Y� � �    �       Z  [  \  e 	 � ;  �   �     :� $� ( M,� . �  ,� 4 � N-*� 8:� ����� *� <��    �   "    r  s $ u ) v , x / | 3 } 8 � �   *  $  � �    � �    : � �     : � �  �    � 	 /"�  �   	 �   �   : ;  �   	 �   �   	 � H  �   �     R� BY� DL� $� ( M,� . � (,� 4 � N-*� E:� +� I� O W���++� U � Y� [ � _�    �       �  � $ � + � 0 � < � ? � �   *  +  � `  $  � �    R � �    J � �  �      J � �  �    �  P /*�  �    �   �     �     �   	 � �  �   �     O*� � aYc� e�L� $� ( M,� . � +� +�� ,� 4 � N-*� EL���+� +�� 	+2� �    �   & 	   �  �  �  �  � + � 5 � ; � > � �   *  5  � �    O � �    ? � `   6 � �  �      6 � �  �    � 
 _ /@ Y �    �   G H  �    �   
 & '  �  i     �YK² � � � h� � k� o� h� 	� *ð� h� � k� h� t*ç L*�+�K� xY� � z� ~KL*� �M,� . � ",� 4 � N-� �� -L,� � � ���+� 	*+� �W*LYM² � h� *� � k� t,ç 
:,��+�:Y:² � h� *� � k� tç :��� 	  % :   & 7 :   : = :   � � �   � � �   A � �   � � �   � � �   � � �    �   � !   �  �  �   � & � , � 5 � ? � A � O � Q � V � _ � i � p � r � x � { � ~ � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �   *  i  � �  Q 7 � �  V 2 � �  A � � �   �     V 2 � �  A � � �   �   Y �   S �� �  x  /$� 	�  ) K �� �   x  ��   x     �   L ��  �    � � �  �   0     *Y� �    �       7 �        �     �   �   J      "� xY� �� h� pY� �� k� �Y� �� �� ��    �       M 
 N  Q  R ! S  �    � �       �	        �  � 
