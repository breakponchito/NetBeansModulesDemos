����   4 F
      java/lang/Object <init> ()V
  	 
   org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;	      )org/openide/loaders/DataNode$ObjectHandle obj $Lorg/openide/filesystems/FileObject;	     clone Z  java/io/IOException  File could not be restored
     (Ljava/lang/String;)V
     ! find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject;
  # $ % getNodeDelegate ()Lorg/openide/nodes/Node;
 ' ( ) * % org/openide/nodes/Node 	cloneNode , org/openide/nodes/Node$Handle serialVersionUID J ConstantValue[��.�. $(Lorg/openide/loaders/DataObject;Z)V Code LineNumberTable LocalVariableTable this +Lorg/openide/loaders/DataNode$ObjectHandle;  Lorg/openide/loaders/DataObject; MethodParameters getNode n Lorg/openide/nodes/Node; StackMapTable 
Exceptions 
SourceFile DataNode.java InnerClasses C org/openide/loaders/DataNode ObjectHandle Handle      +             - .  /    0    2  3   \     *� *+� � *� �    4       � � � 5         6 7       8        9   	        : %  3        ,*� � � Y� �*� � � "L*� � 
+� &� +�    4      � � � � 5       , 6 7     ; <  =    �  '@ ' >       ?    @ A      B D 
 + ' E	