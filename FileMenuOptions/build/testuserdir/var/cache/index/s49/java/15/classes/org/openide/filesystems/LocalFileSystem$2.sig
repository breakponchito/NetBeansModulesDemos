����   4 F	      )org/openide/filesystems/LocalFileSystem$2 this$0 )Lorg/openide/filesystems/LocalFileSystem;
  	 
   java/lang/Object <init> ()V	      'org/openide/filesystems/LocalFileSystem attr 1Lorg/openide/filesystems/AbstractFileSystem$Attr;      /org/openide/filesystems/AbstractFileSystem$Attr getClass ()Ljava/lang/Class;  )org/openide/filesystems/DefaultAttributes  ,org/openide/filesystems/LocalFileSystem$Impl
     ,(Lorg/openide/filesystems/LocalFileSystem;)V ! 2org/openide/filesystems/LocalFileSystem$InnerAttrs
   #  $ �(Lorg/openide/filesystems/LocalFileSystem;Lorg/openide/filesystems/AbstractFileSystem$Info;Lorg/openide/filesystems/AbstractFileSystem$Change;Lorg/openide/filesystems/AbstractFileSystem$List;)V & java/io/ObjectInputValidation Code LineNumberTable LocalVariableTable this +Lorg/openide/filesystems/LocalFileSystem$2; MethodParameters validateObject impl .Lorg/openide/filesystems/LocalFileSystem$Impl; StackMapTable 
SourceFile LocalFileSystem.java EnclosingMethod 5 6 
readObject (Ljava/io/ObjectInputStream;)V InnerClasses 9 *org/openide/filesystems/AbstractFileSystem Attr Impl 
InnerAttrs > /org/openide/filesystems/AbstractFileSystem$Info Info A 1org/openide/filesystems/AbstractFileSystem$Change Change D /org/openide/filesystems/AbstractFileSystem$List List      %            '   >     
*+� *� �    (      � )       
 * +     
    ,    �  -   '   |     3*� � �  � $� Y*� � L*� �  Y*� +++� "� �    (      � � � 2� )       . /    3 * +   0    2  1    2 3     4 7   :          8 :	   ; 	    < 
 = 8 ?	 @ 8 B	 C 8 E	