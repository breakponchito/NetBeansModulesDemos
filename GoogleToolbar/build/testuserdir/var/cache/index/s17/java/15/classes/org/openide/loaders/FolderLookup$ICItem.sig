����   4
      +org/openide/util/lookup/AbstractLookup$Pair <init> ()V	  	 
   'org/openide/loaders/FolderLookup$ICItem ic $Lorg/openide/cookies/InstanceCookie;	     obj  Lorg/openide/loaders/DataObject;	     rootName Ljava/lang/String;
      org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;	     fo $Lorg/openide/filesystems/FileObject;	    ! " ERR Ljava/util/logging/Logger;	 $ % & ' ( java/util/logging/Level FINE Ljava/util/logging/Level;
 * + , - . java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z 0 java/lang/StringBuilder
 /  3 New ICItem: 
 / 5 6 7 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 / 9 6 : -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 / < = > toString ()Ljava/lang/String;
 * @ A B fine (Ljava/lang/String;)V	  D E F 	DANGEROUS Ljava/lang/ThreadLocal;
 H I J K L java/lang/ThreadLocal get ()Ljava/lang/Object;
 H N O P set (Ljava/lang/Object;)V
  R S T find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; V /org/openide/loaders/DataObjectNotFoundException X 6org/openide/loaders/FolderLookup$ICItem$BrokenInstance Z No DataObject for 
 \ ] ^ _ > "org/openide/filesystems/FileObject getPath
 W a  b *(Ljava/lang/String;Ljava/lang/Exception;)V d "org/openide/cookies/InstanceCookie
  f g h 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; j No cookie for 
  l m  init o instanceOf: 
 q r s t > java/lang/Class getName v  obj:  x %org/openide/cookies/InstanceCookie$Of w z { | 
instanceOf (Ljava/lang/Class;)Z ~   of: 
 / � 6 � (Z)Ljava/lang/StringBuilder; c � � � instanceClass ()Ljava/lang/Class;
 q � � | isAssignableFrom � 	  plain:  �  java/lang/ClassNotFoundException
 � � � � �  org/openide/loaders/FolderLookup 
access$500 <(Ljava/lang/Exception;Lorg/openide/filesystems/FileObject;)V � java/io/IOException c � � L instanceCreate �   getInstance:  �  for  � java/lang/ref/WeakReference
 � �  P	  � � � ref Ljava/lang/ref/Reference;
 � � � � � java/lang/System identityHashCode (Ljava/lang/Object;)I � 	<broken:  � >
 � � � � 
access$600 F(Ljava/lang/String;Lorg/openide/loaders/DataObject;)Ljava/lang/String;
  � � � getNodeDelegate ()Lorg/openide/nodes/Node;
 � � � � > org/openide/nodes/Node getDisplayName
 � I � java/lang/ref/Reference � &org/openide/loaders/InstanceDataObject
 � � � � 	creatorOf (Ljava/lang/Object;)Z � java/lang/Object
 H 
 * � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; serialVersionUID J ConstantValue       
 	Signature BLjava/lang/ThreadLocal<Lorg/openide/loaders/FolderLookup$ICItem;>; -Ljava/lang/ref/Reference<Ljava/lang/Object;>; Y(Lorg/openide/loaders/DataObject;Ljava/lang/String;Lorg/openide/cookies/InstanceCookie;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/loaders/FolderLookup$ICItem; StackMapTable � java/lang/String MethodParameters donfe 1Lorg/openide/loaders/DataObjectNotFoundException; prev � java/lang/Throwable of 'Lorg/openide/cookies/InstanceCookie$Of; res Z ex "Ljava/lang/ClassNotFoundException; Ljava/io/IOException; clazz Ljava/lang/Class; getInstance Ljava/lang/Object; hashCode ()I equals i getId w getType <clinit> 
SourceFile FolderLookup.java InnerClasses � &org/openide/util/lookup/AbstractLookup Pair ICItem BrokenInstance � org/openide/nodes/Node$Cookie Cookie Of 0       � �  �    �  E F  �    �  ! "        �     �     � � �  �    �         �  �   �     A*� *-� *+� *,� *+� � � � #� )� � � /Y� 12� 4+� 8� ;� ?�    �      � � 	� � � � @� �   *    A � �     A      A      A    �    � @    � c   �              m   �  g     �*� � �� C� G� L� C*� M*� � ?**� � Q� � 1M*� WY� /Y� 1Y� 4*� � [� 4� ;,� `� � C+� M�**� c� e� c� *� � (*� WY� /Y� 1i� 4*� � [� 4� ;� `� � C+� M� N� C+� M-��    + . U  T �   \ � �    �   J   � � � �  � +� .� /� T� [� \� l� s� �� �� �� �� �� �      / - � �    � � �    � � �  �    � %     U-;I �	  { |  �  �     �*� k� � #� )� +� � /Y� 1n� 4+� p� 4u� 4*� � 8� ;� ?*� � w� :*� � wM,+� y >� � #� )� � � /Y� 1}� 4� � ;� ?�+*� � � � �=� � #� )� � � /Y� 1�� 4� � ;� ?�M,*� � �� M,*� � ��  y � � � y � � �  �   B     8  B" J# R$ w% y* �+ �, �- �. �1 �/ �0 �2 �   H  J / � �  R ' � �  � ' � �  �  � �  �  � �    � � �     � � �  �   & 8� > w� � 2�    q  �K � �    �    � L  �       d*� k*� � � L� � #� )� (� � /Y� 1�� 4+� 8�� 4*� � 8� ;� ?*� �Y+� �� �+�L+*� � �� L+*� � ��   L M �  L Y �  �   .   9 < = ?> K? M@ NA VD YB ZC bE �   *   ?  �  N  � �  Z  � �    d � �   �    � ? ��     �K �  � �  �   :     *� k*� � ��    �   
   J L �        � �    � �  �   �     '+� � !+� M,� k*� k*� ,� � � ��    �      Q R S T U %W �        � �    ' � �     '  �  �    � # @�   �        � >  �   u     6*� k*� � "� /Y� 1�� 4*� � [� 4�� 4� ;�*� *� � ��    �      ^ ` b *e �       6 � �   �    *  � >  �   t     5*� k*� � "� /Y� 1�� 4*� � [� 4�� 4� ;�*� � �� ��    �      j l n *q �       5 � �   �    *  � �  �   �     +*� �M,� ,� �+� �*� � �� *� � �+� ���    �      | } ~ � � )� �        + � �     +  �   & � �  �   	 �  � �        � �  �   u     *� k*� � � �L� Lİ     �    �  �      � � � � � � �        � �   �    N �C �   �   �   2      � HY� Ƴ C� p� ǳ �    �   
   � 
�  �    � �   *   � �	  � �  W  �  � � �	 w c 	