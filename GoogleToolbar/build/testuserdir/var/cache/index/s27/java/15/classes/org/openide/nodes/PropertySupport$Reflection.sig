����   4"
      org/openide/nodes/Node$Property <init> (Ljava/lang/Class;)V
  	 
   java/lang/reflect/Method getModifiers ()I
      java/lang/reflect/Modifier isPublic (I)Z  "java/lang/IllegalArgumentException  java/lang/StringBuilder
     ()V  Cannot use a non-public getter 
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  !  " -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  $ % & toString ()Ljava/lang/String;
  (  ) (Ljava/lang/String;)V + Cannot use a non-public setter 
  - . & getName 0 ^(get|is|has) 2  
 4 5 6 7 8 java/lang/String replaceFirst 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 : ; < = > java/beans/Introspector decapitalize &(Ljava/lang/String;)Ljava/lang/String;
 @ A B C ) ,org/openide/nodes/PropertySupport$Reflection setName E ^set	 @ G H I instance Ljava/lang/Object;	 @ K L M setter Ljava/lang/reflect/Method;	 @ O P M getter
 R S T U V java/lang/Object getClass ()Ljava/lang/Class;
 @ X Y Z findAccessibleClass $(Ljava/lang/Class;)Ljava/lang/Class; \ java/lang/Class
 [ ^ _ ` 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 @ b  c Z(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
 @ e f g 
findGetter Q(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method; i set
 @ k l 8 firstLetterToUpperCase
 [ 	
 [ o p V getSuperclass
 4 r s  length
 4 u v w charAt (I)C
 y z { | } java/lang/Character toUpperCase (C)C
    � (C)Ljava/lang/StringBuilder;
 4 � � � 	substring (I)Ljava/lang/String; � get � java/lang/NoSuchMethodException	 � � � � � java/lang/Boolean TYPE Ljava/lang/Class; � is �  java/lang/IllegalAccessException
 � 
  � � V getDeclaringClass
 � � � � � java/beans/Beans getInstanceOf 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
 @ � � V getValueType
  � � � invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
 � � � � � !org/openide/nodes/PropertySupport cast 7(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
  � � � setAccessible (Z)V � Attempted to invoke method 
  ( �  from class 
 [ - �  on an instance of  � 	 Problem:
  � � & 
getMessage
  � � � 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;	 @ � � � propertyEditorClass
 [ � � � getDeclaredConstructor 3([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
 � � � � � java/lang/reflect/Constructor newInstance '([Ljava/lang/Object;)Ljava/lang/Object; � java/beans/PropertyEditor � &java/lang/ReflectiveOperationException � java/lang/SecurityException
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
  � � � getPropertyEditor ()Ljava/beans/PropertyEditor; 	Signature /Ljava/lang/Class<+Ljava/beans/PropertyEditor;>; Code LineNumberTable LocalVariableTable this .Lorg/openide/nodes/PropertySupport$Reflection; 	valueType LocalVariableTypeTable 3Lorg/openide/nodes/PropertySupport$Reflection<TT;>; Ljava/lang/Class<TT;>; StackMapTable MethodParameters _(Ljava/lang/Object;Ljava/lang/Class<TT;>;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V J(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V Ljava/lang/String; 
Exceptions O(Ljava/lang/Object;Ljava/lang/Class<TT;>;Ljava/lang/String;Ljava/lang/String;)V 8(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V property =(Ljava/lang/Object;Ljava/lang/Class<TT;>;Ljava/lang/String;)V sup clazz Ljava/lang/Class<-TC;>; Ljava/lang/Class<TC;>; E<C:Ljava/lang/Object;>(Ljava/lang/Class<TC;>;)Ljava/lang/Class<-TC;>; s pref e !Ljava/lang/NoSuchMethodException; nsme Ljava/lang/Class<*>; T(Ljava/lang/Object;Ljava/lang/Class<*>;Ljava/lang/String;)Ljava/lang/reflect/Method; canRead ()Z getValue ()Ljava/lang/Object; ex "Ljava/lang/IllegalAccessException; sb Ljava/lang/StringBuilder; iae $Ljava/lang/IllegalArgumentException; valideInstance	 java/lang/Throwable +java/lang/reflect/InvocationTargetException ()TT; canWrite #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setValue (Ljava/lang/Object;)V val TT; (TT;)V Ljava/lang/Exception; java/lang/Exception setPropertyEditorClass 2(Ljava/lang/Class<+Ljava/beans/PropertyEditor;>;)V <<T:Ljava/lang/Object;>Lorg/openide/nodes/Node$Property<TT;>; 
SourceFile PropertySupport.java InnerClasses org/openide/nodes/Node Property 
Reflection ! @      H I    L M    P M    � �  �    �    c  �  [     �*,� -� (-� � � � Y� Y� � -�  � #� '�� *� � � � Y� Y� *� �  � #� '�-� *-� ,/1� 3� 9� ?� � *� ,D1� 3� 9� ?*+� F*� J*-� N�    �   6    �  �  � . � > � Z � ^ � s � x � � � � � � � � � �   4    � � �     � H I    � � �    � P M    � L M  �       � � �     � � �  �    � .  @ R [    + �    H   �   P   L   �    �   �  �  A 
    ;*+,-� � +� Q� W-� [� ]� � +� Q� W� [Y,S� ]� a�    �       �  �  �  �  � 7 � : � �   4    ; � �     ; H I    ; � �    ; P �    ; L �  �       ; � �     ; � �  �   z �   R [ 4 4  R [�   R [ 4 4  R [ �   R [ 4 4  R [ �   R [ 4 4  R [   �     � �    H   �   P   L   �    �   �  �   � 
    %*+,+,-� d+� Q� W-h� j� [Y,S� ]� a�    �         
   !  $ �   *    % � �     % H I    % � �    % � �  �       % � �     % � �  �     � �    H   �   �   �    � 
 Y Z  �   �     *� m� � *�*� nL+� R�+� W�    �      
 
     �       � �     � �   �       � �     � �   �   	 �  [ �    �   �    � 
 l 8  �   �     ^*� q�      8                +�� Y� +� *� t� x� ~� #�� Y� +� *� t� x� ~*� �� � #�    �         "  <# �       ^ � �     ^ � �  �      �   	 �   �   
 f g  �       >*� Q� W,�� j� [� ]�:+� �� �N*� Q� W,�� j� [� ]�:�      � $ 8 9 �  �   2   - 
. - 0 1 2 !4 $: .; 5: 9= ;> �   >    � �  ;  � �    > H I     > � �    > � �  $  � �  �       > � �  �   # U ��   ��   R [ 4 �  � �     � �    H   �   �   �    �  � �  �   T     *� N� � �    �      F �        � �   �        � �   �    @  �   �  �     �*� N� � �Y� ��*� F*� N� �� �L*� �*� N+� R� �� ��M*� N� �*� �*� N+� R� �� �N*� N� �-�:*� N� ��M� Y�� �N-*� N� ,� W-�� W-*� N� �� �� W-�� W-+� Q� �� W-�� W-,� �� W� Y-� #� ',� �� �   1 2 � 3 O Y   Y [ Y    1 f  2 W f  Y f f   �   V   P Q T X 2Y 3[ ;] O_ W] Y_ c` fb gd qe }f �g �h �i �j �k �l �   4  3 3  q X  g b    � � �    � I  �       � � �   �   6 � "  @ R  �� &  @ R � �   @ R   �     � 
 �     �  �   T     *� J� � �    �      u �        � �   �        � �   �    @         �  F     e*� J� � �Y� ��*� F*� J� �� �M*� J,� RY+S� �W� 5N*� J� �*� J,� RY+S� �W*� J� �� :*� J� ���   / 2 � 3 L W   W Y W    �   6   � � � � /� 2� 3� ;� L� T� W� a� d� �   *  3 1    e � �     e I   G I  �       e � �     e  �   / � "  @ R R  �� $  @ R R � �  �     � 
 �      �           � �  �   �     '*� �� *� �� [� �� R� �� ̰L+� �*� ذ     �    �      �      � � � � "� �          ' � �   �       ' � �   �    ]          �   Z     *+� ��    �   
   � � �        � �      � �  �        � �      � �  �    �   �     �            	 @ �! 	