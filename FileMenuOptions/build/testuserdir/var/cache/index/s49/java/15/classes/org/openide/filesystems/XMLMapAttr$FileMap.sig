����   4 |
      *org/openide/filesystems/XMLMapAttr$FileMap <init> '(Lorg/openide/filesystems/FileObject;)V
  	 
   java/util/AbstractMap ()V	     fo $Lorg/openide/filesystems/FileObject;  .org/openide/filesystems/XMLMapAttr$AttrFileSet
     M(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/XMLMapAttr$1;)V  "org/openide/filesystems/FileObject  java/lang/String
     getAttribute &(Ljava/lang/String;)Ljava/lang/Object;  'java/lang/UnsupportedOperationException
  	 ! java/util/Map   # $ % get &(Ljava/lang/Object;)Ljava/lang/Object;
 ' ( ) * + java/lang/Object equals (Ljava/lang/Object;)Z
 ' - . / hashCode ()I 1 java/lang/StringBuilder
 0 	 4 FileMap@
 0 6 7 8 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 : ; < = > java/lang/System identityHashCode (Ljava/lang/Object;)I
 @ A B C D java/lang/Integer toHexString (I)Ljava/lang/String; F {fo=
 0 H 7 I -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 0 K 7 L (C)Ljava/lang/StringBuilder;
 0 N O P toString ()Ljava/lang/String;
  R S T put 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; Code LineNumberTable LocalVariableTable this ,Lorg/openide/filesystems/XMLMapAttr$FileMap; MethodParameters entrySet ()Ljava/util/Set; 	Signature N()Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>; key Ljava/lang/Object; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; remove Ljava/lang/String; value obj o hash I 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; x0 x1 &Lorg/openide/filesystems/XMLMapAttr$1; =Ljava/util/AbstractMap<Ljava/lang/String;Ljava/lang/Object;>; 
SourceFile XMLMapAttr.java InnerClasses t "org/openide/filesystems/XMLMapAttr FileMap AttrFileSet x $org/openide/filesystems/XMLMapAttr$1 z java/util/Map$Entry Entry 0           
     U   F     
*� *+� �    V      � � 	� W       
 X Y     
    Z        [ \  U   7     � Y*� � �    V      � W        X Y   ]    ^  $ %  U   l     "+� *� �+� � *� +� � � �    V      � � � W       " X Y     " _ `  a    @ ' Z    _   b     c    d %  U   <     � Y� �    V      � W        X Y      _ `  Z    _   b     c    S T  U   F     � Y� �    V      � W         X Y      _ e     f `  Z   	 _   f   b     c    * +  U   �     (+�  � �+�  � " M,� *� ,� &�+*� &�    V      � � 	� � � "� W        ( X Y     ( g `    h `  a   	 	�  ' Z    g   b     c    . /  U   z     <%h*� � *� � ,� `<�    V      � � � W        X Y     i j  a    �    �      b     c    O P  U   U     +� 0Y� 23� 5*� 9� ?� 5E� 5*� � G}� J� M�    V      � W       + X Y   b     c  A S k  U   4     
*+� ,� Q�    V      � W       
 X Y   Z   	 _  f  b     c       U   D     *+� �    V      � W         X Y      l      m n   ]    o p    q r   "   s u   s v  w     y   {	