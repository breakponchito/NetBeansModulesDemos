����   4 f  'org/openide/util/lookup/InstanceContent
     <init> ()V
  	 
   .org/openide/text/DataEditorSupport$DOEnvLookup L(Lorg/openide/loaders/DataObject;Lorg/openide/util/lookup/InstanceContent;)V
      &org/openide/util/lookup/AbstractLookup 3(Lorg/openide/util/lookup/AbstractLookup$Content;)V	     ic )Lorg/openide/util/lookup/InstanceContent;	     dobj  Lorg/openide/loaders/DataObject;
      org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
   ! " # $ org/openide/loaders/DataObject addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  & '  updateLookup ) java/lang/Object
   + , - getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 / 0 1 2 3 java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
  5 6 7 set L(Ljava/util/Collection;Lorg/openide/util/lookup/InstanceContent$Convertor;)V
 9 : ; < = java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String; ? primaryFile
 A B C D E java/lang/String equals (Ljava/lang/Object;)Z G !java/beans/PropertyChangeListener serialVersionUID J ConstantValue      M #(Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/text/DataEditorSupport$DOEnvLookup; MethodParameters #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; propName Ljava/lang/String; StackMapTable 
SourceFile DataEditorSupport.java InnerClasses ^ "org/openide/text/DataEditorSupport DOEnvLookup a .org/openide/util/lookup/AbstractLookup$Content Content d 1org/openide/util/lookup/InstanceContent$Convertor 	Convertor      F   H I  J    K              M  N   E     *+� Y� � �    O   
     P        Q R         S           N   o     *,� *,� *+� +*+� � *� %�    O      	 
 
    P         Q R               S   	        '   N   O     !*� � (Y*� SY*� � *S� .� 4�    O   
      P       ! Q R     T  N   p     +� 8M,� ,>� @� *� %�    O          P         Q R      U V    W X  Y   	 �  A S    U    Z    [ \      ] _ 
 `  b 	 c  e	