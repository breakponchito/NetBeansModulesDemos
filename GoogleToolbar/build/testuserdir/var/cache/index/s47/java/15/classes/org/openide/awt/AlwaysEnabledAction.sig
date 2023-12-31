����   4i  #org/openide/awt/AlwaysEnabledAction  preferencesKey    	 
 java/util/Map containsKey (Ljava/lang/Object;)Z  ,org/openide/awt/AlwaysEnabledAction$CheckBox
     <init> (Ljava/util/Map;)V
  
      javax/swing/AbstractAction ()V	     map Ljava/util/Map;	     context Lorg/openide/util/Lookup;	    ! " equals Ljava/lang/Object;	  $ % & parent %Lorg/openide/awt/AlwaysEnabledAction; ( #org/openide/util/ContextAwareAction ' * + , createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action;	  . / 0 delegate Ljava/awt/event/ActionListener; /  3 4 5 get &(Ljava/lang/Object;)Ljava/lang/Object; 7 java/awt/event/ActionListener 9 java/lang/NullPointerException ; java/lang/StringBuilder
 :  > No 'delegate' in 
 : @ A B append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 : D A E -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 : G H I toString ()Ljava/lang/String;
 8 K  L (Ljava/lang/String;)V
  N O P getDelegate !()Ljava/awt/event/ActionListener;
  R S T bindToContext Y(Ljava/awt/event/ActionListener;Lorg/openide/util/Lookup;)Ljava/awt/event/ActionListener; V javax/swing/Action	  X Y Z weakL #Ljava/beans/PropertyChangeListener;
 \ ] ^ _ ` org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener; U b c d addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V f Name
  h i j syncActionDelegateProperty )(Ljava/lang/String;Ljavax/swing/Action;)V
  l m n extractCommonAttribute 5(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object; U p q r getValue &(Ljava/lang/String;)Ljava/lang/Object; U t u v putValue '(Ljava/lang/String;Ljava/lang/Object;)V
 x y z ! 
 java/lang/Object	  | } ~ LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level; � RValue of property "{0}" of AlwaysEnabledAction is "{1}" but delegate {2} has "{3}"
 � � � � � java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V U � � � 	isEnabled ()Z	  � � � $assertionsDisabled Z
 � � � � � java/awt/EventQueue isDispatchThread � java/lang/AssertionError
 � 
 � � � �  org/openide/util/Utilities disabledActionBeep � enabled
  �
 � � � � � java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
  � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V	 � � � � TRUE Ljava/lang/Boolean; � asynchronous
 � y � %org/openide/awt/AlwaysEnabledAction$1
 � �  � D(Lorg/openide/awt/AlwaysEnabledAction;Ljava/awt/event/ActionEvent;)V
 � � � � � &org/openide/util/actions/ActionInvoker invokeAction H(Ljavax/swing/Action;Ljava/awt/event/ActionEvent;ZLjava/lang/Runnable;)V � iconBase
 � y � java/lang/String � 	SmallIcon
  p � displayName � MnemonicKey
 � � � � � org/openide/awt/Mnemonics findMnemonicAmpersand (Ljava/lang/String;)I
 � � � � charAt (I)C
 � � � � � java/lang/Integer (I)Ljava/lang/Integer; � javax/swing/Icon � java/net/URL
 � � � � � java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;
 � � � � getImage  (Ljava/net/URL;)Ljava/awt/Image; � java/awt/Image
 � � � � � org/openide/util/ImageUtilities 
image2Icon $(Ljava/awt/Image;)Ljavax/swing/Icon;
 � � � � loadImageIcon ,(Ljava/lang/String;Z)Ljavax/swing/ImageIcon; � noIconInMenu � instanceCreate � java/lang/RuntimeException	 � � � � WARNING  Could not get action attribute 
 � � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 x hashCode ()I	 AlwaysEnabledAction[
  p ]
 java/beans/PropertyChangeEvent 	getSource ()Ljava/lang/Object;
 I getPropertyName
 getOldValue
 getNewValue
   b(Ljava/util/Map;Lorg/openide/awt/AlwaysEnabledAction;Lorg/openide/util/Lookup;Ljava/lang/Object;)V
 !"# � java/lang/Class desiredAssertionStatus
 %& I getName
 �()* 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;, !java/beans/PropertyChangeListener PREFERENCES_NODE Ljava/lang/String; ConstantValue1 preferencesNode PREFERENCES_KEY PREFERENCES_DEFAULT5 preferencesDefault create 6(Ljava/util/Map;)Lorg/openide/awt/AlwaysEnabledAction; Code LineNumberTable LocalVariableTable m StackMapTable MethodParameters this a listener al actionDelegate Ljavax/swing/Action; propertyName value delegateValue #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; actionPerformed (Ljava/awt/event/ActionEvent;)V e Ljava/awt/event/ActionEvent; async ar Ljava/lang/Runnable; ret name o 
actionName vk I position icon x Ljava/lang/RuntimeException; fo other obj #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; actionContext <clinit> 
SourceFile AlwaysEnabledAction.java InnerClasses CheckBoxg ;org/openide/awt/AlwaysEnabledAction$DefaultIconToggleButton DefaultIconToggleButton     + '   } ~   -. /   0 2. /     3. /   4       % &    Y Z     / 0         ! "   � �    67 8   V     *�  � � Y*� � � Y*� �   9       I:       ;   <    G =   ;      8   a     *� *+� *� **� *� #�   9       T  U 	 V  W  X  Y:       > &     ;  =   ;      8   �     *� *+� *,� #*-� *� �   9       \  ] 	 ^  _  `  a:   4    > &     ;      % &           ! " =   ;   %      !   
 S T 8   a     +� *� '� *� '+� ) �*�   9       d  e  f  i:       ? 0        <    =   	?       O P 8  B     �*� -� �*� #� <*� 1� 2 M,� 6� !� 8Y� :Y� <=� ?*� � C� F� J�,� 6L� *� #� ML*+*� � Q� -*� -� U� ,*� -� UM*� W� **,� [� W,*� W� a *e,� g*� -�   9   B    m  o  p  q ! r ? t D u G v O x [ y e z m { t | } ~ � � � �:   4   *@ "  D A 0  m !BC  O ?A 0    �> &  <    � ?  x� �  6� - U�   i j 8   �     S*� +� kN,+� o :-� ?� ,+-� s � /-� w� &� {� �� xY+SY-SY*� -SYS� ��   9   "    � 	 �  �  �  � & � / � R �:   4    S> &     SD.    SBC  	 JE "   AF " <    � & x x+=   	D  B    � � 8   T     *� -� U� *� -� U� � ��   9       � 
 �  �:       > &  <    G    H   IJ 8   �     c� �� � �� � �Y� ��*� M� U� $*� M� U� � � � �*�*� �� �� ��� �*� �� 2 � �=� �Y*+� �N*+-� ��   9   * 
   �  �  � - � 0 � > � ? � Q � [ � b �:   *    c> &     cKL  Q M �  [ NO <    *=   K   q r 8   �     Q*� -� U� 3*� -� U+� o M,� ,��+� Ù *� -� Uƹ o � �*� +� kM,� ,� *+� Ȱ   9   * 
   � 
 �  �  �  � ! � 0 � 8 � : � C �:   *   "P "    Q> &     QQ.  C R " <    �  x� �  xD x=   Q  G    H    m n 8  �    /e+� Ù *ɹ 2 � �M,��+� Ù B*ɹ 2 � �M,� �,� �>� �,`� �6a� z� ��� װ�+� Ù Q*� � *�� 2 M,� ܙ ,� ܰ,� ޙ � �,� ޶ �M,� � ,� � �,� ę ,� �� ��+� Ù *� � *�� 2 ��+� Ù *� � *�� 2 �1+� Ú �+� Ú *� � 
*+� 2 �� !M� {� �� :Y� <�� ?+� ?� F,�� 
    �  2 � 3 > � ? ^ � _ � � � � � � � � � � � � � � � � 9   � "   � 	 �  �  �   � , � 1 � 3 � 8 � = � ? � H � V � Y � _ � h � y � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �- �:   R   S.  H TU  , 3S.  8 'VU  y =W "  XY   /Z     /Q. <   ; �  �� � � G x�  x� G x G x F x B �=   	Z  Q    8   P     *� *� *��*� ��   9        :       > &  <    G    H    ! 
 8   �     @+*� �+� � 3+� M**� � ,,� � *,� � �*� ,� � w� ��   9   & 	  
     # . < >:       +[ &    @> &     @\ " <    � $ @ � =   \  G    H    H I 8   J      � :Y� <� ?*e�
� C� ?� F�   9      :        > &  G    H    _] 8   a     +�*� -� *+�+�+�� ��   9        ! #:       > &     ^_ <    =   ^    + , 8   F     � Y*� *+*� ��   9      &:       > &     `  =   `   a  8   C      �� � � ��$�'� {�   9   
    =  A<    @ b   cd      e  �      f h 