����   4 2	       org/openide/loaders/FolderList$2 this$0  Lorg/openide/loaders/FolderList;	   	 
 
val$marked Ljava/util/HashSet;
      java/lang/Object <init> ()V
      java/util/HashSet add (Ljava/lang/Object;)Z  .org/openide/loaders/DataLoader$RecognizedFiles 6(Lorg/openide/loaders/FolderList;Ljava/util/HashSet;)V Code LineNumberTable LocalVariableTable this "Lorg/openide/loaders/FolderList$2; MethodParameters 	Signature markRecognized '(Lorg/openide/filesystems/FileObject;)V fo $Lorg/openide/filesystems/FileObject; StackMapTable 
SourceFile FolderList.java EnclosingMethod * org/openide/loaders/FolderList , - 
createBoth ;(Lorg/openide/loaders/FolderListListener;Z)Ljava/util/List; InnerClasses 0 org/openide/loaders/DataLoader RecognizedFiles        	 
                C     *+� *,� *� �          �                      	 � 	        ! "     S     +� *� +� W�          � � �                # $  %         #    &    ' (    ) + .             / 1	