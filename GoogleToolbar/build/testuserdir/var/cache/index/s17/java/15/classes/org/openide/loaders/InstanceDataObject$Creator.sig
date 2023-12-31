����   4 �  &org/openide/loaders/InstanceDataObject
      java/lang/Object <init> ()V	 
     .org/openide/loaders/InstanceDataObject$Creator mi  Lorg/openide/modules/ModuleInfo;	 
    folder  Lorg/openide/loaders/DataFolder;	 
    instance Ljava/lang/Object;	 
    name Ljava/lang/String;	 
    result (Lorg/openide/loaders/InstanceDataObject;
   ! " # $ org/openide/loaders/DataFolder getPrimaryFile &()Lorg/openide/filesystems/FileObject;
  & ' ( getClass ()Ljava/lang/Class;
 * + , - . java/lang/Class getName ()Ljava/lang/String;
 0 1 2 3 4 java/lang/String replace (CC)Ljava/lang/String; 6 settings
 8 9 : ; <  org/openide/filesystems/FileUtil findFreeFileName \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  > ? @ escape &(Ljava/lang/String;)Ljava/lang/String;
 B C D E F "org/openide/filesystems/FileObject getFileObject J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  H I @ escapeAndCut	 
 K L M create Z
  O P Q 
access$500 �(Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/Object;Lorg/openide/modules/ModuleInfo;)Lorg/openide/loaders/InstanceDataObject;	 
 S T U me 0Lorg/openide/loaders/InstanceDataObject$Creator;
 W X Y Z [ "org/openide/loaders/DataObjectPool getPOOL &()Lorg/openide/loaders/DataObjectPool;
 W ] ^ _ runAtomicActionSimple X(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileSystem$AtomicAction;)V
 a b c d e !org/openide/filesystems/FileEvent 	firedFrom 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)Z
 
  h /org/openide/filesystems/FileSystem$AtomicAction Code LineNumberTable LocalVariableTable this run escapedFileName newFile $Lorg/openide/filesystems/FileObject; fo filename StackMapTable 
Exceptions v java/io/IOException createInstanceDataObject �(Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/Object;Lorg/openide/modules/ModuleInfo;Z)Lorg/openide/loaders/InstanceDataObject; z org/openide/modules/ModuleInfo | java/lang/Throwable MethodParameters isFiredFromMe &(Lorg/openide/filesystems/FileEvent;)Z fe #Lorg/openide/filesystems/FileEvent; <clinit> 
SourceFile InstanceDataObject.java InnerClasses Creator � "org/openide/filesystems/FileSystem AtomicAction   
   g                            L M    T U        i   `     *� *� 	*� *� *� *� �    j        	     k        l U    m   i       o*� � L*� M,�  *� � %� ).-� /M+,5� 7M� /,� =N+-5� A:� ,� GM� -M*� J� +,5� 7M**� ,*� *� 	� N� �    j   :       # . 3 < A I K" R# Z' n( k   4  3 ' n   <  o p    o l U    g q p   b r   s    � . B 0�  0 B�  t     u 	 w x  i  7     q� RY:² R-� 	� R*� � R,� � R+� � R� J� V*� � R� \� R� 	� R� � R� � R� � R� :� R� ð:��   h i   i n i    j   >   . / 0 1 2 #3 +5 86 ?7 F8 M9 T: \; c< i= k   >  \       q       q      q      q      q L M  s    � i    0  y   { t     u }                L   	 ~   i   2     *� R� `�    j      A k        � �   }    �    �   i   #      � 
Y� f� R�    j        �    � �     
  � 
 g � �	