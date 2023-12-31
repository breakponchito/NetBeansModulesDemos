����   4 �	      )org/openide/loaders/DataNode$LazyFilesSet 	obj_files Ljava/util/Set;
   	 
 lazyInitialization ()V
     <init> !(Lorg/openide/loaders/DataNode;)V	     this$0 Lorg/openide/loaders/DataNode;
     
 java/lang/Object
      org/openide/loaders/DataNode 
access$100 @(Lorg/openide/loaders/DataNode;)Lorg/openide/loaders/DataObject;
     ! " org/openide/loaders/DataObject files ()Ljava/util/Set; $ % & ' ( java/util/Set add (Ljava/lang/Object;)Z $ * + , addAll (Ljava/util/Collection;)Z $ . / 
 clear $ 1 2 ( contains $ 4 5 , containsAll 7 7org/openide/loaders/DataNode$LazyFilesSet$FilesIterator
 6 9  : .(Lorg/openide/loaders/DataNode$LazyFilesSet;)V $ < = ( remove $ ? @ , 	removeAll $ B C , 	retainAll $ E F G size ()I $ I J K toArray ()[Ljava/lang/Object; $ M J N (([Ljava/lang/Object;)[Ljava/lang/Object; $ P Q ( equals $ S T U toString ()Ljava/lang/String; $ W X G hashCode Z "org/openide/filesystems/FileObject
  \ ' ] '(Lorg/openide/filesystems/FileObject;)Z 	Signature 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; Code LineNumberTable LocalVariableTable this +Lorg/openide/loaders/DataNode$LazyFilesSet; MethodParameters o $Lorg/openide/filesystems/FileObject; c Ljava/util/Collection; LocalVariableTypeTable =Ljava/util/Collection<+Lorg/openide/filesystems/FileObject;>; @(Ljava/util/Collection<+Lorg/openide/filesystems/FileObject;>;)Z Ljava/lang/Object; isEmpty ()Z iterator ()Ljava/util/Iterator; <()Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; a [Ljava/lang/Object; [TFileObject; ;<FileObject:Ljava/lang/Object;>([TFileObject;)[TFileObject; obj StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; A(Lorg/openide/loaders/DataNode;Lorg/openide/loaders/DataNode$1;)V x0 x1  Lorg/openide/loaders/DataNode$1; access$1700 access$1800 <(Lorg/openide/loaders/DataNode$LazyFilesSet;)Ljava/util/Set; GLjava/lang/Object;Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; 
SourceFile DataNode.java InnerClasses LazyFilesSet FilesIterator � org/openide/loaders/DataNode$1      $      ^    _          `   4     
*+� *� �    a      � b       
 c d   e     " 	 
  `   =     **� � � � �    a   
   � � b        c d    ' ]  `   G     *� *� +� # �    a   
   � � b        c d      f g  e    f    + ,  `   Y     *� *� +� ) �    a   
   � � b        c d      h i  j        h k  e    h   ^    l  / 
  `   @     *� *� � - �    a      � � � b        c d    2 (  `   G     *� *� +� 0 �    a   
   � � b        c d      f m  e    f    5 ,  `   G     *� *� +� 3 �    a   
   � � b        c d      h i  e    h    n o  `   ,     �    a      � b        c d    p q  `   3     	� 6Y*� 8�    a      � b       	 c d   ^    r  = (  `   G     *� *� +� ; �    a   
   � � b        c d      f m  e    f    @ ,  `   G     *� *� +� > �    a   
   � � b        c d      h i  e    h    C ,  `   G     *� *� +� A �    a   
   � � b        c d      h i  e    h    F G  `   <     *� *� � D �    a   
   � � b        c d    J K  `   <     *� *� � H �    a   
   � � b        c d    J N  `   Y     *� *� +� L �    a   
   � � b        c d      s t  j        s u  e    s   ^    v  Q (  `   a     *� +� $� *� +� O � � �    a   
   � � b        c d      w m  x    @ e    w   y     z    T U  `   <     *� *� � R �    a   
   � � b        c d   y     z    X G  `   <     *� *� � V �    a   
   � � b        c d   y     z  A ' (  `   3     	*+� Y� [�    a      � b       	 c d   e    f    {  `   D     *+� �    a      � b         c d      |      } ~   :  `   /     *� �    a      � b        | d   � �  `   /     *� �    a      � b        | d    ^    � �    � �       �  6  �  �      