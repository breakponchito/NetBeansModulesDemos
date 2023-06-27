����   4 f
      java/util/HashSet <init> ()V  org/openide/util/ChangeSupport
  
   (Ljava/lang/Object;)V	      /org/openide/loaders/DataObject$ModifiedRegistry cs  Lorg/openide/util/ChangeSupport;
     addChangeListener %(Ljavax/swing/event/ChangeListener;)V
     removeChangeListener
     add (Ljava/lang/Object;)Z	      REGLOG Ljava/util/logging/Logger;	 " # $ % & java/util/logging/Level FINER Ljava/util/logging/Level; ( $Data Object {0} modified, change {1} * java/lang/Object
 , - . / 0 java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
 2 3 4 5 6 java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
  8 9  
fireChange
  ; <  remove > &Data Object {0} unmodified, change {1} @ org/openide/loaders/DataObject
  B  C #(Lorg/openide/loaders/DataObject;)Z E 'org.openide.loaders.DataObject.Registry
 2 G H I 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; serialVersionUID J ConstantValue�I���  Code LineNumberTable LocalVariableTable this 1Lorg/openide/loaders/DataObject$ModifiedRegistry; chl "Ljavax/swing/event/ChangeListener; MethodParameters o  Lorg/openide/loaders/DataObject; result Z StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; Ljava/lang/Object; <clinit> 	Signature 5Ljava/util/HashSet<Lorg/openide/loaders/DataObject;>; 
SourceFile DataObject.java InnerClasses ModifiedRegistry 0       J K  L    M                  O   C     *� *� Y*� 	� �    P      z x z Q        R S       O   A     	*� +� �    P   
   � � Q       	 R S     	 T U  V    T      O   A     	*� +� �    P   
   � � Q       	 R S     	 T U  V    T    C  O   �     -*+� =� � !'� )Y+SY� +S� 1� 
*� � 7�    P      � �  � $� +� Q        - R S     - W X   ' Y Z  [    � + V    W   \     ]    <   O   �     -*+� :=� � !=� )Y+SY� +S� 1� 
*� � 7�    P      � �  � $� +� Q        - R S     - W ^   ' Y Z  [    � + V    W   \     ]  A    O   3     	*+� ?� A�    P      t Q       	 R S   V    W  \     ]    _   O   !      	D� F� �    P      v  `    a b    c d   
   ? e 