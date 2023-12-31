����   4 a
      java/lang/Object <init> ()V	  	 
   org/openide/text/Annotation 
inDocument Z   java/beans/PropertyChangeSupport
     (Ljava/lang/Object;)V	     support "Ljava/beans/PropertyChangeSupport;	     attached Lorg/openide/text/Annotatable;
     detach
     ! " org/openide/text/Annotatable addAnnotation  (Lorg/openide/text/Annotation;)V
  $ % & notifyAttached !(Lorg/openide/text/Annotatable;)V
  ( ) " removeAnnotation
  + , & notifyDetached
  . / 0 addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  2 3 0 removePropertyChangeListener
  5 6 7 firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V 9 moveToFront PROP_SHORT_DESCRIPTION Ljava/lang/String; ConstantValue > shortDescription PROP_ANNOTATION_TYPE A annotationType PROP_MOVE_TO_FRONT Code LineNumberTable LocalVariableTable this Lorg/openide/text/Annotation; getAnnotationType ()Ljava/lang/String; getShortDescription attach anno StackMapTable MethodParameters toAnno old fromAnno getAttachedAnnotatable  ()Lorg/openide/text/Annotatable; l #Ljava/beans/PropertyChangeListener; propertyName oldValue Ljava/lang/Object; newValue isInDocument ()Z setInDocument (Z)V b 
SourceFile Annotation.java!       : ;  <    =  ? ;  <    @  B ;  <    8                     C   L     *� *� *� Y*� � �    D       F  D 	 G  H E        F G   H I   J I    K &  C   r     !*� � *� *+� *� *� **� � #�    D       Y  Z  ]  _  `   a E       ! F G     ! L   M     N    L    % &  C   5      �    D       j E        F G      O   N    O       C   p     *� � *� *� '*� L*� *+� *�    D       n  o  q  r  s  u E      
 P      F G   M      , &  C   5      �    D       ~ E        F G      Q   N    Q    R S  C   /     *� �    D       � E        F G    / 0  C   A     	*� +� -�    D   
    �  � E       	 F G     	 T U  N    T    3 0  C   A     	*� +� 1�    D   
    �  � E       	 F G     	 T U  N    T    6 7  C   W     *� +,-� 4�    D   
    � 
 � E   *     F G      V ;     W X     Y X  N    V   W   Y    9   C   :     *� 8� 4�    D   
    �  � E        F G    Z [  C   /     *� �    D       � E        F G    \ ]  C   >     *� �    D   
    �  � E        F G      ^   N    ^    _    `