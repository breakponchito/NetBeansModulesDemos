����   4 V	      $org/openide/filesystems/Repository$2 this$0 $Lorg/openide/filesystems/Repository;
  	 
   java/lang/Object <init> ()V
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;  
systemName
      java/lang/String equals (Ljava/lang/Object;)Z
     getOldValue ()Ljava/lang/Object;
    !  getNewValue
  # $  	getSource & "org/openide/filesystems/FileSystem
 % ( ) * isValid ()Z
 , - . / 0 "org/openide/filesystems/Repository 
access$000 ;(Lorg/openide/filesystems/Repository;)Ljava/util/Hashtable;
 2 3 4 5 6 java/util/Hashtable remove &(Ljava/lang/Object;)Ljava/lang/Object;
 2 8 9 : put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 % < = > setValid (Z)V @ !java/beans/PropertyChangeListener '(Lorg/openide/filesystems/Repository;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/Repository$2; MethodParameters propertyChange #(Ljava/beans/PropertyChangeEvent;)V ov Ljava/lang/String; nv fs $Lorg/openide/filesystems/FileSystem; ev  Ljava/beans/PropertyChangeEvent; StackMapTable 
SourceFile Repository.java EnclosingMethod InnerClasses      ?          A  B   >     
*+� *� �    C      ! D       
 E F     
    G    �  H I  B   �     N+� � � D+� � M+� � N+� "� %:� '� *� � +,� 1W*� � +-� 7W� ;�    C   & 	  $ & ' ( %* -, 90 G3 M5 D   4   9 J K   1 L K  % ( M N    N E F     N O P  Q    � 9   %�  G    O    R    S T    ,   U   
        