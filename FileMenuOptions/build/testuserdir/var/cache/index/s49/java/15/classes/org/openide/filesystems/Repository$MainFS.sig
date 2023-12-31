����   4 �
      'org/openide/filesystems/MultiFileSystem <init> ()V	  	 
   )org/openide/filesystems/Repository$MainFS ALL  Lorg/openide/util/Lookup$Result;
      org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
     refreshLayers  java/util/ArrayList
  
      java/lang/Thread currentThread ()Ljava/lang/Thread;
    ! " getContextClassLoader ()Ljava/lang/ClassLoader;
 $ % & ' ( "org/openide/filesystems/Repository provideLayers *(Ljava/lang/ClassLoader;Ljava/util/List;)V	  * + , layers 'Lorg/openide/filesystems/XMLFileSystem; . / 0 1 2 java/util/List size ()I 4 java/net/URL . 6 7 8 toArray (([Ljava/lang/Object;)[Ljava/lang/Object; : [Ljava/net/URL;
 < = > ? @ %org/openide/filesystems/XMLFileSystem 
setXmlUrls ([Ljava/net/URL;)V	  B C D LOG Ljava/util/logging/Logger;	 F G H I J java/util/logging/Level FINE Ljava/util/logging/Level; L Loading classpath layers: {0}
 N O P Q R java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V T java/lang/Exception	 F V W J WARNING Y java/lang/StringBuilder
 X  \ Setting layer URLs: 
 X ^ _ ` append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 X b _ c -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 X e f g toString ()Ljava/lang/String;
 N i Q j C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  l m n resultChanged !(Lorg/openide/util/LookupEvent;)V	  p q r MEMORY $Lorg/openide/filesystems/FileSystem; . t u v add (Ljava/lang/Object;)Z
  x y z allInstances ()Ljava/util/Collection; | } ~  � java/util/Collection iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object; � "org/openide/filesystems/FileSystem	 � � � � � java/lang/Boolean TRUE Ljava/lang/Boolean;
 � � � � getRoot &()Lorg/openide/filesystems/FileObject; � fallback
 � � � � � "org/openide/filesystems/FileObject getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 � � � v equals � %[Lorg/openide/filesystems/FileSystem;
  � � � computeDelegates '()[Lorg/openide/filesystems/FileSystem;
  � � � setDelegates (([Lorg/openide/filesystems/FileSystem;)V
 � � � � � org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
 � � � � lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
 � � � � �  org/openide/filesystems/FileUtil createMemoryFileSystem &()Lorg/openide/filesystems/FileSystem;
 <  � org/openide/util/LookupListener 	Signature FLorg/openide/util/Lookup$Result<Lorg/openide/filesystems/FileSystem;>; Code LineNumberTable LocalVariableTable this +Lorg/openide/filesystems/Repository$MainFS; x Ljava/lang/Exception; 	layerUrls Ljava/util/List; LocalVariableTypeTable  Ljava/util/List<Ljava/net/URL;>; StackMapTable f arr 6Ljava/util/List<Lorg/openide/filesystems/FileSystem;>; ev Lorg/openide/util/LookupEvent; � org/openide/util/LookupEvent � java/lang/Object � java/lang/Throwable MethodParameters <clinit> 
SourceFile Repository.java InnerClasses MainFS Result 0    �      �    �  q r    + ,        �   F     *� � *� *� �    �       �  �  �  � �        � �       �   �     ]� Y� L� � +� #� )++� - � 3� 5 � 9� ;� A� EK+� M� !M� A� U� XY� Z[� ]+� a� d,� h*� k�   6 9 S  �   & 	   �  �  � * � 6 � 9 � : � W � \ � �      :  � �    ] � �    U � �  �      U � �  �    � 9   .  S 
 � �  �  I     �� Y� K*� o� s W� � w� { L+� � � -+� � � �M� �,� ��� �� �� ���*,� s W���*� )� s W� � w� { L+� � � *+� � � �M� �,� ��� �� �� *,� s W���*� �� 5 � ��    �   6    �  �  � 1 � C � F � N � Q � [ � z � � � � � � � �      1  � r  z  � r   � � �   �      � � �   �    �  . �� ' �� 
�  �,�   m n  �   �     $YM�*� �� �,ç N,�-��             �       �  �  �  � �        � �      � �  �    �    � �  ��  �    �    �   �   <      � ��� �� � �� o� <Y� �� )�    �       �  �  �  �    � �      $ �   � �	