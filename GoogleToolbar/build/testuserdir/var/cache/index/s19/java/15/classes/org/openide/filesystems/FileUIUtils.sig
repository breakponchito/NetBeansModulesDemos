����   4 +
      java/lang/Object <init> ()V
  	 
   "org/openide/filesystems/FileSystem getDecorator +()Lorg/openide/filesystems/StatusDecorator;  &org/openide/filesystems/ImageDecorator	      #org/openide/filesystems/FileUIUtils DUMMY_DECORATOR (Lorg/openide/filesystems/ImageDecorator;  %org/openide/filesystems/FileUIUtils$1
   Code LineNumberTable LocalVariableTable this %Lorg/openide/filesystems/FileUIUtils; getImageDecorator N(Lorg/openide/filesystems/FileSystem;)Lorg/openide/filesystems/ImageDecorator; f $Lorg/openide/filesystems/FileSystem; deco )Lorg/openide/filesystems/StatusDecorator; StackMapTable % 'org/openide/filesystems/StatusDecorator MethodParameters <clinit> 
SourceFile FileUIUtils.java InnerClasses 1                   /     *� �           %             	       c     *� L+� � +� �� �           0  1  2  5                ! "  #    �  $ &        '      #      � Y� � �             (    ) *   
        