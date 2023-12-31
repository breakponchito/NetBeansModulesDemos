����   4!  +org/netbeans/swing/tabcontrol/plaf/TabState  java/lang/Integer	     	alarmTabs Ljava/util/HashSet;	  
   attentionToggle Z
     stopAlarmTimer ()V
      java/lang/Object <init>	     pressedIndex I	     containsMouseIndex	     closeButtonContainsMouseIndex	  ! "  mousePressedInCloseButtonIndex	  $ %  mouseInTabsArea	  ' (  active	  * +  selectedIndex	  - .  prev	  0 1  curr	  3 4  lastChangeType	  6 7  lastAffected	  9 :  
lastChange < java/util/HashSet
 ; >  ? (I)V	  A B  highlightTabs	  D E F 
alarmTimer Ljavax/swing/Timer;  � 
  I J K 
isAlarmTab (I)Z
  M N K isHighlightTab   
  Q R S getState (I)I
  U V W stateToString (I)Ljava/lang/String;
  Y Z [ possibleChange (III)V
  ] ^ ? removeAlarmTab
  ` a ? removeHighlightTab
  c Z d (ZZI)V
  >
 ; g h i contains (Ljava/lang/Object;)Z
 ; k l m isEmpty ()Z
 ; o p i add
  r s ? 
repaintTab
  u v  startAlarmTimer
  x y z valueOf (I)Ljava/lang/Integer;
 ; | } i remove  -org/netbeans/swing/tabcontrol/plaf/TabState$1
 ~ �  � 0(Lorg/netbeans/swing/tabcontrol/plaf/TabState;)V � javax/swing/Timer
 � �  � #(ILjava/awt/event/ActionListener;)V
 � � � � 
setRepeats (Z)V
 � � �  start
 � � � m 	isRunning
 � � �  stop
  � �  repaintAllTabs
  � � m hasAlarmTabs
  � � m hasHighlightTabs
 ; � � � iterator ()Ljava/util/Iterator; � � � � m java/util/Iterator hasNext � � � � next ()Ljava/lang/Object;
  � � � intValue ()I � � } 
 ; � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Ljava/lang/Integer;
 � � � � � org/openide/util/Utilities toPrimitiveArray '([Ljava/lang/Object;)Ljava/lang/Object; � [I
 � � � � � java/util/Arrays sort ([I)V
 � � � � � javax/swing/event/ListDataEvent 	getIndex0
 � � � � 	getIndex1
 ; � �  clear
  � � ? addAlarmTab
  � � ? addHighlightTab
 � � � � � 8org/netbeans/swing/tabcontrol/event/ComplexListDataEvent 
getIndices ()[I � <org/netbeans/swing/tabcontrol/event/VeryComplexListDataEvent
 � � � � getDiff 1()Lorg/netbeans/swing/tabcontrol/event/ArrayDiff;
 � � � � � -org/netbeans/swing/tabcontrol/event/ArrayDiff 
getOldData *()[Lorg/netbeans/swing/tabcontrol/TabData;
 � � � � asList %([Ljava/lang/Object;)Ljava/util/List;
 � � � � 
getNewData � � � � � java/util/List get (I)Ljava/lang/Object; � � � � indexOf (Ljava/lang/Object;)I���
  � � � change (IIII)V � java/lang/StringBuffer
 � > TabState [lastTab=
 � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 	 W tabToString 	 currTab=  lastAffected=  lastChangeType=
  W changeToString  lastChange= 	 <active=
 � (Z)Ljava/lang/StringBuffer;  sel=  mouse=  inTabs=! 	 pressed=#  inCloseButton=%  pressedCloseButton=' >]
 �)*+ toString ()Ljava/lang/String;
 -./ maybeRepaint (II)V
 12 S getRepaintPolicy4 	no change6 
tab to tab8 tab to none: none to tab< tab to self> all tabs@ java/lang/StringBuilder
? C ??? 
?EF -(Ljava/lang/String;)Ljava/lang/StringBuilder;
?HI (I)Ljava/lang/StringBuilder;
?)L none
 N* WP java/lang/StringR 
clip rightT 	clip leftV armedX pressedZ selected (] not onscreen_ leftmosta 	rightmostc in closebuttone before selectedg after selectedi mouse in tabs areak mouse pressed in close button
 � 
 �no � length
 �qr (C)Ljava/lang/StringBuffer;t no flags setv =
 �xy (I)Ljava/lang/StringBuffer;{ repaint nothing} REPAINT_ON_MOUSE_ENTER_TAB $REPAINT_ALL_ON_MOUSE_ENTER_TABS_AREA� #REPAINT_ON_MOUSE_ENTER_CLOSE_BUTTON� REPAINT_ON_MOUSE_PRESSED� &REPAINT_SELECTION_ON_ACTIVATION_CHANGE� %REPAINT_ALL_TABS_ON_ACTIVATION_CHANGE� REPAINT_ON_SELECTION_CHANGE� $REPAINT_ALL_TABS_ON_SELECTION_CHANGE� REPAINT_ON_CLOSE_BUTTON_PRESSED	 ��  
STATE_LAST 
CLIP_RIGHT ConstantValue    	CLIP_LEFT    ARMED    PRESSED    SELECTED    ACTIVE     NOT_ONSCREEN   @ LEFTMOST   � 	RIGHTMOST    CLOSE_BUTTON_ARMED    BEFORE_SELECTED    AFTER_SELECTED    MOUSE_IN_TABS_AREA    MOUSE_PRESSED_IN_CLOSE_BUTTON     	ATTENTION  @  BEFORE_ARMED BUSY    	HIGHLIGHT    	Signature (Ljava/util/HashSet<Ljava/lang/Integer;>; 	NO_CHANGE     CHANGE_TAB_TO_TAB CHANGE_TAB_TO_NONE CHANGE_NONE_TO_TAB CHANGE_TAB_TO_SELF ALL_TABS Code LineNumberTable LocalVariableTable this -Lorg/netbeans/swing/tabcontrol/plaf/TabState; tab result StackMapTable MethodParameters getStateString clearTransientStates 
setPressed i setContainsMouse setCloseButtonContainsMouse setMousePressedInCloseButton setSelected setMouseInTabsArea (Z)Z b 	setActive alarmTab in Ljava/lang/Integer; added wasEmpty highlightTab empty wasAttentionToggled 	contained removed al Ljava/awt/event/ActionListener; isDisplayable 	pruneTabs Ljava/util/Iterator; max getAlarmTabs alarms intervalAdded $(Ljavax/swing/event/ListDataEvent;)V changed 
highlights evt !Ljavax/swing/event/ListDataEvent; end intervalRemoved indicesAdded =(Lorg/netbeans/swing/tabcontrol/event/ComplexListDataEvent;)V j indices e :Lorg/netbeans/swing/tabcontrol/event/ComplexListDataEvent; indicesRemoved alarm 	addedSome indicesChanged o Ljava/lang/Object; idx ve >Lorg/netbeans/swing/tabcontrol/event/VeryComplexListDataEvent; dif /Lorg/netbeans/swing/tabcontrol/event/ArrayDiff; old Ljava/util/List; nue contentsChanged prevVal currVal type lastTab currTab sb Ljava/lang/StringBuffer; 
changeType rpol go st states [Ljava/lang/String; vals repaintPolicyToString policy names 
access$000 x0 
access$102 1(Lorg/netbeans/swing/tabcontrol/plaf/TabState;Z)Z x1 
access$100 0(Lorg/netbeans/swing/tabcontrol/plaf/TabState;)Z 
access$200 B(Lorg/netbeans/swing/tabcontrol/plaf/TabState;)Ljava/util/HashSet; <clinit> 
SourceFile TabState.java InnerClasses!     2 �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �    G �  �   � �  �    O 	�                    "     %     (     +     .     1     4     7     :    }  �   �   �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   � �  �   �    �   �  B  �   �  E F        �  �   � �  �   � �  �   � �  �   � �  �   � �  �    � /    �   �     e*� *� *� *� *�  *� #*� &*� )*� ,*� /*� 2*� 5*� 8*� ;Y� =� *� ;Y� =� @*� C*� 	�   �   F    `  � 	 �  �  �  �  � " � ' � , � 1 � 6 � ; � @� M� Z� _��       e��    R S �  f     �=*� � �=*� � �=*� � 	 �=*�  � 	  �=*� #� 	 �=*� &�  �=*� )� �=� *� )`� 	 �=*� )d� 	 �=*� d� G�=*� H� 	@ �=*� L� O�=�   �   j    �  � 
 �  �  �  � #  ) 1 7 > D K	 P X ] k q { � � � � � � ��        ���     ��    ��  �    � �   �    � W �   =     	*� P� T�   �      "�       	��     	�  �   �   �  �   |     .*� *� *� *�  *� #*� 2*� 8*� ,*� /�   �   * 
  + , 
- . / 0 1 #2 (3 -4�       .��   � S �   i     %**� � ,*� *� /**� ,*� /� X*� ,�   �      > ? @ A  B�       %��     %�  �   �   � S �   h     $**� � ,*� *� /**� ,*� /� X*� ,�   �      M N O P Q�       $��     $�  �   �   � S �   j     &**� � ,*� *� /**� ,*� / � X*� ,�   �      ^ _ ` a !b�       &��     &�  �   �   � S �   j     &**�  � ,*�  *� /**� ,*� /  � X*� ,�   �      r s t u !v�       &��     &�  �   �   � S �   {     /**� )� ,*� )*� /*� \*� _**� ,*� /� X*� ,�   �      � � � � � � *��       /��     /�  �   �   �� �   _     *� #=*� #* � b�   �      � � 
� ��        ��     �     .  �   �   �� �   v     $*� &=*� &* � b**� )� \**� )� _�   �      � � 
� � � "��        $��     $�     .  �   �    J K �   ^     *� 	� *� � Y� e� f� � �   �      ��       ��     �  �    @�   �    � ? �   �     H� Y� eM*� ,� f>*� � j6� *� � Y� e� nW*� q� *� t*� 	*� q�   �   .   � 	� � � � /� 4� 9� =� B� G��   4    H��     H�   	 ?��   6�    -�  �    � 4 �   �    N K �   a     "*� @� w� f� *� � w� f� � �   �      ��       "��     "�  �     @�   �    � ? �   l     *� @� w� n=� *� q�   �      � � � ��        ��     �    
�  �    � �   �    ^ ? �   �     G� Y� eM*� ,� f>� 3*� ,� {W*� � j6*� 	6*� � j� *� � *� q�   �   .   � 	� � � � (� .� 8� <� A� F��   >  ( �   . �     G��     G�   	 >��   5�  �    � <     � 	�   �    a ? �   l     *� @� w� {=� *� q�   �      � � � ��        ��     �    
�  �    � �   �    v  �   �     /*� C� #� ~Y*� �L*� �Y�+� �� C*� C� �*� C� ��   �      � �   ' .�      ��    /��  �    '  � m �   ,     �   �      �       ��      �   e     "*� C� *� C� �� *� C� �*� 	*� ��   �          !�       "��  �    !   � m �   E     *� � j� � �   �      �       ��  �    @   � m �   E     *� @� j� � �   �      �       ��  �    @  � ? �   �     r*� �� *� �� �*� � �M,� � � ,� � � � ����,� � ���*� @� �M,� � � ,� � � � ����,� � ���*� � j� *� �   �   .   # $ &  ' 0( 9+ J, Z- c0 m1 q3�   *   "��  A "��    r��     r�  �    �  �� !�  �� !�   �    � � �   W     *� � � �� �� �� �L+� �+�   �      6 7 8�       ��    � �   �� �  -     �+� �=+� �>*� �� l*� � � �� �� �� �:66�� ".� \.d``O6����� $*� � �6�� *.� Є���*� �� l*� @� � �� �� �� �:66�� ".� \.d``O6����� $*� @� �6�� *.� ӄ���   �   v   > ? 
@ A 'B *C 5D >E KF NC TI YJ `K kL tK zP �Q �R �S �T �U �V �S �Y �Z �[ �\ �[ �`�   z  - '�   c �   ' S� �  * P�   � '�   � �   � S� �  � P�     ���     ���   � �   
 ��  �   4 
� -   � �   � � � � " � � � � �   �    �� �  {    �*� ��;+� �=+� �>*� � � �� �� �� �:� �� z66�� -.� \.dO� .� 	O����� <*� � �66�� .� *.� �6����� *� �66�� $.� .� O6����6�� ".� \.d`dO6����� <*� � �66�� .� *.� �6����� *� *� �� �+� �=+� �>*� @� � �� �� �� �:� �66�� $.� .� O6����6�� ".� \.d`dO6����� -*� @� �6�� .� *.� ӄ���   �   D  c d e g 'h ,j 1l 4m ?n Ho Tp ]q cm it nu uv xw �x �y �z �w �} �~ �� �� �� �� �� �� �� �� �� �� �� �������$�-�0�6�;�?�F�K�P�f�k�n�y��������������������������������   �  7 2�   { #�   x /�   4 t�   � )�   � '�   #�   /�   3 �   .�   '� �  � ��  q )�  � '�  �  �  K � �  P ��  f �� � n ��    ���    ��� �   � � 7   � �  � � � � �  � "� �  � � � �    �  � 1   � �  "� �  � � �    �  �   �    �� �  �    *� �� �*� � � �� �� �� �M,� �+� �N-� �66-�� /6,�� ,.-.� ,\.`O6��������� **� � �6,�� ,.� *,.� Є���*� �� �*� @� � �� �� �� �M,� �+� �N-� �66-�� /6,�� ,.-.� ,\.`O6��������� **� @� �6,�� ,.� *,.� ӄ���   �   � '  � � �  � %� )� ,� 6� @� K� S� V� \� b� g� n� x� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������   �  9 #�   / 3�   q �    r� �  % i� �  , b�   � #�   � 3�   � �   � r� �  � i� �  � b�    ��    �� �   f � /   � � �  � 	� � � �    �  � .   � � �  � 	� � � �    �  �   �    �� �  *    �*� �� �+� �M,� �*� � � �� �� �� �N-� �--�d.,.� �66-�� ,6,�� -.,.� -O6�������6-�� 3-.66,�� ,.� -\.dO6�������� 8*� � �66-�� -.� *-.� �6����� *� *� �� �+� �M,� �*� @� � �� �� �� �N-� �--�d.,.� �66-�� ,6,�� -.,.� -O6�������6-�� 3-.66,�� ,.� -\.dO6�������� )*� @� �6-�� -.� *-.� ӄ���*� ��   �   � >  � � � � %� )� 5� 8� B� L  W \ _� e� k u {	 �
 � � �	 � � � � � � � � � � � �# �$ �% �'(*,-!/+061;2>/D-J6T8Z9d:m;u<x9~6�A�B�C�D�E�C�K�L�   �  E  �   ; 0�   ~ !�   { $�   n 7�   � �   � +�   8 ��    �� �  % �� � $  �   0�  ] !�  Z $�  M 7�  � �   ��   � �� �  �� �   ���    ��� �   � � ;   � � �  � 	� � � � � � � � �    �  � :   � � �  � 	� � � � � � � �    �  �   �    �� �  F    �*� �� �+� ܙ �+� �M+� ܶ �N-� � �:-� � �:*� � � �� �� �� �:66�� D.� � :		� � 6

.� � �6	� � O����� ;*� � �66		�� 	.� *	.� �6�	���� *� *� �� �+� ܙ �+� �M+� ܶ �N-� � �:-� � �:*� @� � �� �� �� �:66�� D.� � :		� � 6

.� � �6	� � O����� ,*� @� �6�� .� *.� ӄ���   �   � -  O P Q S U $V -X CZ F[ Q\ _] j^ ~_ �[ �a �b �c �d �e �f �g �d �j �k �p �q �r �t �v �w �y{| }.~9M�[|a�f�m�x��������   �  _ -�� 	 j "�  
 I I�   � "�  	 � .�    ���   ���  $ ���  - � �  C �� �  F ��  . -�� 	9 "�  
 I�  p �   � ���  � ���  � ���  � � �  }� �  z�    ���    ��� �   � � I 	  � � � � � �  � 0   � � � � � �  �     � � � � � �  � � � �    �  � H 	  � � � � � �  � 0   � � � � � �  �     � � � � � �  � � �    �  �   �    � �   J     	*� �� ��   �   
   � ��       	��     	�� �    �   �    Z d �   �     .� *� 2� 	*�� 2*� 2� *�� 5*��*� 2� ��   �      � � � � �  � -��   *    .��     .     .     .  �    �           Z [ �   �     D� *� 2� "� *� 2� � *� 2� *� 2*� 2� *� 5**� 2� ��   �   .   � � � � � � '� ,� 3� 8� C��   *    D��     D     D     D  �    �          *+ �  �    � �Y2� L+�W+*� ,��W+
�W+*� /��W+�W+*� 5��W+�W+*� 2��W+�W+*� 8� T�W+�W+*� &�W+�W+*� )��W+�W+*� ��W+�W+*� #�W+ �W+*� ��W+"�W+*� ��W+$�W+*�  ��W+&�W+�(�   �   n   � 
� � � &� 2� :� F� N� Z� b� n� v� � �� �� �� �� �� �� �� �� �� �� �� �� ���      ��   
 �   � � �   �     >*� 8� *�,� &� 
*�,��� *�0~� *� ��*�,�   �   .   � � � � �  � !� 2� 6� 7� =��   4    >��     >     >     >     >	  �    �         	   ./ �  �    *�0>6�    �   	      p      �      �       R      �      �       �  @    �      �~� � 6 ~� ��=6� �~� *� � � 6*� � h~� � 6� X~� � 6� H ~� � 6� 6~� � 6� %@~� � 6 �~� �=6� 6� �� 
*� �� *� q�   �   r   �   	 \ j q	 t
 z � � � � � � � � �  �! �# �$ �& �' �, �./025�   4   ��    �       
   	  �   ' � \
@@		@	@@
@
@�   	�     s ? �   �   �     W �   �     i�     S          ;      ?      C      G      K���   O3�5�7�9�;�=��?Y�AB�D�G�J�   �   "   < <> @@ DB HD LF PH TJ�       i �   �   	 <�    �   	 W �   \     �� =�� K��M�   �      O P 
Q R T�       �   �    
�   �    V W �  �    �OYQSYSSYUSYWSYYSY[SY\SY^SY`SY	bSY
dSYfSYhSYjSL�
YOYOYOYOYOY OY@OY �OY OY	 OY
 OY OY OY  OM� �Y�lN6,�� ),.~� -�m� 
-,�pW-+2�W����-�m� -s�W-u�W-�wW-�(�   �   :   \ ba �f �g �h �i �j �l �g �o �p rst�   4  � -�        b �  � Z �  � R �    � �  � �  � �       W �  W     �� z�	�OY|SY~SY�SY�SY�SY�SY�SY�SY�SL	�
YOYOYOYOYOY OY@OY �OY OM� �Y�lN6,�� +,.~� -+2�W,�d� 
-+�pW����-�(�   �   2   x y { G� {� �� �� �� �� �� �� ���   4  � /�     �    G s  { ? �  � 7 �    � }  � �  (� �     2 S �   �   � �   /     *� �   �       `�       �   �   ;     *Z� 	�   �       `�       �        �   /     *� 	�   �       `�       �   �   /     *� �   �       `�       �     �         O���   �       �        
  ~      