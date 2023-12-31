����   4�
      javax/swing/JLabel <init> ()V  java/awt/Insets
  
   (IIII)V	       org/openide/awt/HtmlRendererImpl EMPTY_INSETS Ljava/awt/Insets;	     cachedScratchGraphics 2Lorg/openide/awt/HtmlRendererImpl$ScratchGraphics;	     centered Z	     parentFocused	      html Ljava/lang/Boolean;	  " # $ indent I	  & ' ( border Ljavax/swing/border/Border;	  * +  selected	  - .  leadSelection	  0 1 2 prefSize Ljava/awt/Dimension;	 4 5 6 7 8 %org/openide/awt/HtmlRendererImpl$Type UNKNOWN 'Lorg/openide/awt/HtmlRendererImpl$Type;	  : ; 8 type = org/openide/awt/HtmlRenderer	  ? @ $ renderStyle	  B C  enabled	  E F  cellRenderer	  H I  $assertionsDisabled
 K L M N O javax/swing/SwingUtilities isEventDispatchThread ()Z Q java/lang/AssertionError
 P 
  T U V setCentered (Z)V
  X Y Z setIcon (Ljavax/swing/Icon;)V
  \ ] V 	setOpaque _ controlFont
 a b c d e javax/swing/UIManager getFont #(Ljava/lang/Object;)Ljava/awt/Font;
  g h i setFont (Ljava/awt/Font;)V
  k l m setIconTextGap (I)V
  o p V 
setEnabled	  r s $ top	  u v $ left	  x y $ right	  { | $ bottom
  ~   reset
  � � � configureFrom /(Ljava/lang/Object;Ljavax/swing/JComponent;ZZ)V	 4 � � 8 TABLE	  � �  swingRendering
 � � � � � javax/swing/JTable getSelectionBackground ()Ljava/awt/Color;
  � � � setBackground (Ljava/awt/Color;)V
 � � � � getSelectionForeground
  � � � setForeground	 4 � � 8 TREE
 � � � � O org/openide/awt/HtmlLabelUI isGTK
 � � � � getBackgroundFor 4(Lorg/openide/awt/HtmlRendererImpl;)Ljava/awt/Color;
 � � � � getForegroundFor	 4 � � 8 LIST
 � � � javax/swing/JList
 � � � controlShadow
 a � � � getColor $(Ljava/lang/Object;)Ljava/awt/Color;	 � � � � � java/awt/Color GRAY Ljava/awt/Color;
 � � � � � javax/swing/BorderFactory createLineBorder -(Ljava/awt/Color;)Ljavax/swing/border/Border;
 � � � � createEmptyBorder !(IIII)Ljavax/swing/border/Border;
 � � � � createCompoundBorder [(Ljavax/swing/border/Border;Ljavax/swing/border/Border;)Ljavax/swing/border/CompoundBorder;
  � � � 	setBorder (Ljavax/swing/border/Border;)V �  
 � � � � � java/lang/Object toString ()Ljava/lang/String;
  � � � setText (Ljava/lang/String;)V
  � � V setSelected
  � � � checkFocused (Ljavax/swing/JComponent;)Z
  � � V setParentFocused
 � � � � O javax/swing/JComponent 	isEnabled
  � � V setLeadSelection
 � � d � ()Ljava/awt/Font;
 � � � � � java/awt/KeyboardFocusManager getCurrentKeyboardFocusManager !()Ljava/awt/KeyboardFocusManager;
 � � � � getPermanentFocusOwner ()Ljava/awt/Component;
 � � � � isAncestorOf (Ljava/awt/Component;)Z
  � �  	addNotify
   removeNotify
  m setVerticalTextPosition
  m setHorizontalAlignment
 
 m setHorizontalTextPosition
   
invalidate
  � getText	   java/lang/Boolean TRUE	   FALSE text
  firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
 !"# 	checkHtml '(Ljava/lang/String;)Ljava/lang/Boolean;
%& O booleanValue( <html
*+,-. java/lang/String 
startsWith (Ljava/lang/String;)Z0 <HTML
 234 getUI ()Ljavax/swing/plaf/LabelUI;
6789: javax/swing/plaf/LabelUI getPreferredSize .(Ljavax/swing/JComponent;)Ljava/awt/Dimension;
 <9= ()Ljava/awt/Dimension;
 
@AB equals (Ljava/lang/Object;)Z
 DEF ensureHtmlTags &(Ljava/lang/String;)Ljava/lang/String;
 HIF ensureLegalFontColorTagsK java/lang/StringBuilder
J N <html>
JPQR append -(Ljava/lang/String;)Ljava/lang/StringBuilder;T </html>
J �
*WX � toUpperCaseZ <FONT
*\]^ indexOf (Ljava/lang/String;I)I
*`ab length ()Id COLOR
*f]g (II)I
*ijk charAt (I)C
mnopq java/lang/Character isLetter (C)Zs java/lang/StringBuffer
ru  �
*wxy 	substring (II)Ljava/lang/String;
 {|F convertToStandardColor
r~� replace .(IILjava/lang/String;)Ljava/lang/StringBuffer;
r �	 ��� � BLACK
r�  m
r�Q� (C)Ljava/lang/StringBuffer;
 ���b getRed
 ��� 	hexString (I)Ljava/lang/String;
r�Q� ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 ���b getGreen
 ���b getBlue
����� java/lang/Integer toHexString
J�Q� (C)Ljava/lang/StringBuilder;
*@
 �� O isHtml
  '
 ��� 	getInsets $(Ljava/awt/Insets;)Ljava/awt/Insets;
 ��� 	getBorder ()Ljavax/swing/border/Border;����� javax/swing/border/Border getBorderInsets '(Ljava/awt/Component;)Ljava/awt/Insets;� java/lang/NullPointerException
���� � java/lang/Class getName
����� java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	����� java/util/logging/Level FINE Ljava/util/logging/Level;
���� log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 ��  set
  o
 ��  updateUI
 ���� createUI 8(Ljavax/swing/JComponent;)Ljavax/swing/plaf/ComponentUI;
 ��� setUI !(Ljavax/swing/plaf/ComponentUI;)V
 �� O isDisplayable
 ��� getGraphics ()Ljava/awt/Graphics;
 ��� scratchGraphics ()Ljava/awt/Graphics2D;
 ��� getGraphicsConfiguration "()Ljava/awt/GraphicsConfiguration;
����� java/awt/GraphicsEnvironment getLocalGraphicsEnvironment  ()Ljava/awt/GraphicsEnvironment;
���� getDefaultScreenDevice ()Ljava/awt/GraphicsDevice;
����� java/awt/GraphicsDevice getDefaultConfiguration
����� 0org/openide/awt/HtmlRendererImpl$ScratchGraphics isConfigurationCompatible #(Ljava/awt/GraphicsConfiguration;)Z
���
�  #(Ljava/awt/GraphicsConfiguration;)V	   noCacheGraphics
 	
  reshape
 		  bounds Ljava/awt/Rectangle;
  java/awt/Rectangle 	setBounds	 $ width	 $ height
 getLocation ()Ljava/awt/Point;
  !  validate
  �
 $%& repaint (JIIII)V
 (% 
 
 +,  
revalidate
 ./0 addAncestorListener '(Ljavax/swing/event/AncestorListener;)V
 234 addComponentListener %(Ljava/awt/event/ComponentListener;)V
 678 addContainerListener %(Ljava/awt/event/ContainerListener;)V
 :;< addHierarchyListener %(Ljava/awt/event/HierarchyListener;)V
 >?@ addHierarchyBoundsListener +(Ljava/awt/event/HierarchyBoundsListener;)V
 BCD addInputMethodListener '(Ljava/awt/event/InputMethodListener;)V
 FGH addFocusListener !(Ljava/awt/event/FocusListener;)V
 JKL addMouseListener !(Ljava/awt/event/MouseListener;)V
 NOP addMouseWheelListener &(Ljava/awt/event/MouseWheelListener;)V
 RST addMouseMotionListener '(Ljava/awt/event/MouseMotionListener;)V
 VWX addVetoableChangeListener &(Ljava/beans/VetoableChangeListener;)V
 Z[\ addPropertyChangeListener 8(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
 ^[_ &(Ljava/beans/PropertyChangeListener;)V
�ab O desiredAssertionStatus
 e nb.useSwingHtmlRendering
gh. 
getBooleanj nb.renderer.nocachel %org/openide/awt/HtmlRenderer$Renderer Code LineNumberTable LocalVariableTable this "Lorg/openide/awt/HtmlRendererImpl; MethodParameters )()Lorg/openide/awt/HtmlRendererImpl$Type; StackMapTable getTableCellRendererComponent @(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component; table Ljavax/swing/JTable; value Ljava/lang/Object; row column getTreeCellRendererComponent @(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component; tree Ljavax/swing/JTree; expanded leaf getListCellRendererComponent >(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component; borderC list Ljavax/swing/JList; index target Ljavax/swing/JComponent; c focused Ljava/awt/Component; result� java/awt/Component #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; val 	setIndent pixels setHtml wasHtml txt Ljava/lang/String; setRenderStyle style getRenderStyle isLeadSelection 
isCentered isParentFocused s 
isSelected 	getIndent getType C i 
colorStart colorEnd colorString 	converted bangIdx eidx cidx tagEnd check start fidx sb Ljava/lang/StringBuffer; r name old nue b ()Ljava/awt/Insets; e  Ljava/lang/NullPointerException; insets Ljava/awt/Graphics;� java/awt/Graphics gc  Ljava/awt/GraphicsConfiguration;� java/awt/GraphicsConfiguration x y w h 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; getWidth 	getHeight tm J l $Ljavax/swing/event/AncestorListener; "Ljava/awt/event/ComponentListener; "Ljava/awt/event/ContainerListener; "Ljava/awt/event/HierarchyListener; (Ljava/awt/event/HierarchyBoundsListener; $Ljava/awt/event/InputMethodListener; fl Ljava/awt/event/FocusListener; ml Ljava/awt/event/MouseListener; #Ljava/awt/event/MouseWheelListener; $Ljava/awt/event/MouseMotionListener; vl #Ljava/beans/VetoableChangeListener; #Ljava/beans/PropertyChangeListener; <clinit> 
SourceFile HtmlRendererImpl.java InnerClasses ScratchGraphics Type Renderer     k      �         
                          # $    ' (    +     .     1 2    ; 8    @ $    C     F    I    C    V m   �     W*� *� Y� 	� *� *� *� *� *� !*� %*� )*� ,*� /*� 3� 9*� >*� A*� D�   n   B    P  <  B  C  D " E ' F , G 1 H 6 I ; J @ K G L L M Q Q V Ro       Wpq     W F  r    F     ;s m   /     *� 9�   n       Uo       pq      m       �� G� � J� � PY� R�*� *� S*� *� !*� %*� W*� [*� )*� ,*� /*� 3� 9*� >*^� `� f*� j*� n*� %*� � q*� � t*� � w*� � z�   n   Z    Z  [  \  ] # ^ ( _ - ` 2 a 7 b < c A d F e M f R g [ h ` i e j j m r n z o � p � qo       �pq  t     uv m   �     5*� }*,+� �*� �� 9� �� � *+� �� �*+� �� �*� [*�   n   "    v  w  x  z  { & | . } 3 �o   H    5pq     5wx    5yz    5 +     5 .     5{ $    5| $ t    3r   w  y   +   .  {  |   }~ m   �     ;*� }*,+� �*� �� 9� �� "� � �� **� �� �**� �� �*� [*�   n   & 	   �  �  �  �  � $ � , � 4 � 9 �o   R    ;pq     ;�    ;yz    ; +     ;�     ;�     ;{ $    ; .  t    4r     y   +  �  �  {   .   �� m  :     y*� }*,+� �*� �� 9� �� � *+� �� �*+� �� �*� [� �� ?� /�� �:� 	� �� :*� �� ¸ ƶ ʧ *� ¶ �*�   n   J    �  �  �  �   � ( � 0 � 5 � ; � @ � G � V � Y � ` � c � i � l � w �o   H  G "� �    ypq     y��    yyz    y� $    y +     y .  t    5�  �A �� 
r   �  y  �   +   .    � � m   �     B*+� Χ +� ж �*� �� **,� ݶ � *� �*,� � n*� �*,� � f�   n   & 	   �  �  �  � & � + � 3 � 9 � A �o   4    Bpq     Byz    B��    B +     B .  t     J �    � �  *r   y  �   +   .    � � m   �     � � �M+,� � >� 	+,� �>�   n       �  �  �  �  �o   *    pq     ��   ��   �  t    � �@� 
r   �    �  m   N     � �� 
*� D� *� ��   n       �  �  �o       pq  t    �    �     m   N     � �� 
*� D� *� �   n       �  �  �o       pq  t    �    �    � V m   >     *� )�   n   
    �  �o       pq     �  r   �    � V m   >     *� �   n   
    �  �o       pq     �  r   �    � V m   >     *� ,�   n   
    �  �o       pq     �  r   �    U V m   �     <*� � *� j� �� *� *�*�*�	� *�*
�*�	�   n   2    �  � 	 �  �  �  �  � " � * � / � 5 � ; �o       <pq     <�  t    r   �   � m m   a     *� !*� D� 	� �� *��   n       �  �   o       pq     � $ t    r   �   � V m   �     =*� M*�N*� 	�� �� *� ,� � �� 
*� D� *-*���   n        
 	 0 <o   *    =pq     =�    8�    
 3�� t   / �   *  �   *  r   �   � m m   >     *� >�   n   
    o       pq     � $ r   �    �b m   /     *� >�   n      o       pq    � O m   /     *� ,�   n      o       pq    � O m   /     *� �   n      o       pq    � O m   /     *� �   n       o       pq    � O m   ~     *� L+� *�M*,� L*+� +�$�   n      $ % 	& ' ( +o       ��    pq    �   t    �  "# m   �     ,+� 
�M� "+'�)� +/�)� 
�M� �M,�   n      1 2 3 4 &6 *9o   4   �    # �      ,pq     ,��  * �   t    � r   �    � O m   /     *� )�   n      =o       pq    �b m   /     *� !�   n      Ao       pq    �s m   /     *� 9�   n      Eo       pq   9= m   g     #� �� *� /� **�1*�5� /*� /�*�;�   n      I J K N Po       #pq  t    �    �    � m   �     O*�>L� �� �*� �?� *+�CL� /� �� )*� � "***�>� � �*� �?� 	*+�CL+�   n   "   [ ] ` !a .c :e Gf Mjo       Opq    J�� t   	 � !*+�    �   EF m        6+�GL+/�)� (+'�)� �JY�LM�O+�OS�O�UL+�   n      w y z 4}o       6pq     6�� t    4r   �   
IF m  �    *�VL=+Y�[>:� �*�_� �� �*�_� �+c�[6+>�e6`=� � �� �� �+=�e6� �+!�e6� s� l`6	6
	6�  *�h6�l� 
6
� 	����� �rY*�t:*	
�v:�z:
�}W��K*�VL+Y�[>=��*� 	���*�   n   � &  � � � � �  � -� 7� @� E� K� N� T� [� e� k� u� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���o   �  � ��  � $� $  � c� $ 	 � _� $ 
 � ��  � ��  u v� $  e �� $  7 �� $  @ �� $   ��   ��   �� $   �� $   ��� t   O 	�   **r  � -� A **r  � � ' **r  � 
r   �   
|F m   �     G*� �L+� ��L�rY��M,#��W,+������W,+������W,+������W,���   n   & 	  � � 	� � � � *� 6� B�o        G��    B� �   0�� t    �  �r   �   
�� m   q     #��L+�_� �JY�L0��+�O�UL+�   n      � � � !�o       #� $    �� t    � !*r   �    m   �     +� �� 
*� D�  +��� *��� *�N*+,-���   n      � � � #� *�o   *    +pq     +��    +�z    +�z t    r   �  �  �  �    �   �� m   �     )*� !� � �� 
*� D� *� !� �L� *� %L+�   n      �   " 'o       � (    )pq   ' � ( t   
 � ��    �    � � m   ~     !*� %M*+� %� �� 
*� D� *�,+��   n      	 
 
   o        !pq     !� (   � ( t   	 � �r   �  �    �   �� m   0     *���   n      o       pq  �    �   �� m  K     {*��N-�  *� D� 
*� � � Y� 	M� ;-*�� M� 0:��������*� D� 
*� � � Y� 	M+� +,� q,� t,� z,� w��+�,�  & . 1� n   2     	 &# .' 1$ 3% D& ^) c* w+ y-o   H  # �   . �   3 +��    {pq     {�   ^ �    v� ( t   0 �  �J J��  �J �      �  r   �  �    �    p V m   b     *� A� �� 
*� D� *�б   n      2 4 5 7o       pq     �  t    r   �  �    �    � O m   /     *� A�   n      :o       pq  �    �   �  m   V     � �� 
*�ѧ **�Զر   n      > ? A Co       pq  t    �    �   �� m   p     L*�ܙ *��L+� *��L+�   n      J L 	M P Q To       pq    �� t   	 � ��    �   �� m   �     B*��L+� ����L*� M,� ,+��� ,� ���Y+�M�� *,� ,� �   n   * 
  ~  	� � � $� )� 2� 8� =�o        Bpq    =��   *�  t    � �� �   m   `     
*��   n   
   � 	�o   4    
pq     
� $    
� $    
� $    
� $ r   �  �  �  �  �    �   
  m   �     "� �� 
*� D� *����   n      � � � !�o   4    "pq     "� $    "� $    "� $    "� $ t    r   �  �  �  �  �    �    �  �    �   �b m   1     ���   n      �o       pq  �    �   �b m   1     ���   n      �o       pq  �    �    m   1     ���   n      �o       pq  �    �   !  m   G     *� D� *��   n      � � �o       pq  t    �    �    � � m   [     *� D� *� /*+�"�   n      � � � �o       pq     � t    r     �    �   %& m   �     *� D� *�#�   n      � � �o   >    pq     ��    � $    � $    � $    � $ t    r   �  �  �  �  �  �    �   %  m   G     *� D� *�'�   n      � � �o       pq  t    �    �     m   G     *� D� *�)�   n      � � �o       pq  t    �    �   ,  m   G     *� D� *�*�   n      � � �o       pq  t    �    �   /0 m   Y     � �� 
*� D� *+�-�   n      � � �o       pq     �� t    r   �  �    �   34 m   Y     � �� 
*� D� *+�1�   n      � � �o       pq     �� t    r   �  �    �   78 m   Y     � �� 
*� D� *+�5�   n      � � �o       pq     �� t    r   �  �    �   ;< m   Y     � �� 
*� D� *+�9�   n      � � �o       pq     �� t    r   �  �    �   ?@ m   Y     � �� 
*� D� *+�=�   n      � � �o       pq     �� t    r   �  �    �   CD m   Y     � �� 
*� D� *+�A�   n      � � �o       pq     �� t    r   �  �    �   GH m   Y     � �� 
*� D� *+�E�   n      � �  o       pq     �� t    r   �  �    �   KL m   Y     � �� 
*� D� *+�I�   n        o       pq     �� t    r   �  �    �   OP m   Y     � �� 
*� D� *+�M�   n        o       pq     �� t    r   �  �    �   ST m   Y     � �� 
*� D� *+�Q�   n        o       pq     �� t    r   �  �    �   WX m   Y     � �� 
*� D� *+�U�   n        o       pq     �� t    r   �  �    �   [\ m   d     � �� 
*� D� 	*+,�Y�   n        ! #o        pq     ��    �� t    r   	�  �  �    �   [_ m   Y     � �� 
*� D� *+�]�   n      & ' )o       pq     �� t    r   �  �    �   �  m   \      -�`� � � G�Y�c�d�f� �i�f��   n       9  :  ; # At    @ �   ��    � �  4 �@k <�	