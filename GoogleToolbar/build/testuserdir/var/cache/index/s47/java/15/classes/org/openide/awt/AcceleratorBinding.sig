����   4 c
      java/lang/Object <init> ()V	  	 
   "org/openide/awt/AcceleratorBinding $assertionsDisabled Z
     getClass ()Ljava/lang/Class;
      java/lang/Class getName ()Ljava/lang/String;  1org.netbeans.core.NbKeymap$AcceleratorBindingImpl
      java/lang/String equals (Ljava/lang/Object;)Z   java/lang/AssertionError
  "  # (Ljava/lang/Object;)V	  % & ' ALL )Lorg/openide/awt/AcceleratorBinding$Iter;
 ) * + , - 'org/openide/awt/AcceleratorBinding$Iter all ()Ljava/util/Collection; / 0 1 2 3 java/util/Collection iterator ()Ljava/util/Iterator; 5 6 7 8 9 java/util/Iterator hasNext ()Z 5 ; < = next ()Ljava/lang/Object;
  ? @ A keyStrokeForAction Q(Ljavax/swing/Action;Lorg/openide/filesystems/FileObject;)Ljavax/swing/KeyStroke; C javax/swing/Action E AcceleratorKey B G H I putValue '(Ljava/lang/String;Ljava/lang/Object;)V
  K L 9 desiredAssertionStatus
 )  Code LineNumberTable LocalVariableTable this $Lorg/openide/awt/AcceleratorBinding; StackMapTable MethodParameters action definingFile setAccelerator ;(Ljavax/swing/Action;Lorg/openide/filesystems/FileObject;)V key Ljavax/swing/KeyStroke; bnd Ljavax/swing/Action; $Lorg/openide/filesystems/FileObject; <clinit> 
SourceFile AcceleratorBinding.java InnerClasses Iter!       & '            N   g     #*� � � *� � � � � Y*� !��    O       ,  - " . P       # Q R   S    � "     @ A  T   	 U   V   	 W X  N   �     =� $� (� . M,� 4 � *,� : � N-*+� >:� *D� F � ��ӱ    O       @  A ' B , C 6 D 9 F < G P   *  '  Y Z    [ R    = U \     = V ]  S    �  5,�  T   	 U   V    ^   N   B      � J� � � � )Y� M� $�    O   
    &  ' S    @  _    ` a   
  )  b 