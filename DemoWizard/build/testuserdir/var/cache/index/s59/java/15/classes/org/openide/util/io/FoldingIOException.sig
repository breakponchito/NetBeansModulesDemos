����   4 >
      java/lang/Throwable 
getMessage ()Ljava/lang/String;
  	 
   java/io/IOException <init> (Ljava/lang/String;)V	      &org/openide/util/io/FoldingIOException t Ljava/lang/Throwable;
     (Ljava/lang/Throwable;)V
     printStackTrace ()V
     (Ljava/io/PrintStream;)V
     (Ljava/io/PrintWriter;)V
  ! "  toString
  $ %  getLocalizedMessage serialVersionUID J ConstantValue�S�
�� Code LineNumberTable LocalVariableTable this (Lorg/openide/util/io/FoldingIOException; MethodParameters 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; *(Ljava/lang/Throwable;Ljava/lang/Object;)V nothing Ljava/lang/Object; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; s Ljava/io/PrintStream; Ljava/io/PrintWriter; 
SourceFile FoldingIOException.java !       & '  (    )           +   J     *+� � *+� �    ,       (  )  * -        . /         0       1     2     3      4  +   H     *+� �    ,   
    0  1 -         . /            5 6  0   	    5       +   6     *� � �    ,   
    6  7 -        . /   7     8       +   A     	*� +� �    ,   
    <  = -       	 . /     	 9 :  0    9   7     8       +   A     	*� +� �    ,   
    B  C -       	 . /     	 9 ;  0    9   7     8    "   +   2     *� �  �    ,       J -        . /   7     8    %   +   2     *� � #�    ,       R -        . /   7     8    <    =