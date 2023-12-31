����   4 F	      ,org/openide/loaders/FilesSet$FilesComparator this$0 Lorg/openide/loaders/FilesSet;
  	 
   java/lang/Object <init> ()V
      org/openide/loaders/FilesSet 
access$000 D(Lorg/openide/loaders/FilesSet;)Lorg/openide/filesystems/FileObject;
      "org/openide/filesystems/FileObject 
getNameExt ()Ljava/lang/String;
      java/lang/String 	compareTo (Ljava/lang/String;)I
    ! " getFileSystem &()Lorg/openide/filesystems/FileSystem;
 $ % & '  "org/openide/filesystems/FileSystem getSystemName ) 1org/openide/filesystems/FileStateInvalidException
  + , - compare K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)I / java/util/Comparator !(Lorg/openide/loaders/FilesSet;)V Code LineNumberTable LocalVariableTable this .Lorg/openide/loaders/FilesSet$FilesComparator; MethodParameters fsie 3Lorg/openide/filesystems/FileStateInvalidException; f1 $Lorg/openide/filesystems/FileObject; f2 res I StackMapTable '(Ljava/lang/Object;Ljava/lang/Object;)I 	Signature NLjava/lang/Object;Ljava/util/Comparator<Lorg/openide/filesystems/FileObject;>; 
SourceFile FilesSet.java InnerClasses FilesComparator 0    .          0  1   4     
*+� *� �    2       � 3       
 4 5   6      , -  1       V+,� �+*� � � �,*� � � �+� ,� � >� &+� ,� � �+� � #,� � #� �:��  1 = P ( > O P (  2   B    �  �  �  �  �  � ! � - � 1 � < � > � F � L � P � R  T 3   4  R  7 8    V 4 5     V 9 :    V ; :  - ) < =  >    � Q ( 6   	 9   ;  A , ?  1   7     *+� ,� � *�    2       � 3        4 5   6   	 9  ;   @    A B    C D   
    E 