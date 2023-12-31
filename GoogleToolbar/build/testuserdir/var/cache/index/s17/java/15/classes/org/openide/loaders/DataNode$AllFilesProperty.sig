����   4 �	      -org/openide/loaders/DataNode$AllFilesProperty this$0 Lorg/openide/loaders/DataNode;  org/openide/loaders/DataObject 
 files  [Ljava/lang/String;  
PROP_files
     	getString &(Ljava/lang/String;)Ljava/lang/String;  
HINT_files
      *org/openide/nodes/PropertySupport$ReadOnly <init> J(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
       org/openide/loaders/DataNode 
access$100 @(Lorg/openide/loaders/DataNode;)Lorg/openide/loaders/DataObject;
  " 
 # ()Ljava/util/Set;
  % & ' getPrimaryFile &()Lorg/openide/filesystems/FileObject; ) * + , - java/util/Set size ()I / java/lang/String	  1 2 3 $assertionsDisabled Z ) 5 6 7 contains (Ljava/lang/Object;)Z 9 java/lang/AssertionError
 8 ;  < ()V ) > ? @ iterator ()Ljava/util/Iterator; B C D E F java/util/Iterator hasNext ()Z B H I J next ()Ljava/lang/Object; L "org/openide/filesystems/FileObject
  N O P name 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;
 R S T U V java/util/Arrays sort ([Ljava/lang/Object;II)V
 X Y Z [ P  org/openide/filesystems/FileUtil getFileDisplayName
  ] ^ _ getValue ()[Ljava/lang/String;
 a b c d F java/lang/Class desiredAssertionStatus !(Lorg/openide/loaders/DataNode;)V Code LineNumberTable LocalVariableTable this /Lorg/openide/loaders/DataNode$AllFilesProperty; MethodParameters $Lorg/openide/filesystems/FileObject; it Ljava/util/Iterator; Ljava/util/Set; primary res i I LocalVariableTypeTable :Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; StackMapTable fo 
Exceptions {  java/lang/IllegalAccessException } +java/lang/reflect/InvocationTargetException <clinit> 	Signature ALorg/openide/nodes/PropertySupport$ReadOnly<[Ljava/lang/String;>; 
SourceFile DataNode.java InnerClasses AllFilesProperty � !org/openide/nodes/PropertySupport ReadOnly 0      2 3          e  f   R     *+� *	� � � �    g      = > ? > @ h        i j   k      ^ _  f       |*� � � !L*� � � $M+� ( � .N� 0� +,� 4 � � 8Y� :�6+� = :� A � )� G � K:-,� � �*� MS���--�� Q-�    g   .   C D E  F 8H ;I MJ YK pL sN zO h   H  Y  I l  C 0 m n    | i j    q 
 o   f p l    \ q   ; A r s  t     C 0 m u   q 
 v  w   S � 8 ) K � 
 B�     ) K  B K  �    ) K  B K  � 	  O P  f   9     +� W�    g      S h        i j      x l  k    x  A ^ J  f   /     *� \�    g      ; h        i j   y     z |  ~ <  f   4      � `� � � 0�    g      ; w    @      � �    � �       �   � �	