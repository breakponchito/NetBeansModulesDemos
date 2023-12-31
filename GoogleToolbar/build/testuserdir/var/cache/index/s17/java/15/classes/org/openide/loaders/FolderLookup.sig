����   4
       org/openide/loaders/FolderLookup 
objectName F(Ljava/lang/String;Lorg/openide/loaders/DataObject;)Ljava/lang/String;
   	 
 	exception <(Ljava/lang/Exception;Lorg/openide/filesystems/FileObject;)V	     lookup +Lorg/openide/loaders/FolderLookup$ProxyLkp;
     <init> @(Lorg/openide/loaders/DataObject$Container;Ljava/lang/String;Z)V	     rootName Ljava/lang/String;  FL[
     ?(Lorg/openide/loaders/DataObject$Container;Ljava/lang/String;)V
       "org/openide/loaders/FolderInstance -(Lorg/openide/loaders/DataObject$Container;)V	  " # $ isRoot Z & )org/openide/loaders/FolderLookup$ProxyLkp	  ( ) * LOCK Ljava/lang/Object;
 % ,  - %(Lorg/openide/loaders/FolderLookup;)V
  / 0 1 checkRecreate ()V 3 1org/openide/loaders/FolderLookup$FolderLookupData
 2 5  1
 2 7 8 9 
access$000 E(Lorg/openide/loaders/FolderLookup$FolderLookupData;)Ljava/util/List; ; < = > ? java/util/List add (Ljava/lang/Object;)Z A B C D E "org/openide/cookies/InstanceCookie instanceCreate ()Ljava/lang/Object;
 2 G H I 
access$100 K(Lorg/openide/loaders/FolderLookup$FolderLookupData;)Ljava/util/Collection; K L M N O java/util/Collection addAll (Ljava/util/Collection;)Z ; L R org/openide/util/Lookup T 'org/openide/loaders/FolderLookup$ICItem K < W java/io/IOException
  Y 	 Z (Ljava/lang/Exception;)V \  java/lang/ClassNotFoundException
  ^ _ ` 	getLookup ()Lorg/openide/util/Lookup;
 % b c d update )(Ljava/util/Collection;Ljava/util/List;)V f %org/openide/cookies/InstanceCookie$Of e h i j 
instanceOf (Ljava/lang/Class;)Z A l m n instanceClass ()Ljava/lang/Class;
 p q r s j java/lang/Class isAssignableFrom
 S u  v Y(Lorg/openide/loaders/DataObject;Ljava/lang/String;Lorg/openide/cookies/InstanceCookie;)V x <container> z java/lang/StringBuilder
 y 5
 y } ~  append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 y � � � toString ()Ljava/lang/String; � � � � 1 java/lang/Runnable run
 � � � � � org/openide/loaders/DataObject getName
 y � ~ � (C)Ljava/lang/StringBuilder;
 p �
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level INFO Ljava/util/logging/Level;
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V	  � � � notified Ljava/util/Set;
 � � � � � "org/openide/filesystems/FileObject getPath � < � java/util/Set	 � � � � FINE � 
Bad file: 
 y � ~ � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � java/lang/Object
 � 5 � java/util/HashSet
 � 5
 � � � � � java/util/Collections synchronizedSet  (Ljava/util/Set;)Ljava/util/Set; 	Signature #Ljava/util/Set<Ljava/lang/String;>; Code LineNumberTable LocalVariableTable this "Lorg/openide/loaders/FolderLookup; df *Lorg/openide/loaders/DataObject$Container; MethodParameters prefix ()Ljava/lang/Class<*>; inited StackMapTable � java/lang/Throwable createInstance 9([Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object; obj ex Ljava/io/IOException; "Ljava/lang/ClassNotFoundException; i I cookies %[Lorg/openide/cookies/InstanceCookie; flData 3Lorg/openide/loaders/FolderLookup$FolderLookupData; 
Exceptions instanceForCookie X(Lorg/openide/loaders/DataObject;Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object; isLookup dobj  Lorg/openide/loaders/DataObject; cookie $Lorg/openide/cookies/InstanceCookie; acceptFolder F(Lorg/openide/loaders/DataFolder;)Lorg/openide/cookies/InstanceCookie;  Lorg/openide/loaders/DataFolder; acceptContainer P(Lorg/openide/loaders/DataObject$Container;)Lorg/openide/cookies/InstanceCookie; � (org/openide/loaders/DataObject$Container � java/lang/String postCreationTask -(Ljava/lang/Runnable;)Lorg/openide/util/Task; Ljava/lang/Runnable; name e Ljava/lang/Exception; fo $Lorg/openide/filesystems/FileObject; � java/lang/Exception 
access$200 6(Lorg/openide/loaders/FolderLookup;)Ljava/lang/String; x0 d(Lorg/openide/loaders/DataObject$Container;Ljava/lang/String;ZLorg/openide/loaders/FolderLookup$1;)V x1 x2 x3 $Lorg/openide/loaders/FolderLookup$1; 
access$402 z(Lorg/openide/loaders/FolderLookup;Lorg/openide/loaders/FolderLookup$ProxyLkp;)Lorg/openide/loaders/FolderLookup$ProxyLkp; 
access$500 
access$600 <clinit> 
SourceFile FolderLookup.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses ProxyLkp 	Container FolderLookupData ICItem Of "org/openide/loaders/FolderLookup$1 )org/openide/loaders/FolderLookup$Dispatch Dispatch !       ) *              # $    � �  �    �       �   @     *+� �    �   
    E  F �        � �      � �  �    �       �   J     *+,� �    �   
    M  N �         � �      � �     �   �   	 �   �       �   d     *+� *,� *� !�    �       W  Y 
 Z  [ �   *     � �      � �     �      # $  �    �   �   #    m n  �   -     %�    �       a �        � �   �    �  _ `  �   �     4<� 'YM�*� � *� %Y*� +� <,ç N,�-�� *� .*� �    "   " % "    �   & 	   j  k  l  m  n  p ' r + s / v �       4 � �    2 � $  �    �  �D ��   � �  �  �     �� 2Y� 4M*� !� ,� 6� : W>+�� +2� @ :� 2� *,� F� 2� F� J W,� 6� 2� 6� P W� ,� Q� ,� 6� Q� : W� ,� F� S� U W� :� X� 
:� X����*� !� ,�*� ]W*� ,� F,� 6� a*� �  " � � V " � � [  �   ^    �  �  �  � " � , � 4 � F � [ � c � u � � � � � � � � � � � � � � � � � � � � � � � � � �   H  , X � *  �  � �  �  � �   � � �    � � �     � � �   � � �  �   # 
�  2� � > �� B VI [�  �     V [ �    �    � �  �   �     ;,� e� ,� eQ� g >� Q,� k � o>� 
,� @ �� SY+*� ,� t�    �       �  �  � " � & � - � �   4    � $    ; � �     ; � �    ; � �  "  � $  �    � 
 �     V [ �   	 �   �    � �  �   F     � Y+*� +� � �    �       � �        � �      � �  �    �    � �  �   �     ,� Y+*� � w� � yY� {*� � |w� |� �� �    �       �  � + � �       , � �     , � �  �   1 �    �      ��    �      � � �    �    � �  �   @     +� � �    �   
    �  � �        � �      � �  �    �   
    �   i     $*� +� ��� yY� {*� |/� �+� �� |� ��    �       �  � 	 � �       $ �      $ � �  �    	 �   	 �   �   
 	 Z  �   ?     � �� �� �*� ��    �   
    �  � �        � �   �    �   
 	 
  �   �     8� �� �� �+� �� � � 	� �� � �� yY� {�� |+� �� �*� ��    �   
    7 �       8 � �     8 � �  �    ] ��   � �  � � �   	 �   �   � �  �   /     *� �    �       / �        � �     �  �   Z     *+,� �    �       / �   4     � �      � �     �      � $     �    �   ;     *+Z� �    �       / �        � �      �   
  �   :     *+� �    �       / �        � �      � �    �   :     *+� �    �       / �        �       � �   1  �   4      � �Y� �� '� �Y� �� �� ��    �   
    2 
         	    
     :  %   � �	 2  
 S   e A	      