����   4 @
      java/lang/Object <init> ()V
  	 
   org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  "org/openide/awt/AcceleratorBinding
     lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	      'org/openide/awt/AcceleratorBinding$Iter result  Lorg/openide/util/Lookup$Result;
     resultChanged !(Lorg/openide/util/LookupEvent;)V
     ! " org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V	  $ % & all Ljava/util/Collection;
  ( ) * allInstances ()Ljava/util/Collection; , org/openide/util/LookupListener 	Signature FLorg/openide/util/Lookup$Result<Lorg/openide/awt/AcceleratorBinding;>; =Ljava/util/Collection<+Lorg/openide/awt/AcceleratorBinding;>; Code LineNumberTable LocalVariableTable this )Lorg/openide/awt/AcceleratorBinding$Iter; ?()Ljava/util/Collection<+Lorg/openide/awt/AcceleratorBinding;>; ev Lorg/openide/util/LookupEvent; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile AcceleratorBinding.java InnerClasses Result Iter 0    +      -    .  % &  -    /       0   X     *� *� � � *� *� *� �    1       M  N  O  P  Q 2        3 4    % *  0   /     *� #�    1       T 2        3 4   -    5     0   D     **� � '� #�    1   
    Y  Z 2        3 4      6 7  8    6   9     :    ;    < =       >	   ? 