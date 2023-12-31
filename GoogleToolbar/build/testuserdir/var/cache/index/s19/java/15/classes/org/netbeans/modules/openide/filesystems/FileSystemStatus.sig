����   4 �
      java/lang/Object <init> ()V  	 
   java/util/Set iterator ()Ljava/util/Iterator;      java/util/Iterator hasNext ()Z     next ()Ljava/lang/Object;  "org/openide/filesystems/FileObject
      9org/netbeans/modules/openide/filesystems/FileSystemStatus annotateName 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;   !SystemFileSystem.localizingBundle
  " # $ getAttribute &(Ljava/lang/String;)Ljava/lang/Object; & java/lang/String
 ( ) * + , org/openide/util/BaseUtilities 	translate &(Ljava/lang/String;)Ljava/lang/String;
 . / 0 1 2 org/openide/util/NbBundle 	getBundle .(Ljava/lang/String;)Ljava/util/ResourceBundle;
  4 5 6 getPath ()Ljava/lang/String;
 8 9 : ; , java/util/ResourceBundle 	getString = "java/util/MissingResourceException
  ? @ A warningMessage J(Ljava/lang/String;Lorg/openide/filesystems/FileObject;)Ljava/lang/String;
 C D E F G org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;	  I J K LOG Ljava/util/logging/Logger;	 M N O P Q java/util/logging/Level INFO Ljava/util/logging/Level;
 S T U V W java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V Y displayName [ layers ] [Ljava/lang/Object;
 _ ` a b c java/util/Arrays toString '([Ljava/lang/Object;)Ljava/lang/String; e java/lang/StringBuilder
 d  h Cannot load 
 d j k l append -(Ljava/lang/String;)Ljava/lang/StringBuilder; n  for 
 d p k q -(Ljava/lang/Object;)Ljava/lang/StringBuilder; s  defined by 
 d u b 6
  w x y annotateIcon 7(Lorg/openide/filesystems/FileObject;I)Ljava/awt/Image; { java/beans/BeanInfo } SystemFileSystem.icon  SystemFileSystem.icon32 � java/net/URL
 � � � � � java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;
 � � � � getImage  (Ljava/net/URL;)Ljava/awt/Image; � java/awt/Image � 
Attribute  �  on  � % expected to be a URL or Image; was: 
 S � � � warning (Ljava/lang/String;)V � iconBase
 � � � � � org/openide/util/ImageUtilities 	loadImage %(Ljava/lang/String;Z)Ljava/awt/Image; � _32
  � � � insertBeforeSuffix 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; �  
 % � � � lastIndexOf (I)I
 % � � � 	substring (II)Ljava/lang/String;
 % � � � length ()I
 � � � � 6 java/lang/Class getName
 S � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; � 'org/openide/filesystems/StatusDecorator � &org/openide/filesystems/ImageDecorator Code LineNumberTable LocalVariableTable this ;Lorg/netbeans/modules/openide/filesystems/FileSystemStatus; 5(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String; Ljava/lang/String; fo $Lorg/openide/filesystems/FileObject; s files Ljava/util/Set; LocalVariableTypeTable 6Ljava/util/Set<+Lorg/openide/filesystems/FileObject;>; StackMapTable MethodParameters 	Signature \(Ljava/lang/String;Ljava/util/Set<+Lorg/openide/filesystems/FileObject;>;)Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; b Ljava/util/ResourceBundle; ex $Ljava/util/MissingResourceException; 
bundleName name by Ljava/lang/Object; 2(Ljava/awt/Image;ILjava/util/Set;)Ljava/awt/Image; img Ljava/awt/Image; im type I Y(Ljava/awt/Image;ILjava/util/Set<+Lorg/openide/filesystems/FileObject;>;)Ljava/awt/Image; annotateNameHtml value attr base path toInsert withoutSuffix suffix <clinit> 
SourceFile FileSystemStatus.java )Lorg/openide/util/lookup/ServiceProvider; service )Lorg/openide/filesystems/StatusDecorator; 1    � �   J K   	     �   /     *� �    �       0 �        � �     �  �   �     0,�  N-�  � !-�  � :*� :� ����+�    �       8  : # ; ( < + > . ? �   4  #  Y �    � �    0 � �     0 � �    0 � �  �       0 � �  �    �  #�  �   	 �   �   �    � �     �       �       G+� !� %M,� 2,� 'M,� -N-+� 3� 7�:� N-*,+� >� BW� H� L-� R+X� !� %�     ! <    & < ! # & <  �   .    C 
 D  F  G  I ! J # Q & M ' N 2 O = S �   4    � �  '  � �    G � �     G � �  
 = � �  �   , � !    % 8  <�     %  < �    �    @ A  �   �     <,Z� !N-� \� -� \� ^N� dY� fg� i+� im� i,� or� i-� o� t�    �       W  X  Y  [ �   *    < � �     < � �    < � �   5 � �  �    �   �   	 �   �    x �  �   �     4-�  :�  � #�  � :*� v:� ����+�    �       _  ` ' a , b / d 2 e �   >  '  � �    � �    4 � �     4 � �    4 � �    4 � �  �       4 � �  �    �  &�  �    �   �   �   �    �  � �  �   R     �    �       j �         � �      � �     � �  �        � �  �   	 �   �   �    � �     �    x y  �  k     �N� 	|N� � ~N-� ]+-� !:� Q� �� � �� �� ��� �� 	� ��� H� dY� f�� i-� i�� i+� o�� i� o� t� �+�� !� %:� !� 
� ��� *�� �� ���    �   R    n  o  p  q  r  t  u   v % w - x 9 y A { G } s � ~ � � � � � � � � � � � �   >    S � �    � � �     � � �    � � �   � � �  ~ % � �  �    �  %� # � +�  % �   	 �   �    � �  �   �     C+N�:+.� �� ++.� �� �N++.� �+� �� �:� dY� f-� i,� i� i� t�    �       �  �  �  �  � + � �   4    C � �     C � �    C � �   A � �   = � �  �    � + % % �   	 �   �    �   �   $      � �� �� H�    �       1  �    � �     �  �c �