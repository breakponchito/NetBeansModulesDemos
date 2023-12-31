����   4 n
      java/lang/Object <init> ()V   java/beans/PropertyChangeSupport
  
   (Ljava/lang/Object;)V	      org/openide/modules/ModuleInfo changeSupport "Ljava/beans/PropertyChangeSupport;  OpenIDE-Module-Name
     getLocalizedAttribute &(Ljava/lang/String;)Ljava/lang/Object;  java/lang/String
     getCodeNameBase ()Ljava/lang/String;  %OpenIDE-Module-Implementation-Version
  ! "  getAttribute $ OpenIDE-Module-Build-Version
  & '  getImplementationVersion ) java/lang/NullPointerException + cIf you see this stack trace, please attach to: http://www.netbeans.org/issues/show_bug.cgi?id=22379
 ( -  . (Ljava/lang/String;)V
  0 1 2 addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  4 5 2 removePropertyChangeListener
  7 8 9 firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V ; 'java/lang/UnsupportedOperationException = Must be overridden
 : - PROP_ENABLED Ljava/lang/String; ConstantValue C enabled Code LineNumberTable LocalVariableTable this  Lorg/openide/modules/ModuleInfo; getCodeNameRelease ()I getCodeName getDisplayName dn StackMapTable getSpecificationVersion ,()Lorg/openide/modules/SpecificationVersion; getBuildVersion bld 	isEnabled ()Z MethodParameters attr l #Ljava/beans/PropertyChangeListener; prop old Ljava/lang/Object; nue getDependencies ()Ljava/util/Set; 	Signature 3()Ljava/util/Set<Lorg/openide/modules/Dependency;>; owns (Ljava/lang/Class;)Z clazz (Ljava/lang/Class<*>;)Z getClassLoader ()Ljava/lang/ClassLoader; 
Exceptions i "java/lang/IllegalArgumentException getProvides ()[Ljava/lang/String; 
SourceFile ModuleInfo.java!       ? @  A    B           D   C     *� *� Y*� 	� �    E       +  (  , F        G H       I J   K     L   D   c     *� � L+� +�*� �    E       < 
 >  ?  B F        G H   
  M @  N    �   O P    '   D   4     
*�  � �    E       L F       
 G H    Q   D   a     *#�  � L+� 
*� %� +�    E   
    V 
 X F        G H   
  R @  N    �  @  S T   "   U    V      U    V    1 2  D   `     +� � (Y*� ,�*� +� /�    E       l  m  r  s F        G H      W X  N     U    W    5 2  D   A     	*� +� 3�    E   
    w  x F       	 G H     	 W X  U    W    8 9  D   W     *� +,-� 6�    E   
    ~ 
  F   *     G H      Y @     Z [     \ [  U    Y   Z   \   ] ^  _    ` a b  U    c   _    d  e f  D   4     
� :Y<� >�    E       � F       
 G H   g     h  j k  D   /     � �    E       � F        G H    l    m