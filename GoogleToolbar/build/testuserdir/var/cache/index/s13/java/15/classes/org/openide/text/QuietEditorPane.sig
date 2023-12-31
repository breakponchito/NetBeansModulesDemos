����   4^   org/openide/text/QuietEditorPane	     LOG Ljava/util/logging/Logger;   java/awt/datatransfer/DataFlavor 
 Atext/active_editor_flavor;class=org.openide.text.ActiveEditorDrop  Active Editor Flavor
      java/lang/Class getClassLoader ()Ljava/lang/ClassLoader;
     <init> >(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V   java/lang/ClassNotFoundException  java/lang/AssertionError
     (Ljava/lang/Object;)V
    !  " javax/swing/JEditorPane ()V	  $ % & lastPosition I	  ( ) & working
  + , - getFont ()Ljava/awt/Font;
  / 0 1 setFontHeightWidth (Ljava/awt/Font;)V
  3 4 5 getAccessibleContext )()Ljavax/accessibility/AccessibleContext; 7  org/openide/text/CloneableEditor 9 #ACS_CloneableEditor_QuietEditorPane
  ; < = getName ()Ljava/lang/String;
 ? @ A B C org/openide/util/NbBundle 
getMessage I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
 E F G H I %javax/accessibility/AccessibleContext setAccessibleName (Ljava/lang/String;)V K $ACSD_CloneableEditor_QuietEditorPane
 E M N I setAccessibleDescription
  P Q 1 setFont
  S T U getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;
 W X Y Z [ java/awt/FontMetrics 	getHeight ()I	  ] ^ & 
fontHeight
 W ` a b 	charWidth (C)I	  d a & f "java/lang/IllegalArgumentException h java/lang/StringBuilder
 g   k Invalid orientation: 
 g m n o append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 g q n r (I)Ljava/lang/StringBuilder;
 g t u = toString
 e w  I
  y z { setDocument (Ljavax/swing/text/Document;)V
  } ~  getTransferHandler ()Ljavax/swing/TransferHandler; � :org/openide/text/QuietEditorPane$DelegatingTransferHandler
 � �  � B(Lorg/openide/text/QuietEditorPane;Ljavax/swing/TransferHandler;)V
  � � � setTransferHandler  (Ljavax/swing/TransferHandler;)V
  � � � getDropTarget ()Ljava/awt/dnd/DropTarget; � 5org/openide/text/QuietEditorPane$DelegatingDropTarget
 � �  � >(Lorg/openide/text/QuietEditorPane;Ljava/awt/dnd/DropTarget;)V
  � � � setDropTarget (Ljava/awt/dnd/DropTarget;)V	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z � QEP@
 � � � � � java/lang/System identityHashCode (Ljava/lang/Object;)I
 � � � � � java/lang/Integer toHexString (I)Ljava/lang/String; �  firing is  � OFF � ON
 � � � I fine	  � � � EXPENSIVE_PROPERTIES Ljava/util/Set; � � � � � java/util/Set contains (Ljava/lang/Object;)Z � 	 firing ' � ' change event; firing is 
  � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V �  suppressed ' � ' change event; firing is OFF
  � � � getCaret ()Ljavax/swing/text/Caret; � � � � [ javax/swing/text/Caret getDot
  � � � setCaret (Ljavax/swing/text/Caret;)V
  � � " 
revalidate
  � � " repaint
  � � " removeNotify
  � � � getInputContext ()Ljava/awt/im/InputContext; � "org/openide/text/QuietEditorPane$1
 � �  � ?(Lorg/openide/text/QuietEditorPane;Ljava/awt/im/InputContext;)V
 � � � � � javax/swing/SwingUtilities isEventDispatchThread ()Z � � � � " java/lang/Runnable run
 � � � � invokeLater (Ljava/lang/Runnable;)V
  ;
 � �  	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; java/util/HashSet java/lang/String document	 	editorKit keymap
 java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
  (Ljava/util/Collection;)V FIRE ConstantValue    PAINT    ALL    	Signature #Ljava/util/Set<Ljava/lang/String;>; constructActiveEditorDropFlavor $()Ljava/awt/datatransfer/DataFlavor; Code LineNumberTable LocalVariableTable e "Ljava/lang/ClassNotFoundException; StackMapTable this "Lorg/openide/text/QuietEditorPane; ctx 'Ljavax/accessibility/AccessibleContext; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; font Ljava/awt/Font; MethodParameters metrics Ljava/awt/FontMetrics; getScrollableUnitIncrement (Ljava/awt/Rectangle;II)I visibleRect Ljava/awt/Rectangle; orientation 	direction dth <Lorg/openide/text/QuietEditorPane$DelegatingTransferHandler; dt Ljava/awt/dnd/DropTarget; thn Ljavax/swing/TransferHandler; currDt doc Ljavax/swing/text/Document;A javax/swing/TransferHandler 
setWorking (I)V x s Ljava/lang/String; val1 Ljava/lang/Object; val2K java/lang/Object oldCaret Ljavax/swing/text/Caret; caret getLastPosition currentInputContext Ljava/awt/im/InputContext; w Ljava/lang/Runnable;U java/awt/im/InputContext 
access$000 ()Ljava/util/logging/Logger; <clinit> 
SourceFile QuietEditorPane.java InnerClasses DelegatingTransferHandler DelegatingDropTarget 0     	       &      &      &      % &     ) &    ^ &    a &    � �           i     � Y	� � �K� Y*� �       !       K 
 M  K  N  O"      	#$  %    Q    "     Q     *� *� #*� '**� *� .�   !       h  Z 	 ]  i  j"       &'    4 5     �     )*� 2L+� !+68*� :� >� D+6J*� :� >� L+�   !   * 
   n  o 	 s  t  s  v  y ! w $ v ' }"       )&'    $() %    � ' E*    +    Q 1     J     *+� O**� *� .�   !       �  �  �"       &'     ,- .   ,  *    +    0 1     c     *+� RM*,� V� \*,m� _� c�   !       �  �  �  �"        &'     ,-   /0 .   ,   12     �     A�     %                 *� \�*� c�� eY� gY� ij� l� p� s� v�   !       �  � ! � & �"   *    A&'     A34    A5 &    A6 & %    .   3  5  6  *    +    z {     �     B*+� x+� ;*� |M,� �� � �Y*,� �N*-� �*� �N-� �� � �Y*-� �:*� ��   !   .    �  � 	 �  �  �  � $ � ) � 0 � ; � A �"   >   78  ; 9:   3;<  ) =:    B&'     B>? %    � $@� .   >  *    +   BC     �     I*� '� � �� �� :� � gY� i�� l*� �� �� l�� l*� '~� �� �� l� s� ��   !       �  �  � / � E � H �"       I&'     ID & %   ( � =    � g�     � g.   D    � �    R     �*� '~� +� � �+� � � Y� � �� �� C� � gY� i�� l*� �� �� lö l+� lŶ l*� '~� �� �� l� s� �*+,-� ǧ <� � �� �� 0� � gY� i�� l*� �� �� l˶ l+� lͶ l� s� ��   !   & 	   �  � % � L � b � e � o � { � � �"   *    �&'     �EF    �GH    �IH %   ; � @  JJ  � g�   JJ  � g	8.   E  G  I  *    +    � �     x     +� *� �M,� *,� � � #*+� ر   !       �  � 	 �  �  �  �"      	 LM    &'     NM %    .   N  *    +    O [     /     *� #�   !       �"       &'    � "     I     *� '~� *� ܱ   !       � 	 �  �"       &'  %    *    +    � "     I     *� '~� *� ߱   !       � 	 �  �"       &'  %    *    +    � "     �     '*� �*� �L� �Y*+� �M� � ,� � � ,� ��   !       �  	 4 5 "7 &9"        '&'   	 PQ   RS %    � "T �*    +  VW           � �   !       E X "     K      /� �� �� �Y�YSYSY
S��� ��   !   
    G  � Y   Z[     � \  � ]  �      