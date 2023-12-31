����   4'  $org/openide/loaders/FolderComparator
     <init> (I)V
  	 
   'org/openide/loaders/DataFolder$SortMode ()V	     mode I
     	doCompare '(Ljava/lang/Object;Ljava/lang/Object;)I
     compareNames
     compareClass
     compareFoldersFirst
     compareLastModified
  ! "  compareSize
  $ %  compareExtensions
  ' (  compareNatural	  * + , $assertionsDisabled Z . java/lang/AssertionError
 -  1 "org/openide/filesystems/FileObject 3 org/openide/loaders/DataObject
 2 5 6 7 getPrimaryFile &()Lorg/openide/filesystems/FileObject; 9 org/openide/nodes/Node
 8 ; < = 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 2 ? @ A find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; C /org/openide/loaders/DataObjectNotFoundException
  E F G findFileObject 8(Ljava/lang/Object;)Lorg/openide/filesystems/FileObject;
 0 I J K 
getNameExt ()Ljava/lang/String;
 M N O P Q java/lang/String 	compareTo (Ljava/lang/String;)I
 0 S T U isFolder ()Z
 0 W X K getExt
 M Z [ \ equals (Ljava/lang/Object;)Z
 0 ^ _ K getName
  a b c findDataObject 4(Ljava/lang/Object;)Lorg/openide/loaders/DataObject;
 e f g h i java/lang/Object getClass ()Ljava/lang/Class;
 k l m n o "org/openide/loaders/DataLoaderPool 
getDefault &()Lorg/openide/loaders/DataLoaderPool;
 k q r s 
allLoaders ()Ljava/util/Enumeration; u v w x U java/util/Enumeration hasMoreElements u z { | nextElement ()Ljava/lang/Object; ~ org/openide/loaders/DataLoader
 } � � i getRepresentationClass
 � � � � � java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
 0 � � � lastModified ()Ljava/util/Date;
 � � � � � java/util/Date after (Ljava/util/Date;)Z
 0 � � � getSize ()J
  � � � compareFileNameNatural '(Ljava/lang/String;Ljava/lang/String;)I
 M � � K toLowerCase
 M � � � length ()I
 M � � � charAt (I)C
  � � � readNumericValue R(Ljava/lang/String;I)Lorg/openide/loaders/FolderComparator$ReadNumericValueResult;
 � � � � � ;org/openide/loaders/FolderComparator$ReadNumericValueResult getValue
 � � � � 	getEndPos � #Invalid state in natural comparator
 - �  � (Ljava/lang/Object;)V
 � �  � (II)V
 � � � � � java/lang/Character isWhitespace (C)Z
  � � � compare C(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataObject;)I
 � � � U desiredAssertionStatus NONE ConstantValue     NAMES    CLASS    FOLDER_NAMES    LAST_MODIFIED    SIZE    
EXTENSIONS    NATURAL    Code LineNumberTable LocalVariableTable this &Lorg/openide/loaders/FolderComparator; MethodParameters o1  Lorg/openide/loaders/DataObject; o2 obj1 Ljava/lang/Object; obj2 StackMapTable o n Lorg/openide/nodes/Node; obj ex 1Lorg/openide/loaders/DataObjectNotFoundException; f1 f2 ext1 Ljava/lang/String; ext2 $Lorg/openide/filesystems/FileObject; folder1 folder2 clazz Ljava/lang/Class; r1 r2 c1 c2 dlp $Lorg/openide/loaders/DataLoaderPool; loaders Ljava/util/Enumeration; LocalVariableTypeTable 4Ljava/lang/Class<+Lorg/openide/loaders/DataObject;>; Ljava/lang/Class<*>; fo1 fo2 d1 Ljava/util/Date; d2 s1 J s2 res C nv1 =Lorg/openide/loaders/FolderComparator$ReadNumericValueResult; nv2 name1 name2 n1 n2 p1 p2 unfinished1 unfinished2 c i s pos val num afterNum len <clinit> 
SourceFile FolderComparator.java InnerClasses! org/openide/loaders/DataFolder SortMode$ org/openide/nodes/Node$Cookie Cookie ReadNumericValueResult       
  �   �    �  �   �    �  �   �    �  �   �    �  �   �    �  �   �    �  �   �    �  �   �    �      + ,        �   4     *� �    �   
    9  : �        � �       �   F     
*� *� �    �       ?  @ 	 A �       
 � �     
    �        � �  �   E     *+,� �    �       D �         � �      � �     � �  �   	 �   �        �   �     x*� �      `          0   2   9   @   G   M   S   Z�*+,� �*+,� �*+,� �+,� �+,�  �*+,� #�+,� &�� )� � -Y*� � /��    �   .    K 4 M 6 O = Q D S K U Q W W Y ^ [ d ] v ^ �        x � �     x � �    x � �  �    
4 �   	 �   �    F G  �   �     /*� 0� *� 0�*� 2� *� 2� 4�*� 8L+2� :� 2M,� 4�    �       c  d  f  g  i   j * k �        / � �      � �  *  � �  �     �    �   
 b c  �   �     /*� 2� *� 2�*� 0� *� 0� >�L�*� 8L+2� :� 2M,�     B  �   & 	   o  p  r  t  u  v  y # z - { �   *    � �    / � �   #  � �  -  � �  �    N B �    �       �   P     +� D� H,� D� H� L�    �       � �         � �      � �     � �  �   	 �   �       �   �     (+� D� R>,� D� R6� � � �*+,� �    �       �  �  �  � ! � �   4    ( � �     ( � �    ( � �     � ,    � ,  �   
 � @  �   	 �   �    %   �  ?  	   h+� DN,� D:-� R6� R6� � � �� -� H� H� L�-� V:� V:� Y� -� ]� ]� L�� L�    �   6    �  �  �  �  �  � * � / � < � B � I � S � ` � �   \ 	 B & � �  I  � �    h � �     h � �    h � �   c � �   ] � �   W � ,   P � ,  �   ' � (   e e 0 0  @ � # M M �   	 �   �       �  �     �+� `N,� `:-� d:� d:� *-� �� j:� p:� t � Q� y � }� :		2� ���	� �6
	� �6
� � *-� �
� �� ����*-� �    �   J    �  �  �  �  �  � ' � , � 3 � = � L � V � _ � h � z � � � � � � � �   z  L < � � 	 _ ) � , 
 h   � ,    � � �     � � �    � � �   � � �   � � �   � � �   { � �  , g � �  3 ` � �  �      L < � � 	  � � �   { � �  �   7 � '   e e 2 2 � �  �  k u� " �� #�  �   	 �   �   
    �  +     _*� D� R=+� D� R>� � � �*� D:+� D:� �:� �:� �� �� �� �� H� H� L�    �   6    �  �  �  �  � % � + � 2 � 9 � C � E � O � Q � �   R    _ � �     _ � �   W � ,   O � ,  % : � �  + 4  �  2 -  9 &  �   & � @ � %  e e 0 0 � �   �   	 �   �   
 "   �  #  
   [*� D� R=+� D� R>� � � �*� D:+� D:� �7� �7�� ��� �� H� H� L�    �   6    �  �  �  �  � % � + � 2 � 9 � A � C � K � M � �   R    [ � �     [ � �   S � ,   K � ,  % 6 � �  + 0  �  2 )  9 "  �   " � @ � #  e e 0 0  	 �   	 �   �   
 (   �   �     8*� DM+� DN,� R6-� R6� � � �,� H-� H� �6�    �   "    �  � 
    ( 5 �   H    8 � �     8 � �   3 � �  
 .  �   ( � ,   " � ,  5    �    � &  e e 0 0  @  �   	 �   �   
 � �  �  B  
   �*� �M+� �N66,� �� v-� �� m,� �6-� �6,� �:-� �:	� 2	� -� �	� �� � �6	� �6� "� �	� �d�� 	d������,� �� � 6-� �� � 6� � 	*+� L�� �� �� )� � -Y�� ��,-� L�    �   n     
 " * 2 : B L Y ` j v" }# �% �& �) �* �+ �, �- �. �/ �0 �1 �3 �4 �   z  * _ �  2 W �  : O	
  B G
 	   � �     � �   � �  
 � �   �    �   � D ,  � 4 ,  �   \ �   M M M M  � Y 
 M M M M � �  �   M M M M  @� @�  �   	     
 � �  �  i     �=>6*� �66� d*� �60� *9� #� � �Y� ��
h0d`=>� (� �� � 6� � � �Y� �� ������ � �Y� �� �    �   F   E F G H I J K -L 2M =O HP MQ UR YS _V rI xY �   R   S   h     � �     �    �    � ,   � ,   ~   �   ( 
�   M  � ,@ ��  � @ � �   	    A �   �   7     *+� 2,� 2� ��    �         �        � �   �   	 �  �     �   4      � Ú � � )�    �         �    @          "	# 8%	 � & 
