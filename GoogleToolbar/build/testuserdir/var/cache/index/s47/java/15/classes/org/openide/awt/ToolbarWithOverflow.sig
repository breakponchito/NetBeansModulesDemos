����   4�	      #org/openide/awt/ToolbarWithOverflow displayOverflowOnHover Z
   	 
 displayOverflow ()V	     overflowButton Ljavax/swing/JButton;	     showingPopup Ljavax/swing/JPopupMenu;	     popup
    
 maybeAddOverflow  javax/swing/SwingConstants
     <init> (I)V
     ! (Ljava/lang/String;I)V
 #   $ javax/swing/JToolBar & PreferredIconSize	  ( ) * PROP_PREF_ICON_SIZE Ljava/lang/String; , _toolbar_dragger_	  . / * PROP_DRAGGER 1 nb.toolbar.overflow.disable	  3 4 * PROP_JDEV_DISABLE_OVERFLOW
  6 7 
 setupOverflowButton 9 1org/openide/awt/ToolbarWithOverflow$SafePopupMenu
 8 ;  < *(Lorg/openide/awt/ToolbarWithOverflow$1;)V
 > ? @ A B javax/swing/JPopupMenu setBorderPainted (Z)V
 D E F G H javax/swing/BorderFactory createEmptyBorder ()Ljavax/swing/border/Border;
 > J K L 	setBorder (Ljavax/swing/border/Border;)V N /org/openide/awt/ToolbarWithOverflow$SafeToolBar P overflowToolbar
 M  	  S P T Ljavax/swing/JToolBar;
 # V W B setFloatable Y controlShadow
 [ \ ] ^ _ javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color;
 D a b c createLineBorder .(Ljava/awt/Color;I)Ljavax/swing/border/Border;
 # J	  f g h componentAdapter !Ljava/awt/event/ComponentAdapter; j %org/openide/awt/ToolbarWithOverflow$1
 i l  m ((Lorg/openide/awt/ToolbarWithOverflow;)V	  o p q awtEventListener !Ljava/awt/event/AWTEventListener; s %org/openide/awt/ToolbarWithOverflow$2
 r l
 # v w 
 	addNotify	 y z { | } java/lang/Boolean TRUE Ljava/lang/Boolean;
   � � getClientProperty &(Ljava/lang/Object;)Ljava/lang/Object;
 y � � � equals (Ljava/lang/Object;)Z
  � � � getComponentListener $()Ljava/awt/event/ComponentListener;
  � � � addComponentListener %(Ljava/awt/event/ComponentListener;)V
 � � � � � java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;
  � � � getAWTEventListener #()Ljava/awt/event/AWTEventListener; � java/awt/AWTEvent       0
 � � � � addAWTEventListener %(Ljava/awt/event/AWTEventListener;J)V
 # � � 
 removeNotify
  � � � removeComponentListener
 � � � � removeAWTEventListener $(Ljava/awt/event/AWTEventListener;)V	 � � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; � %org/openide/awt/ToolbarWithOverflow$3
 � l
 � � � � 
readAccess (Ljava/lang/Runnable;)V
 # � � 
 updateUI
  � � � getAllComponents ()[Ljava/awt/Component;
  � � � 	getInsets ()Ljava/awt/Insets;	 � � � � � java/awt/Insets left I	 � � � � right	 � � � � top	 � � � � bottom
 � � � � � java/awt/Component 	isVisible ()Z
  � � � getOrientation ()I
 � � � � getPreferredSize ()Ljava/awt/Dimension;	 � � � � � java/awt/Dimension width	 � � � � height
 � � � � � java/lang/Math max (II)I
 # � � � getComponentCount
 � � � javax/swing/JButton
 � �  � (II)V
 # � �  setOrientation
 # � � 
 	removeAll
  � � � computeVisibleButtons
   
 handleOverflowRemoval
   handleOverflowAddittion
 # 
 validate	 %org/openide/awt/ToolbarWithOverflow$4	 4org/openide/awt/ToolbarWithOverflow$ToolbarArrowIcon INSTANCE_VERTICAL Ljavax/swing/Icon;	 INSTANCE_HORIZONTAL
  :(Lorg/openide/awt/ToolbarWithOverflow;Ljavax/swing/Icon;)V %org/openide/awt/ToolbarWithOverflow$5
 l
 � addMouseListener !(Ljava/awt/event/MouseListener;)V
 � � 	isShowing
 �!"# getLocationOnScreen ()Ljava/awt/Point;	%&'( � java/awt/Point x
 �*+ � getWidth	%-. � y
 �01 � 	getHeight
 >34 � setLocation
 >67 B 
setVisible
 
 :; 
 repaint
 
 �>?@ getIcon ()Ljavax/swing/Icon;BCDE � javax/swing/Icon getIconWidth
 *
 0BIJ � getIconHeight
 �LMN setMaximumSize (Ljava/awt/Dimension;)V
 �PQN setMinimumSize
 �STN setPreferredSize
 VW 
 handleIconResizeY javax/swing/JComponent
X 
  �
 > �
 ^_` add *(Ljava/awt/Component;)Ljava/awt/Component;
 #^
 >^
 #de � getComponents
 ghi remove (Ljava/awt/Component;)V
Xklm putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
opqrs java/lang/Integer valueOf (I)Ljava/lang/Integer;
 d
  �
wxyz{ java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V ConstantValue Code LineNumberTable LocalVariableTable this %Lorg/openide/awt/ToolbarWithOverflow; orientation MethodParameters (Ljava/lang/String;)V name StackMapTable� java/lang/String #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; superUpdateUI isDisplayOverflowOnHover setDisplayOverflowOnHover comp Ljava/awt/Component; i comps [Ljava/awt/Component; insets Ljava/awt/Insets; dim Ljava/awt/Dimension;� o visibleButtons w h size 	sizeSoFar maxSize overflowButtonSize showingButtons smallToolbarIcons toolbarComps overflowComps 
access$100 x0 
access$200 ?(Lorg/openide/awt/ToolbarWithOverflow;)Ljavax/swing/JPopupMenu; 
access$302 2(Ljavax/swing/JPopupMenu;)Ljavax/swing/JPopupMenu; 
access$400 <(Lorg/openide/awt/ToolbarWithOverflow;)Ljavax/swing/JButton; 
access$600 
access$300 ()Ljavax/swing/JPopupMenu; 
access$700 ((Lorg/openide/awt/ToolbarWithOverflow;)Z <clinit> 
SourceFile ToolbarWithOverflow.java InnerClasses SafePopupMenu SafeToolBar ToolbarArrowIcon !  #   
            P T         ) * |    %  / * |    +  4 * |    0  p q    g h   
         
 }   4     *� �   ~   
    I  J       ��      }   ?     *� �   ~   
    V  W       ��     � � �   �    � }   ?     *+� �   ~   
    b  c       ��     � * �   �     ! }       n*+� "*� *%� '*+� -*0� 2*� 5*� 8Y� :� *� � =*� � C� I*� MYO� � � Q� R*� R� U*� RX� Z� `� d�   ~   6    s  ;  <  =  >  t ! u - v 5 w ? x U y ] z m {        n��     n� *    n� � �   7 � N  �   @ @��    �   @ @��   	�  �    � � }   S     *� e� *� iY*� k� e*� e�   ~       ~    �       ��  �      � � }   S     *� n� *� rY*� t� n*� n�   ~       �  �  �       ��  �      w 
 }   l     )*� u� x*0� ~� �� **� �� �� �*� � �� ��   ~       �  �  �  � ( �       )��  �    (�    �    � 
 }   m     %*� �*� e� **� e� �*� n� � �*� n� ��   ~       �  �  �  �  � $ �       %��  �    �    �    � 
 }   =     � �� �Y*� �� ��   ~   
    �  �       ��  �    �   � 
 }   3     *� ��   ~   
    �  �       ��   � � }   /     *� �   ~       �       ��   � B }   F     
*� *� 5�   ~       �  � 	 �       
��     
   �        � � }  �    *� �L*� �M,� � ,� �,� �`>,� � ,� �,� �`66+�� |+2:� њ � e*� ך � ۴ ߧ � ۴ �`>*� ך  � ۴ �,� � ,� �,� �``� � ۴ �,� � ,� �,� �``� �6����*� R� � $*� ך *� � � ߧ *� � � �`>*� ך � �Y� � � �Y� �:�   ~   J    �  � 
 �  � 1 � ; � A � I � L � i � r � � � � � � � � � � � � � � �   R  A m��  4 �� �   ��    ���  
 ���   � � �  1 � � �  � �� �   � � � �H� 	H� �  �R�   � � � �   � � � �   � � � C�   � � � �   � � � �    � � � � � ^� 	  � � I ��    �    �  }   F     
*� �*� 5�   ~        	       
��     
� � �   �  �    �    � 
 }   >     *� �*� R� ��   ~      
         ��  �    �    
 }   �     *� x*0� ~� �� *� �<� 
*� �� *�*��   ~            % )      � �    *��  �   	 �  � �    �    7 
 }   �     ,*�Y**� ך 	�
� ��� *� �Y*���   ~        - +C       ,��  �   1 �        �        B  	 
 }   �     r*� �� �*� ך *� � �$� *� � �$*� �)`<*� ך *� � �,*� �/`� *� � �,=*� �2*� � *� �5�   ~   "   F 
G I 2J YK bL iM qN        r��   2 @( �  Y . � �    Q� I   
 }   ;     	*�8*�9�   ~      T U V       	��    � � }  #    �*�<� �*� ך *� �=�A `� *�F*� �� �d*� �� �d<*� ך *�G*� �� �d*� �� �d� *� �=�H `=*� � �Y� �K*� � �Y� �O*� � �Y� �R*�U*� �L=*� ך 
*�F� *�G>*� ך *� � � ߧ *� � � �666*� �:� $*� ך � �� �`� � �� �`=6+�� P+2:		� њ � 9� /*� ך 	� ۴ ߧ 	� ۴ �6

`� 
`=������� � `� ��� (+�� #+2�X� � x+2�X+�Z� �� 6� 6�   ~   � #  Y Z 4[ a\ q] �^ �` �a �b �c �d �e �f �g �h �iklmnp$q@rHsMtPwSkYym{p}���������   �  4 ]� �  a 0� � @ � � 
 A�� 	 T� �   ���   ���  �� �  � �� �  � �� �  � �� �  � �� �  � ��� �   L S� M� 0� �C� I� (  � �  J � �  �G� � )	   }  3     x*� �M*�[*� R*� ך � � �*� �\,N-�66� 2-2:� *�]W� љ ��� *� R�aW����*� *� R�bW**� �]W�   ~   :   � � 	� � #� 9� =� D� L� R� \� b� n� w�   *  9 #��    x��     x� �   s�� �   9 �   �  #�    �  #� �� % �� 	� �   �    
 }   �     J*� R�c�� A**� �f*�U*� R�cL+�=>� +2:*�]W����*� R� �*� �\�   ~   & 	  � � � � .� 5� ;� B� I�     . ��    J��  �    � $��  W 
 }   �     P*� R�cL+�=>� @+2:*%� ~� � 6� �X%�j� �X%�n�j�����   ~      � � '� ,� :� I� O�      ' "�    2��    P��  �    � ��  �@� � �   � � }   �     Y*� R�cM,�� *�tL� )*�u� *�t�d� �L*�t++��v� � �L+�,�`� �N+-+��v,-+�,��v-�   ~   .   � � � � � '� 6� ;� D� M� W�   >   ��  ' ��    Y��   ; ��   Q��  D �� �    �  � �   ��  � m }   /     *� �   ~       6       ��  �� }   /     *� �   ~       6       ��  �� }   0     *Y� �   ~       6       �   �� }   /     *� �   ~       6       ��  � m }   /     *� �   ~       6       ��  �� }         � �   ~       6�� }   /     *� �   ~       6       ��   � 
 }         � �   ~       B �   ��   B  8 � 
 i       M � 
 r       �             �       