����   4 5	      org/openide/xml/XMLUtil$1$1 this$0 Lorg/openide/xml/XMLUtil$1;
  	 
   java/lang/ClassLoader <init> (Ljava/lang/ClassLoader;)V  META-INF/services/
      java/lang/String 
startsWith (Ljava/lang/String;)Z  java/io/ByteArrayInputStream
     ([B)V
     getResourceAsStream )(Ljava/lang/String;)Ljava/io/InputStream; 5(Lorg/openide/xml/XMLUtil$1;Ljava/lang/ClassLoader;)V Code LineNumberTable LocalVariableTable this Lorg/openide/xml/XMLUtil$1$1; parent Ljava/lang/ClassLoader; MethodParameters name Ljava/lang/String; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile XMLUtil.java EnclosingMethod 0 org/openide/xml/XMLUtil$1 2 3 run ()Ljava/lang/ClassLoader; InnerClasses                     I     *+� *,� �           � !         " #            $ %  &   	 � $          _     +� � � Y�� �*+� �           � 	� � !        " #      ' (  )     &    '   *     +    ,    - .    / 1 4     /             