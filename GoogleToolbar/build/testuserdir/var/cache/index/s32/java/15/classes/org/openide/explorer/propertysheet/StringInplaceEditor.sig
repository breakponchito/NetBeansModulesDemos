����   4r
      javax/swing/JTextField <init> ()V  javax/swing/KeyStroke 
 java/awt/event/KeyEvent
      java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;
     getMenuShortcutKeyMask ()I
     getKeyStroke (II)Ljavax/swing/KeyStroke;
     (IIZ)Ljavax/swing/KeyStroke;	      ! 6org/openide/explorer/propertysheet/StringInplaceEditor strokes [Ljavax/swing/KeyStroke;	  # $ % editor Ljava/beans/PropertyEditor;
  ' ( ) setEditable (Z)V
  + , ) 
setEnabled .  
  0 1 2 setText (Ljava/lang/String;)V	  4 5 6 pm 2Lorg/openide/explorer/propertysheet/PropertyModel;	  8 9 : env 0Lorg/openide/explorer/propertysheet/PropertyEnv;	  < = > valFromEditor Ljava/lang/String;	  @ A > valFromTextField C 0org/openide/explorer/propertysheet/InplaceEditor E success
  G H 2 setActionCommand
 J K L M N ,org/openide/explorer/propertysheet/PropUtils supportsValueIncrement 3(Lorg/openide/explorer/propertysheet/PropertyEnv;)Z
 J P Q R wrapUpDownArrowActions ](Ljavax/swing/JComponent;Lorg/openide/explorer/propertysheet/IncrementPropertyValueSupport;)V
 J T U V checkEnabled b(Ljava/awt/Component;Ljava/beans/PropertyEditor;Lorg/openide/explorer/propertysheet/PropertyEnv;)Z X Y Z [ \ java/beans/PropertyEditor getTags ()[Ljava/lang/String; X ^ _ ` 	getAsText ()Ljava/lang/String; X b c d isPaintable ()Z
  f g  reset	  i j k added Z
  m n  	addNotify
  p q ` getText
 s t u v w java/lang/String equals (Ljava/lang/Object;)Z y Borg/openide/explorer/propertysheet/PropUtils$DifferentValuesEditor
 { | } ~  java/lang/Object getClass ()Ljava/lang/Class;
 � � � � � .org/openide/explorer/propertysheet/PropertyEnv getFeatureDescriptor  ()Ljava/beans/FeatureDescriptor; � initialEditValue
 � � � � � java/beans/FeatureDescriptor getValue &(Ljava/lang/String;)Ljava/lang/Object;
  � � � setSelectionStart (I)V
 s � �  length
  � � � setSelectionEnd X � � d supportsCustomEditor X � � � setValue (Ljava/lang/Object;)V
 { � � ` toString
 J � � � getScratchGraphics )(Ljava/awt/Component;)Ljava/awt/Graphics; � java/awt/Dimension
  � � � getFont ()Ljava/awt/Font;
 � � � � � java/awt/Graphics getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;
 � � � �  java/awt/FontMetrics 	getHeight
 � �  � (II)V
 � � � � stringWidth (Ljava/lang/String;)I	 � � � � width I
 J � �  getMinimumPropPanelWidth
 � � � � � java/lang/Math max (II)I	 � � � � height
 J � �  getMinimumPropPanelHeight
  � � � 	getBorder ()Ljavax/swing/border/Border; � � � � � javax/swing/border/Border getBorderInsets '(Ljava/awt/Component;)Ljava/awt/Insets;	 � � � � � java/awt/Insets right	 � � � � left	 � � � � top	 � � � � bottom
  � � � processMouseEvent (Ljava/awt/event/MouseEvent;)V
  � � � handleInitialInputEvent (Ljava/awt/event/InputEvent;)V
  � � � processFocusEvent (Ljava/awt/event/FocusEvent;)V
  � �  repaint
  � � d hasFocus
  � � � 	getInsets ()Ljava/awt/Insets;
 �  getColor ()Ljava/awt/Color;
  getBackground
 �	 setColor (Ljava/awt/Color;)V
   getWidth
  �
 � fillRect (IIII)V
 J  getTextMargin java/awt/Rectangle
  X 
paintValue *(Ljava/awt/Graphics;Ljava/awt/Rectangle;)V
   paintComponent (Ljava/awt/Graphics;)V
 "#$ setNextValue (Z)Z
 J&'( getNextValue E(Lorg/openide/explorer/propertysheet/PropertyEnv;Z)Ljava/lang/Object;
  �
 J+,- 
updateProp 5(Lorg/openide/explorer/propertysheet/InplaceEditor;)Z/ @org/openide/explorer/propertysheet/IncrementPropertyValueSupport Code LineNumberTable LocalVariableTable this 8Lorg/openide/explorer/propertysheet/StringInplaceEditor; clear #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; connect N(Ljava/beans/PropertyEditor;Lorg/openide/explorer/propertysheet/PropertyEnv;)V p editable StackMapTable MethodParameters getComponent ()Ljavax/swing/JComponent; ()Ljava/lang/Object; txt getKeyStrokes ()[Ljavax/swing/KeyStroke; getPropertyEditor ()Ljava/beans/PropertyEditor; e Ljava/awt/event/InputEvent; val o Ljava/lang/Object; supportsTextEntry getPropertyModel 4()Lorg/openide/explorer/propertysheet/PropertyModel; setPropertyModel 5(Lorg/openide/explorer/propertysheet/PropertyModel;)V isKnownComponent (Ljava/awt/Component;)Z c Ljava/awt/Component; getPreferredSize ()Ljava/awt/Dimension; i Ljava/awt/Insets; g Ljava/awt/Graphics; s fm Ljava/awt/FontMetrics; result Ljava/awt/Dimension; me Ljava/awt/event/MouseEvent; fe Ljava/awt/event/FocusEvent; ins Ljava/awt/Color;f java/awt/Colorh java/lang/Throwable incrementValue decrementValue 	increment 	nextValue isIncrementEnabled 
SourceFile StringInplaceEditor.java InnerClasses DifferentValuesEditor      B.   $ %    9 :    j k    = >    A >    5 6      !        0   �     C*� *� Y$� � @�� SY#� � @�� SY&� SY(� S� �   1   "    -  6  8  7  ; ' : 1 < B 62       C34   5  0   t     **� "*� &*� **-� /*� 3*� 7*� ;*� ?�   1   & 	   A  B 
 C  D  E  F  G $ H ) I2       *34  6    7   89 0   �     ]*D� F*,� 7,� I� **� O*� "+� �*+� "*+,� S>*� *+� W � +� ] � +� a � >*� &*� e*� h�   1   >    M  N  P  Q  T  U   X % Z , [ 1 _ L ` N c S d W e \ f2   *    ]34     ]: %    ] 9 :  , 1; k <    � -=   	:   9  6    7    n  0   <     
*� l*� h�   1       j  k 	 l2       
34  6    7   >? 0   ,     *�   1       p2       34  6    7    �@ 0   l     ,*� ?� #*� ?*� o� r� *� ;� -� *� ;�*� o�   1       u  x ' z2       ,34  <    "C { 6    7    g  0   �     s*� "� ] L*� "� x� -L*+� ;*� z� /*� 7� (*� 7� �� *� 7� ��� �� sM,� 
,L*+� ;+� -L*+� /**� o� ?*� �*+� �� ��   1   B    � 
 �  �  �  � 6 � F � J � L � Q � U � X � ] � e � j � r �2      F  � >    s34   
 iA > <   
 �  s96    7   BC 0   /     *� �   1       �2       34  6    7   DE 0   /     *� "�   1       �2       34  6    7    � � 0   y     *� oM,� �� *� �**� o� �� ��   1       �  �  �  �  �2        34     FG   A > <    �  s=   F    � � 0   �     O+� ;*� "� 3*� "� � � '*� "+� � *� "� ] M,� -M*,� /� *+� 
+� �� -� /�   1   & 	   �  � # � - � 2 � 5 � : � = � N �2      - H >    O34     OIJ <   # � 5 s� K �    {   s=   I  6    7   K d 0   ,     �   1       �2       34  6    7   LM 0   /     *� 3�   1       �2       34  6    7   NO 0   >     *+� 3�   1   
    �  �2       34      5 6 =    5  6    7   PQ 0   6     �   1       �2       34     RS =   R  6    7   TU 0  K     �*� �L*� oM,� �� � �Yd+*� �� �� �� ��+*� �� �N� �Y-,� �-� �� �:� �� ¸ ŵ �� ˸ θ ŵ �*� �� 9*� �*� � :Y� �� �� �``� �Y� �� �� �``� ��   1   6    �  � 
 �  � * � 3 � E � U � e � l � x � � � � �2   >  x *VW    �34    �XY  
 �Z >  3 r[\  E `]^ <    � * � s� w � �6    7    � � 0   d     *+� �*� h� *+� �*� h�   1       �  �  �  �  �2       34     _` <    =   _  6    7    � � 0   F     
*+� �*� ��   1       �  � 	 �2       
34     
ab =   a  6    7     0  M 
    �*� "� �*� �� �*� "� a � y*� �M+� �N+*��+*�
*��+-�� :+-��,Y� �`� �*� "+�Y,� �,� �*�
,� �,� �`d*�,� �,� �`d�� � *+��  $ : B   B D B   1   B       $ , : ?	 B I	 L X j � � � �2   *   ncW  $ iRd    �34     �XY <    � B   � �e g	� C=   X  6    7   i d 0   0     *�!�   1      2       34  6    7   j d 0   0     *�!�   1      2       34  6    7   #$ 0   �     &*� 7� I� �*� 7�%M,� �*,�)*�*�   1      " 
# % & ' ) !+2        &34     &k k   lJ <   	 �  {=   k   m d 0   ,     �   1      02       34  6    7   n   op   
  x Jq 