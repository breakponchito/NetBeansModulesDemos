����   4 �
      java/util/Objects requireNonNull &(Ljava/lang/Object;)Ljava/lang/Object;
  	 
   )org/openide/loaders/MultiDataObject$Entry <init> L(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)V  java/lang/StringBuilder
     ()V
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
      $org/openide/loaders/FileEntry$Folder getFile &()Lorg/openide/filesystems/FileObject;
      ! "org/openide/filesystems/FileObject getExt ()Ljava/lang/String;
 # $ % & ' java/lang/String length ()I ) .
  + , ! toString .  
  0 1 ! getName
 3 4 5 6 7  org/openide/filesystems/FileUtil createFolder \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 3 9 : ; copyAttributes K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V
  = > 7 copy
 3 @ A B findFreeFileName \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;   D E F apply !()Ljava/util/function/BiFunction;
 3 H : I j(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/util/function/BiFunction;)V
  K L M isLocked ()Z
  O P Q takeLock $()Lorg/openide/filesystems/FileLock;
  S T U rename I(Lorg/openide/filesystems/FileLock;Ljava/lang/String;Ljava/lang/String;)V
 W X Y Z   org/openide/filesystems/FileLock releaseLock
  \ ] ^ delete %(Lorg/openide/filesystems/FileLock;)V ` org/openide/loaders/DataObject b template
 # d e f equals (Ljava/lang/Object;)Z
 3 h i F defaultAttributesTransformer k l m E n java/util/function/BiFunction 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; Code LineNumberTable LocalVariableTable this &Lorg/openide/loaders/FileEntry$Folder; obj %Lorg/openide/loaders/MultiDataObject; fo $Lorg/openide/filesystems/FileObject; MethodParameters f suffix Ljava/lang/String; add StackMapTable 
Exceptions � java/io/IOException move createFromTemplate name 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; locked Z lock "Lorg/openide/filesystems/FileLock; � java/lang/Throwable lambda$createFromTemplate$0 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; n v Ljava/lang/Object; � java/lang/Object 
SourceFile FileEntry.java BootstrapMethods �
 � � � � � "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; n �
  � � � � InnerClasses � #org/openide/loaders/MultiDataObject Entry � org/openide/loaders/FileEntry Folder � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup 1            o   N     *+Y� W,� �    p   
   ) * q         r s      t u     v w  x   	 t   v    > 7  o   �     g� Y� ,� *� � � "� � Y� (� *� � � � *� -� � *N+� Y� *� � /� -� � *� 2:*� � 8�    p      3 =5 [6 d8 q   4    g r s     g y w    g z {  = * | {  [  v w  }    t �     #   # ~      x   	 y   z    � 7  o   E     *+,� <�    p      B q         r s      y w     z {  ~      x   	 y   z    � 7  o   �     ,,� +*� � /*� � � ?M+,� 2N*� -� C  � G-�    p      L M O M R T *U q   *    , r s     , y w    , � {    v w  }     ~      x   	 y   �    T �  o   �     1*� J=*� NN*� -+� R� -� V� :� -� V�*� �  
      !     p   & 	  ^ _ 
a c d c %d )e ,f q   *    1 r s     1 � {   , � �  
 ' � �  }    �    # W  �� 	 ��  ~      x    �    ]   o   �     )*� J<*� NM*� ,� [� ,� V� N� ,� V-��  
      p   & 	  o p 
r t u t "u &v (w q        ) r s    $ � �  
  � �  }    �    W  ��  ��  ~     
 � �  o   Y     a*� c� � � g*+� j �    p      T q        � {      � �  }    I �  �    � �     �  � � � �      � �  � �  � � � 