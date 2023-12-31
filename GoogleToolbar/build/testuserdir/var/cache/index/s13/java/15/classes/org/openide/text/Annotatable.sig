����   4 s
      java/lang/Object <init> ()V	  	 
   org/openide/text/Annotatable deleted Z   java/beans/PropertyChangeSupport
     (Ljava/lang/Object;)V	     propertyChangeSupport "Ljava/beans/PropertyChangeSupport;  java/util/LinkedList
  
      java/util/Collections synchronizedList "(Ljava/util/List;)Ljava/util/List;	    ! " attachedAnnotations Ljava/util/List; $ % & ' ( java/util/List add (Ljava/lang/Object;)Z $ * + , size ()I . annotationCount
  0 1 2 firePropertyChange (Ljava/lang/String;II)V $ 4 5 ( remove
  7 8 9 addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  ; < 9 removePropertyChangeListener
  > 1 ? 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V 
  B 1 C (Ljava/lang/String;ZZ)V PROP_ANNOTATION_COUNT Ljava/lang/String; ConstantValue PROP_DELETED 	PROP_TEXT J text 	Signature /Ljava/util/List<Lorg/openide/text/Annotation;>; Code LineNumberTable LocalVariableTable this Lorg/openide/text/Annotatable; addAnnotation  (Lorg/openide/text/Annotation;)V count I anno Lorg/openide/text/Annotation; StackMapTable Z org/openide/text/Annotation \ java/lang/Throwable MethodParameters removeAnnotation getAnnotations ()Ljava/util/List; 2()Ljava/util/List<+Lorg/openide/text/Annotation;>; l #Ljava/beans/PropertyChangeListener; propertyName oldValue Ljava/lang/Object; newValue 	isDeleted ()Z getText ()Ljava/lang/String; 
setDeleted (Z)V o java/lang/String getAnnotationCount 
SourceFile Annotatable.java!       D E  F    -  G E  F    @  H E  F    I       ! "  K    L           M   ^     $*� *� *� Y*� � *� Y� � � �    N       :  ; 	 <  = # > O       $ P Q    R S  M   �     6*� YN�*� +� # W*� � ) =-ç 
:-��*� -d� /�    !   ! % !    N       D  E  F  G ( H 5 I O   *    T U    6 P Q     6 V W  (  T U  X   $ � !   Y    [�    Y   ]    V    ^ S  M   �     6*� YN�*� +� 3 W*� � ) =-ç 
:-��*� -`� /�    !   ! % !    N       O  P  Q  R ( U 5 V O   *    T U    6 P Q     6 V W  (  T U  X   $ � !   Y    [�    Y   ]    V     _ `  M   /     *� �    N       [ O        P Q   K    a  8 9  M   A     	*� +� 6�    N   
    a  b O       	 P Q     	 b c  ]    b    < 9  M   A     	*� +� :�    N   
    g  h O       	 P Q     	 b c  ]    b    1 ?  M   W     *� +,-� =�    N   
    l 
 m O   *     P Q      d E     e f     g f  ]    d   e   g    h i  M   /     *� �    N       s O        P Q   j k     l m  M   �     !*� � *� *� @� � � A�    N       �  �  �   � O       ! P Q     !    X   & �      n�       n ]        p ,  M   4     
*� � ) �    N       � O       
 P Q    q    r