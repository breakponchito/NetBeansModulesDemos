����   4 e	       org/openide/nodes/BeanNode$PropL this$0 Lorg/openide/nodes/BeanNode;
  	 
   java/lang/Object <init> ()V
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
     getOldValue ()Ljava/lang/Object;
     getNewValue
      org/openide/nodes/BeanNode firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
  ! " # 
access$000 3(Lorg/openide/nodes/BeanNode;)Ljava/beans/BeanInfo; % & ' ( ) java/beans/BeanInfo getPropertyDescriptors "()[Ljava/beans/PropertyDescriptor;
 + , - . / java/beans/PropertyDescriptor isHidden ()Z
 + 1 2  getName
 4 5 6 7 8 java/lang/String equals (Ljava/lang/Object;)Z
  : ; < 
access$100 (Lorg/openide/nodes/BeanNode;)Z > name @ displayName
  B C D 
access$200 0(Lorg/openide/nodes/BeanNode;)Ljava/lang/String;
  1
  G H I setNameSilently (Ljava/lang/String;)V K !java/beans/PropertyChangeListener (Lorg/openide/nodes/BeanNode;)V Code LineNumberTable LocalVariableTable this "Lorg/openide/nodes/BeanNode$PropL; LocalVariableTypeTable 'Lorg/openide/nodes/BeanNode<TT;>.PropL; MethodParameters propertyChange #(Ljava/beans/PropertyChangeEvent;)V i I arr  [Ljava/beans/PropertyDescriptor; newName Ljava/lang/String; e  Ljava/beans/PropertyChangeEvent; StackMapTable Z 
SourceFile BeanNode.java InnerClasses PropL 0    J          L  M   J     
*+� *� �    N   
   ' 	( O       
 P Q   R       
 P S   T      U V  M  s     �+� M,� *� +� +� � � Q*� �  � $ N6-�� :-2� *� � ',-2� 0� 3� *� +� +� +� � � 	����*� � 9� 7,� ,=� 3� ,?� 3� !*� � AN-*� � E� 3� *� -� F�    N   F   + - 	. 0 )2 33 =4 @7 N8 a: d2 j? t@ �B �D �E �I O   >  , > W X  ) A Y Z  �  [ \    � P Q     � ] ^   � > \  R       � P S   _    �  4�  `#�  T    ]    a    b c   
    d 