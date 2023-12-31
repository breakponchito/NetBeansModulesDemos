����   48	      org/openide/awt/QuickSearch searchPanel Ljavax/swing/JPanel;
   	 
 fireQuickSearchUpdate (Ljava/lang/String;)V
     findMaxPrefix 2(Ljava/lang/String;Ljava/util/function/Consumer;)V
     fireShowNextSelection (Z)V	     hasSearchText Z	     searchFieldListener 1Lorg/openide/awt/QuickSearch$SearchFieldListener;
     removeSearchField ()V	    ! " 	component Ljavax/swing/JComponent;	  $ % & callback &Lorg/openide/awt/QuickSearch$Callback;	  ( ) * animationTimer ,Lorg/openide/awt/QuickSearch$AnimationTimer;	  , - . searchTextField -Lorg/openide/awt/QuickSearch$SearchTextField;
  0 1  displaySearchField
 3 4 5 6  java/lang/Object <init>	  8 9  enabled	  ; <  alwaysShown	  > ? @ constraints Ljava/lang/Object;	  B C  asynchronous	  E F G 	popupMenu Ljavax/swing/JMenu; I !org/openide/util/RequestProcessor
 H K 6 L (Ljava/lang/Class;)V	  N O P rp #Lorg/openide/util/RequestProcessor;
  R S  setUpSearch
  U V W attach �(Ljavax/swing/JComponent;Ljava/lang/Object;Lorg/openide/awt/QuickSearch$Callback;ZLjavax/swing/JMenu;)Lorg/openide/awt/QuickSearch;	  Y Z @ CLIENT_PROPERTY_KEY
 \ ] ^ _ ` javax/swing/JComponent getClientProperty &(Ljava/lang/Object;)Ljava/lang/Object; b java/lang/IllegalStateException d FA quick search is attached to this component already, detach it first.
 a f 6 

  h 6 i g(Ljavax/swing/JComponent;Ljava/lang/Object;Lorg/openide/awt/QuickSearch$Callback;ZLjavax/swing/JMenu;)V
 \ k l m putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
  o p  
setEnabled	  r s t quickSearchKeyAdapter Ljava/awt/event/KeyAdapter;
 \ v w x addKeyListener (Ljava/awt/event/KeyListener;)V
 \ z { x removeKeyListener
  } ~  	isEnabled ()Z
  � � � isKeyEventInSearchFieldIgnored (Ljava/awt/event/KeyEvent;)Z
 � � � � � +org/openide/awt/QuickSearch$SearchTextField getText ()Ljava/lang/String;
 � � � � � java/lang/String length ()I
 � � � � setCaretPosition (I)V
 � � � � processKeyEvent (Ljava/awt/event/KeyEvent;)V
 � � � � � java/awt/event/KeyEvent getID
 � � � � � java/awt/event/KeyAdapter 
keyPressed
 � � � � keyReleased
 � � � � keyTyped
 � � � � 
getKeyCode
 � � �  isFocusOwner � $org/openide/awt/QuickSearch$LazyFire	 � � � � � #org/openide/awt/QuickSearch$QS_FIRE UPDATE %Lorg/openide/awt/QuickSearch$QS_FIRE;
 � � 6 � W(Lorg/openide/awt/QuickSearch;Lorg/openide/awt/QuickSearch$QS_FIRE;Ljava/lang/String;)V
 H � � � post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task; � � � � 
 $org/openide/awt/QuickSearch$Callback quickSearchUpdate	 � � � � NEXT
 � � 6 � F(Lorg/openide/awt/QuickSearch;Lorg/openide/awt/QuickSearch$QS_FIRE;Z)V � � �  showNextSelection	 � � � � MAX
 � � 6 � t(Lorg/openide/awt/QuickSearch;Lorg/openide/awt/QuickSearch$QS_FIRE;Ljava/lang/String;Ljava/util/function/Consumer;)V � �  � &(Ljava/lang/String;)Ljava/lang/String; � � � � � java/util/function/Consumer accept (Ljava/lang/Object;)V
 � � 6 �  (Lorg/openide/awt/QuickSearch;)V � org/openide/awt/QuickSearch$1
 � � � /org/openide/awt/QuickSearch$SearchFieldListener
 � �
 � v
 � � � � addFocusListener !(Ljava/awt/event/FocusListener;)V
 � � � � getDocument ()Ljavax/swing/text/Document; � � � � � javax/swing/text/Document addDocumentListener '(Ljavax/swing/event/DocumentListener;)V � !javax/swing/text/AbstractDocument � =org/openide/awt/QuickSearch$SearchFieldListener$ReplaceFilter
 � � � � ` java/util/Objects requireNonNull
 � � 6 � S(Lorg/openide/awt/QuickSearch$SearchFieldListener;Lorg/openide/awt/QuickSearch$1;)V
 � �  setDocumentFilter $(Ljavax/swing/text/DocumentFilter;)V
   isAlwaysShown
 �  setOriginalFocusOwner
 \	
 getFont ()Ljava/awt/Font;
 � setFont (Ljava/awt/Font;)V 'org/openide/awt/QuickSearch$SearchPanel
 6 (Ljavax/swing/JComponent;Z)V javax/swing/JLabel 2org/openide/awt/resources/quicksearch/findMenu.png
 org/openide/util/ImageUtilities loadImageIcon ,(Ljava/lang/String;Z)Ljavax/swing/ImageIcon;
  6! (Ljavax/swing/Icon;)V# org/openide/awt/QuickSearch$2
"% 6& 4(Lorg/openide/awt/QuickSearch;Ljavax/swing/JLabel;)V
()* addMouseListener !(Ljava/awt/event/MouseListener;)V, .org/openide/awt/resources/quicksearch/find.png. *org/openide/awt/QuickSearch$AnimationTimer
012 getIcon ()Ljavax/swing/Icon;
-4 65 )(Ljavax/swing/JLabel;Ljavax/swing/Icon;)V7 javax/swing/BoxLayout
69 6: (Ljava/awt/Container;I)V
<=>?@ javax/swing/JPanel 	setLayout (Ljava/awt/LayoutManager;)VB Aqua
DEFGH javax/swing/UIManager getLookAndFeel ()Ljavax/swing/LookAndFeel;
JKL � � javax/swing/LookAndFeel
 �NOP equals (Ljava/lang/Object;)ZR javax/swing/JPopupMenu
Q 4U org/openide/awt/QuickSearch$3
TW 6X 8(Lorg/openide/awt/QuickSearch;Ljavax/swing/JPopupMenu;)V
QZ[\ addPopupMenuListener ((Ljavax/swing/event/PopupMenuListener;)V^ JTextField.Search.FindPopup
 � ka JTextField.Search.FindActionc org/openide/awt/QuickSearch$4
b �
<fgh add *(Ljava/awt/Component;)Ljava/awt/Component;
 \jkl getBackground ()Ljava/awt/Color;
<nop setBackground (Ljava/awt/Color;)V
rst setLabelFor (Ljava/awt/Component;)V
 �vw � 
setColumns
 �yz{ getPreferredSize ()Ljava/awt/Dimension;
 �}~ setMaximumSize (Ljava/awt/Dimension;)V� JTextField.variant� search
����� javax/swing/BorderFactory createEmptyBorder !(IIII)Ljavax/swing/border/Border;
��� 	setBorder (Ljavax/swing/border/Border;)V
 \f
 \�g� )(Ljava/awt/Component;Ljava/lang/Object;)V
 \��  
invalidate
 \��  
revalidate
 \��  repaint
 ���  requestFocus
 ���  	selectAll
����� javax/swing/SwingUtilities isLeftMouseButton (Ljava/awt/event/MouseEvent;)Z
����� javax/swing/JMenu getPopupMenu ()Ljavax/swing/JPopupMenu;
���� � java/awt/Component 	getHeight
Q��� show (Ljava/awt/Component;II)V�  
 ��� 
 setText
 ���  requestOriginalFocusOwner
-��  stopProgressAnimation
 \��t remove
 ���� charAt (I)C
����� java/lang/Character toUpperCase (C)C
 ���� 	substring (II)Ljava/lang/String; 	ICON_FIND Ljava/lang/String; ConstantValue #org.netbeans.SourceLevelAnnotations 4Lorg/netbeans/api/annotations/common/StaticResource; ICON_FIND_WITH_MENU Code LineNumberTable LocalVariableTable this Lorg/openide/awt/QuickSearch; StackMapTable MethodParameters o(Ljavax/swing/JComponent;Ljava/lang/Object;Lorg/openide/awt/QuickSearch$Callback;)Lorg/openide/awt/QuickSearch; p(Ljavax/swing/JComponent;Ljava/lang/Object;Lorg/openide/awt/QuickSearch$Callback;Z)Lorg/openide/awt/QuickSearch; �(Ljavax/swing/JComponent;Ljava/lang/Object;Lorg/openide/awt/QuickSearch$Callback;Ljavax/swing/JMenu;)Lorg/openide/awt/QuickSearch; qs qso detach setAlwaysShown ke Ljava/awt/event/KeyEvent; 
searchText forward prefix newPrefixSetter Ljava/util/function/Consumer; LocalVariableTypeTable 1Ljava/util/function/Consumer<Ljava/lang/String;>; 	Signature F(Ljava/lang/String;Ljava/util/function/Consumer<Ljava/lang/String;>;)V 	searchDoc Ljavax/swing/text/Document; lbl Ljavax/swing/JLabel; dummy Ljavax/swing/JPopupMenu; maybeShowPopup 2(Ljava/awt/event/MouseEvent;Ljava/awt/Component;)V evt Ljava/awt/event/MouseEvent; comp Ljava/awt/Component; pm sp getSearchField ()Ljavax/swing/JTextField; 9(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String; c1 C c2 str1 str2 
ignoreCase n1 I n2 i 
access$000 x0 
access$100 L(Lorg/openide/awt/QuickSearch;)Lorg/openide/awt/QuickSearch$SearchTextField; 
access$300 K(Lorg/openide/awt/QuickSearch;)Lorg/openide/awt/QuickSearch$AnimationTimer; 
access$400 E(Lorg/openide/awt/QuickSearch;)Lorg/openide/awt/QuickSearch$Callback; 
access$500 7(Lorg/openide/awt/QuickSearch;)Ljavax/swing/JComponent; 
access$700 
access$800 P(Lorg/openide/awt/QuickSearch;)Lorg/openide/awt/QuickSearch$SearchFieldListener; access$1002 !(Lorg/openide/awt/QuickSearch;Z)Z x1 access$1000  (Lorg/openide/awt/QuickSearch;)Z access$1100 !(Lorg/openide/awt/QuickSearch;Z)V access$1200 O(Lorg/openide/awt/QuickSearch;Ljava/lang/String;Ljava/util/function/Consumer;)V x2 access$1300 2(Lorg/openide/awt/QuickSearch;Ljava/lang/String;)V access$1400 3(Lorg/openide/awt/QuickSearch;)Ljavax/swing/JPanel; <clinit> 
SourceFile QuickSearch.java InnerClasses SearchFieldListener Callback AnimationTimer SearchTextField LazyFire QS_FIRE2 &org/openide/util/RequestProcessor$Task Task ReplaceFilter SearchPanel7 org/openide/awt/QuickSearch$5 !  3    �� �   +�    �   �� �   �    �    Z @    ! "    ? @    % &    F G    C     9     - .    s t              O P    ) *    <    B     #  6 i �   �     M*� 2*� 7*� :*� *+� *,� =*-� #*� A*� D� *� HY� J� M� *� M*� Q�   �   :    H  < 	 D  E  I  J  K " L ( M . N 3 O C Q H S L T�   >    M��     M ! "    M ? @    M % &    M C     M F G �    � C   \ 3 ��  �    !   ?   %   C   F   	 V� �   G     	*+,� T�   �       e�        	 ! "     	 ? @    	 % & �    !   ?   %   	 V� �   Q     	*+,� T�   �       w�   *    	 ! "     	 ? @    	 % &    	 C  �    !   ?   %   C   	 V� �   Q     	*+,-� T�   �       ��   *    	 ! "     	 ? @    	 % &    	 F G �    !   ?   %   F   	 V W �   �     6*� X� [:� � � aYc� e�� Y*+,� g:*� X� j�   �       � 	 �  �  � * � 3 ��   H  * ��    6 ! "     6 ? @    6 % &    6 C     6 F G  	 -� @ �    �  3�    !   ?   %   C   F   �  �   C     *� n*� � X� j�   �       �  �  ��       ��     �   /     *� :�   �       ��       ��   �  �   c     *� :� 
*� /� *� �   �       �  � 	 �  �  ��       ��      <  �    �    <    ~  �   /     *� 7�   �       ��       ��    p  �   �     0*� 7� �*� 7� *� *� q� u� *� *� *� q� y�   �   "    �  � 	 �  �  �   � $ � / ��       0��     0 9  �    	�    9    � � �   �     o*� |� �*� � '*+� �� Z*� +*� +� �� �� �*� ++� �� >+� ��   7  �  �   /      $*� q+� �� *� q+� �� *� q+� ��   �   6    �  �  �  �  � ( � 3 P X [ c f	 n�       o��     o�� �    *

�   �    � � �   c     +� �� *� +� �� � ��   �       	 �       ��     �� �    @ �   �    	 
 �   |     .*� A� *� M� �Y*� �+� �� �W� *� #+� � *� �   �         ( -�       .��     .�� �    	�   �      �   s     )*� A� *� M� �Y*� �� Ŷ �W� *� #� � �   �      " # % ('�       )��     )�  �    	�   �      �   �     2*� A� *� M� �Y*� �+,� ζ �W� *� #+� � L,+� � �   �      * + - *. 10�        2��     2��    2�� �       2�� �    �   	�  �  �   �  S  �       �*� �Y*� ڵ +*� �Y*� ߵ q*� |� *� *� q� u*� �Y*� � *� +*� � �*� +*� � �*� +� �L+*� � � +� � +� � �Y*� Y� �W� �� �*�� *� /�   �   :   3 5 R S *Y 6Z A[ L\ T] ^^ e_ }a �b �d�       ���   T 5�� �   
 *� R �
  1  �  �    �*� � 
*� |� �*� +�*� +*� ��*�Y*� *��� *� D� "�Y��L+�"Y*+�$�'� �Y+��L*� A� *�-Y++�/�3� '� *� '*� �6Y*� �8�;A�C�I�M� ?*� D� A�QY�SM,�TY*,�V�Y*� +],�_*� +`�bY*�d�_� *� +�eW*� *� +�eW*� *� �i�m+*� +�q*� +
�u*� +*� +�x�|*� +���_+����*� =� *� *� ��W� *� *� *� =��*� ��*� ��*� ��*� +��*� +���   �   � %  g h j k $l 7n >o Mp ]w ly sz �| �~ � �� �� �� �� �� �� �� �� �����+�8�C�J�Y�h�o�v�}������   *  M ��  � *��   ���   l �� �    
 � M� � ]� f �� �   �     2+� +��� �*� D��N-,,��d��*� +���*� +���   �      � � � �  � *� 1��   *    2��     2��    2��   �� �    �   	�  �      �   �     F*�� �*� � �*� '� 
*� '��*� L*� *� +��*� ��*� ��*� ���   �   6   � � � � � � � #� (� 0� 7� >� E��       F��   # #�� �      �  �   /     *� +�   �      ��       ��   	  �  P     z*� �>+� �66� 6� ]� V*�ĸ�6+�ĸ�6� � 6����� *� #*��6+��6� � 	����*�ΰ   �   F   � � � � � � *� 5� <� ?� E� R� Z� b� i� l� r��   f 
 *   5 
  Z   b 
    z�     z�    z    u	   o
	   l	 �    � ,&�          � �   /     *� /�   �       /�       �   �   /     *� +�   �       /�       �   �   /     *� '�   �       /�       �   �   /     *� #�   �       /�       �   �   /     *� �   �       /�       �   � �   /     *� �   �       /�       �   �   /     *� �   �       /�       �   �   ;     *Z� �   �       /�       �        �   /     *� �   �       /�       �   �   :     *� �   �       /�       �        ! �   E     *+,� �   �       /�        �     �    "� #$ �   :     *+� �   �       /�       �     � %& �   /     *� �   �       /�       �   '  �   #      � 3Y� 2� X�   �       5 (   )*   r  � +  � ,	- -  � .  � /  � 0@1 H3  �       � �4  5 
"      T      b      6    