����   4 �
      java/lang/Object <init> ()V  file
 
     org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V	      )org/netbeans/api/queries/SharabilityQuery $assertionsDisabled Z  java/lang/AssertionError
  
      org/openide/util/BaseUtilities isMac ()Z
    ! " #  org/openide/filesystems/FileUtil normalizeFile (Ljava/io/File;)Ljava/io/File;
 % & ' ( ) java/io/File equals (Ljava/lang/Object;)Z + "java/lang/IllegalArgumentException - java/lang/StringBuilder
 ,  0 Must pass a normalized file: 
 , 2 3 4 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 , 6 3 7 -(Ljava/lang/Object;)Ljava/lang/StringBuilder; 9  vs. 
 , ; < = toString ()Ljava/lang/String;
 * ?  @ (Ljava/lang/String;)V	  B C D implementations2  Lorg/openide/util/Lookup$Result;
 F G H I J org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; L M N O P java/util/Collection iterator ()Ljava/util/Iterator; R S T U  java/util/Iterator hasNext R W X Y next ()Ljava/lang/Object; [ 8org/netbeans/spi/queries/SharabilityQueryImplementation2
  ] ^ _ toURI (Ljava/io/File;)Ljava/net/URI; Z a b c getSharability G(Ljava/net/URI;)Lorg/netbeans/api/queries/SharabilityQuery$Sharability;	 e f g h i 5org/netbeans/api/queries/SharabilityQuery$Sharability UNKNOWN 7Lorg/netbeans/api/queries/SharabilityQuery$Sharability;
 e k l m ordinal ()I	  o p D implementations r 7org/netbeans/spi/queries/SharabilityQueryImplementation q t b u (Ljava/io/File;)I w uri
  y z { normalizeURI (Ljava/net/URI;)Ljava/net/URI;
 } & ~ java/net/URI � Must pass a normalized URI: 
 } � � = 	getScheme
 � & � java/lang/String
  � � � toFile (Ljava/net/URI;)Ljava/io/File;
 e � � � values :()[Lorg/netbeans/api/queries/SharabilityQuery$Sharability;
 � � � ^ � "org/openide/filesystems/FileObject ()Ljava/net/URI;
  a
 � � � �  java/lang/Class desiredAssertionStatus
 � � � � � org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
 � � � � lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
 � � � = getName
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	  � � � LOG Ljava/util/logging/Logger; 	Signature [Lorg/openide/util/Lookup$Result<Lorg/netbeans/spi/queries/SharabilityQueryImplementation;>; \Lorg/openide/util/Lookup$Result<Lorg/netbeans/spi/queries/SharabilityQueryImplementation2;>; I ConstantValue     
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; SHARABLE    NOT_SHARABLE    MIXED    Code LineNumberTable LocalVariableTable this +Lorg/netbeans/api/queries/SharabilityQuery; normFile Ljava/io/File; x sqi :Lorg/netbeans/spi/queries/SharabilityQueryImplementation2; 9Lorg/netbeans/spi/queries/SharabilityQueryImplementation; asserts Ljava/net/URI; StackMapTable MethodParameters normUri ](Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/queries/SharabilityQuery$Sharability; fo $Lorg/openide/filesystems/FileObject; <clinit> 
SourceFile SharabilityQuery.java #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation InnerClasses Result Sharability 1       p D  �    �  C D  �    �  � �    h �  �    � �     �     �    � �  �    � �     �     �    � �  �    � �     �     �    � �  �    � �     �     �            �   /     *� �    �       � �        � �   	 b u  �  �     �*� 	<� � Y<� � Y� �� :� � 4*� M*,� $� '� *Y� ,Y� ./� 1*� 58� 1,� 5� :� >�M� A� E� K N-� Q � 2-� V � Z:,� *� \M,� ` :� d� 	� j���˲ n� E� K N-� Q � #-� V � q:*� s 6� �����    �   V    �  �  �  � & � + � 3 � W � Y � y � } � � � � � � � � � � � � � � � � � � � � � �   R  + , � �  �  � i  y ! � �  �  � �  �  � �    �  �    � �   Y { w �  �   & 	� :�  } R�  Z� � �  R%�  �       �     �     �   	 b c  �  �     �v*� 	<� � Y<� � Y� �� 4*� xM*,� |� '� *Y� ,Y� .� 1*� 58� 1,� 5� :� >�� A� E� K M,� Q � $,� V � ZN-*� ` :� d� ����*� �� �� D*� �� M� n� E� K N-� Q � '-� V � q:,� s 6� 
� �2���ֲ d�    �   R    �  �  �  �   � % � - � Q � p � y � � � � � � � � � � � � � � � � � � � � � �   R  % , � �  y  � i  p  � �  �  � �  �  � �  � 9  �    � w �    � �   �    � 4�  R&� �  % R)�  �    w   	 b �  �   2     *� �� ��    �       � �        � �   �    �    �   �   a      2� �� � � � �q� �� n� �Z� �� A� �� �� ��    �       .  2  5 & 7 �    @  �    � �     �  �[ s � �     F � �	 e  �@