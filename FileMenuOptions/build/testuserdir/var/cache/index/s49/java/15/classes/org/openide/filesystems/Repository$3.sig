����   4 8	      $org/openide/filesystems/Repository$3 val$lkp Lorg/openide/util/Lookup;
  	 
   java/lang/Object <init> ()V  "org/openide/filesystems/Repository
      org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object;  )org/openide/filesystems/Repository$MainFS
  	
     '(Lorg/openide/filesystems/FileSystem;)V
     call &()Lorg/openide/filesystems/Repository;   java/util/concurrent/Callable (Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/Repository$3; MethodParameters 	Signature r $Lorg/openide/filesystems/Repository; StackMapTable 
Exceptions . java/lang/Exception ()Ljava/lang/Object; WLjava/lang/Object;Ljava/util/concurrent/Callable<Lorg/openide/filesystems/Repository;>; 
SourceFile Repository.java EnclosingMethod 5  
getDefault InnerClasses MainFS                !  "   4     
*+� *� �    #      e $       
 % &   '     (         "   p     "*� � � L+� � Y� Y� � L+�    #      g h j  l $       " % &     ) *  +    �    ,     -A  /  "   /     *� �    #      e $        % &   ,     -  (    0 1    2 3     4 6              7 