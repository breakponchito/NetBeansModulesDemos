����   4 V	      .org/openide/filesystems/XMLMapAttr$AttrFileSet fo $Lorg/openide/filesystems/FileObject;
   	 
 <init> '(Lorg/openide/filesystems/FileObject;)V
    	  java/util/AbstractSet ()V  4org/openide/filesystems/XMLMapAttr$AttrFileSet$1Iter
   	  3(Lorg/openide/filesystems/XMLMapAttr$AttrFileSet;)V
      "org/openide/filesystems/FileObject getAttributes ()Ljava/util/Enumeration;       java/util/Enumeration hasMoreElements ()Z  " # $ nextElement ()Ljava/lang/Object; & 'java/lang/UnsupportedOperationException
 %  Code LineNumberTable LocalVariableTable this 0Lorg/openide/filesystems/XMLMapAttr$AttrFileSet; MethodParameters iterator ()Ljava/util/Iterator; 	Signature S()Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>; size ()I all Ljava/util/Enumeration; cnt I LocalVariableTypeTable +Ljava/util/Enumeration<Ljava/lang/String;>; StackMapTable remove (Ljava/lang/Object;)Z o Ljava/lang/Object; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; M(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/XMLMapAttr$1;)V x0 x1 &Lorg/openide/filesystems/XMLMapAttr$1; 
access$900 V(Lorg/openide/filesystems/XMLMapAttr$AttrFileSet;)Lorg/openide/filesystems/FileObject; TLjava/util/AbstractSet<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>; 
SourceFile XMLMapAttr.java InnerClasses L "org/openide/filesystems/XMLMapAttr AttrFileSet Iter P java/util/Map$Entry R java/util/Map Entry U $org/openide/filesystems/XMLMapAttr$1 0             	 
  (   F     
*� *+� �    )         	 *       
 + ,     
    -        . /  (   3     	� Y*� �    )       *       	 + ,   0    1  2 3  (   �     "*� � L=+�  � �+� ! W����    )        
      *        " + ,     4 5  
  6 7  8       4 9  :   
 � 
   ; <  (   <     � %Y� '�    )      % *        + ,      = >  -    =   ?     @    	 A  (   D     *+� �    )      � *         + ,      B      C D  E F  (   /     *� �    )      � *        B ,    0    G H    I J   "   K M     N   O Q S	 T    