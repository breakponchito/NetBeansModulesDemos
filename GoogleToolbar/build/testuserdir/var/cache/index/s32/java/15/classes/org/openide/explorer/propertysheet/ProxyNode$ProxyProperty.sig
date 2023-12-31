����   4 �
      org/openide/nodes/Node$Property getValueType ()Ljava/lang/Class;
   	 
 <init> (Ljava/lang/Class;)V	      :org/openide/explorer/propertysheet/ProxyNode$ProxyProperty original "[Lorg/openide/nodes/Node$Property;
     getName ()Ljava/lang/String;
     setName (Ljava/lang/String;)V
     getDisplayName
     setDisplayName
    !  getShortDescription
  # $  setShortDescription
  & ' ( canWrite ()Z
  * + ( canRead
  - . / getValue ()Ljava/lang/Object;
  1 2 3 equals '(Ljava/lang/Object;Ljava/lang/Object;)Z 5 Eorg/openide/explorer/propertysheet/ProxyNode$DifferentValuesException
 4 7 	 8 ()V
 : ; < 2 = java/lang/Object (Ljava/lang/Object;)Z
  ? @ A setValue (Ljava/lang/Object;)V
  C . D &(Ljava/lang/String;)Ljava/lang/Object;	 F G H I J java/lang/Boolean FALSE Ljava/lang/Boolean;
 F ; M netbeans.ps.logDifferentValues
 F O P Q 
getBoolean (Ljava/lang/String;)Z S ,org/openide/explorer/propertysheet/ProxyNode
 U  V java/lang/Class
 X Y Z [ \ java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 ^ _ ` a b java/util/logging/Level WARNING Ljava/util/logging/Level; d java/lang/StringBuilder
 c 7 g Different values in attribute 
 c i j k append -(Ljava/lang/String;)Ljava/lang/StringBuilder; m  for proxy property 
   p (
 c r j s -(Ljava/lang/Object;)Ljava/lang/StringBuilder; u ) first value= w 
 property 
 c y j z (I)Ljava/lang/StringBuilder;
 : | }  getClass  	 returns 
 c � �  toString
 4 � 	 
 X � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � @ � '(Ljava/lang/String;Ljava/lang/Object;)V
  � � � getPropertyEditor ()Ljava/beans/PropertyEditor;
  � � ( supportsDefaultValue
  � � 8 restoreDefaultValue � java/lang/StringBuffer � Proxy property for: 
 � �
 � � j � ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 � � j � (C)Ljava/lang/StringBuffer;
 � � %([Lorg/openide/nodes/Node$Property;)V Code LineNumberTable LocalVariableTable this <Lorg/openide/explorer/propertysheet/ProxyNode$ProxyProperty; MethodParameters i I StackMapTable o Ljava/lang/Object; 
Exceptions �  java/lang/IllegalAccessException � +java/lang/reflect/InvocationTargetException a b aIsNull Z bIsNull bothNull nullMismatch val � "java/lang/IllegalArgumentException attributeName Ljava/lang/String; value sb Ljava/lang/StringBuffer; 
SourceFile ProxyNode.java InnerClasses � org/openide/nodes/Node Property ProxyProperty DifferentValuesException 0             	 �  �   v     .*+2� � *+� *+2� � *+2� � *+2� � "�    �       
   # - �       . � �     .    �        ' (  �   u     !<*� �� *� 2� %� ������    �           �       � �    ! � �   �   
 � �   + (  �   u     !<*� �� *� 2� )� ������    �      $ % & $ * �       � �    ! � �   �   
 � �   . /  �   �     5*� 2� ,L=*� �� !+*� 2� ,� 0� � 4Y� 6�����+�    �      3 
4 5 %6 -4 39 �       ' � �    5 � �   
 + � �  �    �  : �  �     � �  2 3  �   �     D*� � =+� � >� � � 6� �� � 6� �*+� 9�    �   & 	  = 
> ? $@ )A +C 7D <E >G �   >    D � �     D � �  
 : � �   0 � �  $   � �  7  � �  �    
@� @� @� @�  �   	 �   �    @ A  �   u     =*� �� *� 2+� >����    �      R S R U �        � �     � �      � �  �   	 � �  �     � � � �    �    . D  �  ~     �*� 2+� BM� E,� K� ,�,� �>*� �� �� E*� 2� K� 
*� 2�,*� 2+� B� 9� �L� N� yR� T� W� ]� 4Y� cY� ef� h+� hl� h*� n� ho� h*� qt� h,� qv� h� xo� h*� 2� {� T� h~� h*� 2+� B� q� �� �� �����M,�    �   J   ^ ` d g h k (l 7n >p Or Ws }w �~ �� �s �� �k �� �   *   � � �    � � �     � � �   � � �  �    �  :� � ��  �    �    @ �  �   �     >*� �� *� 2+,� �����    �      � � � � �   *    � �     � �      � �     � �  �   	 � �  �   	 �   �    � �  �   4     
*� 2� ��    �      � �       
 � �    � (  �   u     !<*� �� *� 2� �� ������    �      � � � � � �       � �    ! � �   �   
 � �   � 8  �   j     <*� �� *� 2� �����    �      � � � � �       � �     � �   �   	 � �  �     � �  �   �   �     Z� �Y�� �L+*� n� �W+[� �W=*� �� ,+*� 2� {� T� �W*� �d� 
+,� �W����+]� �W+� ��    �   * 
  � 
� � � %� 6� A� H� N� U� �       2 � �    Z � �   
 P � �  �    �  �+�   �    � �      � �	  R �  4 R � 