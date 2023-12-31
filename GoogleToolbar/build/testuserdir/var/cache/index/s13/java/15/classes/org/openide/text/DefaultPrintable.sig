����   4�
      java/lang/Object <init> ()V	  	 
   !org/openide/text/DefaultPrintable 	startPage I  "java/lang/IllegalArgumentException
  
     replaceEmptyIterators +([Ljava/text/AttributedCharacterIterator;)V	     styledTexts ([Ljava/text/AttributedCharacterIterator;  java/util/ArrayList
     (I)V	      textLayouts Ljava/util/List;	  " # $ pageIndices [I	  & '  pageIndicesSize	  ) *  currentLayout	  , -  currentStyledText	  / 0 1 lineBreakMeasurer !Ljava/awt/font/LineBreakMeasurer; 3 java/lang/Integer���	  6 7  maxPage	  9 :   startLayouts	  < = $ lineIndices	  ? @ A pageArgs [Ljava/lang/Object; C java/util/Date
 E F G H I java/lang/System currentTimeMillis ()J
 B K  L (J)V N java/text/MessageFormat
  P Q R getHeaderFormat ()Ljava/lang/String;
 M T  U (Ljava/lang/String;)V	  W X Y header Ljava/text/MessageFormat; [  
 ] ^ _ ` a java/lang/String equals (Ljava/lang/Object;)Z	  c d e printHeader Z
  g h R getFooterFormat	  j k Y footer	  m n e printFooter
  p q r getIterators E(Ljavax/swing/text/Document;)[Ljava/text/AttributedCharacterIterator;
  t u v getFilename /(Ljavax/swing/text/Document;)Ljava/lang/String;
  x  y =([Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)V
  { | } 	printImpl 3(Ljava/awt/Graphics;Ljava/awt/print/PageFormat;IZ)I
   �  closeDialog � java/awt/print/Printable � java/lang/StringBuilder
 �  � Illegal page number=
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � (I)Ljava/lang/StringBuilder;
 � � � R toString
  T � java/awt/print/PrinterGraphics � � � � getPrinterJob ()Ljava/awt/print/PrinterJob;
  � � � isCancelled (Ljava/awt/print/PrinterJob;)Z � $java/awt/print/PrinterAbortException
 � 	  � � � cancellationPanel 5Lorg/openide/text/DefaultPrintable$CancellationPanel;
  � � � createCancellationPanel (Ljava/awt/print/PrinterJob;)V
 � � � �  3org/openide/text/DefaultPrintable$CancellationPanel 	setPageno
  � �  
packDialog	 � � � � � java/awt/Color black Ljava/awt/Color;
 � � � � � java/awt/Graphics setColor (Ljava/awt/Color;)V � java/awt/Graphics2D � java/awt/geom/Point2D$Float
  � � � getImageableXPatch (Ljava/awt/print/PageFormat;)F
  � � � getImageableYPatch
 � �  � (FF)V
 2  � java/awt/font/TextLayout
 M � � � format &(Ljava/lang/Object;)Ljava/lang/String;
  � � � getHeaderFont ()Ljava/awt/Font;
 � � � � getFontRenderContext #()Ljava/awt/font/FontRenderContext;
 � �  � E(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V
 � � � � 	getAscent ()F
 � � � � 
getDescent
 � � � � 
getLeading
  � � � getFooterFont
  � � � wrap ()Z
 � � � � � java/awt/print/PageFormat getImageableWidth ()D � java/lang/Float��
 � � � � getImageableHeight
 � � � � getImageableY
  � � � layoutForPage ?(IFLjava/awt/font/FontRenderContext;)Ljava/awt/font/TextLayout;	 � y F
 � 	getBounds ()Ljava/awt/geom/Rectangle2D;
 	
 getHeaderAlignment /()Lorg/openide/text/PrintPreferences$Alignment;
  computeStart L(Ljava/awt/geom/Rectangle2D;FLorg/openide/text/PrintPreferences$Alignment;)F
 � � isLeftToRight
 � � 
getAdvance	 � x
 � draw (Ljava/awt/Graphics2D;FF)V
  � getLineAscentCorrection
 !"# 
nextLayout >(FLjava/awt/font/FontRenderContext;)Ljava/awt/font/TextLayout;
 %& getFooterAlignment
 �()* getOrientation ()I
 �,-. getPaper ()Ljava/awt/print/Paper;
0123 � java/awt/print/Paper 	getHeight
 �56 � getImageableX
89:;< java/lang/Math round (D)J
0>? � getWidthABCD* java/util/List sizeAFGH get (I)Ljava/lang/Object;J java/awt/geom/Rectangle2D$Float	ILM widthO  java/awt/geom/Rectangle2D$Double	NQMR D	TUVWX +org/openide/text/PrintPreferences$Alignment LEFT -Lorg/openide/text/PrintPreferences$Alignment;	TZ[X RIGHT
 ]^_ getMeasurer D(Ljava/awt/font/FontRenderContext;)Ljava/awt/font/LineBreakMeasurer;
abc"d java/awt/font/LineBreakMeasurer (F)Ljava/awt/font/TextLayout;Afg a addi Page number k  is bigger than array size 
 mno increaseArray ([I)[I
8qrs max (II)I
au v K(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V
axy* getPosition{|}~* %java/text/AttributedCharacterIterator getEndIndex
���� � !org/openide/text/PrintPreferences getWrap
� P
� g
� �
� �
�%
�	
�� java/awt/Font� Courier
�� � (Ljava/lang/String;II)V� %org/openide/text/NbDocument$Printable���� createPrintIterators *()[Ljava/text/AttributedCharacterIterator;����* javax/swing/text/Document 	getLength���� getText (II)Ljava/lang/String;
 ]��* length
 ]��� charAt (I)C
 ]��� getChars (II[CI)V� %org/openide/text/AttributedCharacters
� 
�� �� $([CLjava/awt/Font;Ljava/awt/Color;)V
���� iterator )()Ljava/text/AttributedCharacterIterator;� %javax/swing/text/BadLocationException
����� org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)VA��� toArray (([Ljava/lang/Object;)[Ljava/lang/Object;� title���� getProperty &(Ljava/lang/Object;)Ljava/lang/Object;� UNKNOWN
 E��� 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V
 ��  �� org/openide/DialogDescriptor� CTL_Print_cancellation
����� org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;� 
CTL_Cancel� #org/openide/text/DefaultPrintable$1
�� � A(Lorg/openide/text/DefaultPrintable;Ljava/awt/print/PrinterJob;)V
�� � �(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;Ljava/lang/Object;ILorg/openide/util/HelpCtx;Ljava/awt/event/ActionListener;)V
����� org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer;
���� createDialog 1(Lorg/openide/DialogDescriptor;)Ljava/awt/Dialog;
 ��� 	setDialog (Ljava/awt/Dialog;)V	 ��� cancellationDialog Ljava/awt/Dialog;
����� java/awt/Dialog 
setVisible (Z)V
���  dispose
�   pack
  java/awt/print/PrinterJob cancel
 � �{
* getBeginIndex
  � getFontInstance	 � � white
� � #(CLjava/awt/Font;Ljava/awt/Color;)V	  fontInstance Ljava/awt/Font; Dialog ARG_SIZE ConstantValue    	Signature ,Ljava/util/List<Ljava/awt/font/TextLayout;>; Code LineNumberTable LocalVariableTable this #Lorg/openide/text/DefaultPrintable; iter filename Ljava/lang/String; StackMapTable  MethodParameters (Ljavax/swing/text/Document;)V doc Ljavax/swing/text/Document; print 2(Ljava/awt/Graphics;Ljava/awt/print/PageFormat;I)I i g Ljava/awt/Graphics; pf Ljava/awt/print/PageFormat; pageNo processDummy 
Exceptions9 java/awt/print/PrinterException pJob Ljava/awt/print/PrinterJob; 
pageNumber center dx layout Ljava/awt/font/TextLayout; 	startLine 
correction graphics Ljava/awt/Graphics2D; pen Ljava/awt/geom/Point2D$Float; pageBreakCorrection headerString footerString wrappingWidth 	pageBreak frCtx !Ljava/awt/font/FontRenderContext; 
pageExistsP java/awt/font/FontRenderContext ret 	isNewline (Ljava/awt/font/TextLayout;I)Z tl currentLine rect Ljava/awt/geom/Rectangle2D; 	alignment old measurer l frc lineNumbers lineNumbersFont document firstCharInDoc e 'Ljavax/swing/text/BadLocationException; f achs 'Lorg/openide/text/AttributedCharacters; chars [C 	iterators iters LocalVariableTypeTable 9Ljava/util/List<Ljava/text/AttributedCharacterIterator;>;g job ddesc Lorg/openide/DialogDescriptor; d setCancelled at achit 'Ljava/text/AttributedCharacterIterator; 
SourceFile DefaultPrintable.java InnerClasses CancellationPanelz java/awt/geom/Point2D Float 	Alignment~ java/awt/geom/Rectangle2D Double� org/openide/text/NbDocument 	Printable 0    �        
                      # $    '     *     -     0 1    7     :        = $    @ A    X Y    d e    k Y    n e    � �   ��       y    �     �*� *� +� +�� � Y� �+� *+� *� Yd� � *2�
� !*� %*� (*� +*� .*4� 5*� Y
� � 8**� !��
� ;*� � >*� >,S*� >� BY� D� JS*� MY� O� S� V*� OZ� \� � � b*� MY� f� S� i*� fZ� \� � � l�   !   ^    o  9 	 p  q  u  w # z 0 { 8 | = } B ~ G  L � R � _ � j � r � y � � � � � � � � � � �"        �#$     �%     �&' (   E �   ) ]  � � �    ) ]  ` �    ) ]  *   	%  &    +     E     *+� o+� s� w�   !   
    �  �"       #$     ,- *   ,   ./     �     =6*� � 6*� � 6*� � *+,� zW����*+,� z�   !   & 	   �  �  �  �  �  � $ � . � 4 �"   >   0     =#$     =12    =34    =5    :6 e (    � � � 7    8*   1  3  5    | }    �    )*� 5� 	*� ~�� "*� ~� Y� �Y� ��� �� �� �� ��+� �� *+� �� � � �� *� ~� �Y� ��*� �� +� �� +� �� � :*� �*� �� � � *� 6*� �� �*� �66+� �� �+� �:� �Y*,� �*,� ķ �:*� >� 2Y`� �S8	:
:*� b� 7� �Y*� V*� >� ͸ �� շ �:
	
� �
� �
� �bjbb8	*� l� 7� �Y*� i*� >� ͸ �� շ �:	� �j� �b� �bb8	� � ,� ��f� �8,� ��,� ��b	f8� �:6*� �:� �� �� *� 5� �� }*� b� s
� nY� 
� �b� 
�,� 퐸�8
�� � 
�ff8� 
�b� �Y� 
� �
� �bjb� 6Y� � ܸjb� �� � �f8� ��bb� �Y� � �� �b�jb� *� :�� *� l� l� g� b� Y� � �jb� �,� 퐸$�8�� 
b� �ff8� �b� �+� �� *+� �� � � �� *� ~� �Y� ��� 	*� ~��   !  " H   �  �  �  �  �  � 1 � H � L � T � b � m � s � z � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �3 DKaq	x{���������� �#�$'*-0AFCKDcG|�K�L�M�O�P�S�T�YZ[_!`%b'd"   �  m :;  � <  � J= � 0> F 6> �?@ � 5= � >   )#$    )12   )34   )5    ). e  ��A   ��B   ��CD  �mEF  �ZG 	 �WH@ 
 �TI@ a�J q�K x�LM {�N e (   } ""C� y   � � � � � �  :A� &   � � � � � �O �  � >J� � G� � %� IJ� "
7    8*   1  3  5  .    � �     x     %+�'� +�+�/+�4+� �cgI(�7��+�4��   !      t u w y"       QR    %#$     %34 (    *   3    � �     x     %+�'� +�+�=+� �+� �cgI(�7��+� ���   !      � � � �"       QR    %#$     %34 (    *   3   RS     u     #*� 8�@ � �*� 8�E +� � �   !      � � �"        ##$     #T@    #U  (    @*   	T  U   
     �     =*�I� *�I�KF� *�N�P�F%#�� �,�S� �,�Y� #%f�#%fn�   !   * 
  � � � � !� #� *� ,� 3� 7�"   4       =VW     =M    =XX   " (   
 � 
*   V  M  X   "#    *     h*� (*� �@ � >*� .:*,�\:� �#�`N*� -�e W� *� 8-�e W� *� *� (�E � �N*Y� (`� (-�   !   6   � � � � "� $� +� 6� =� H� K� \� f�"   H   2Y 1   +Z 1  +  [@    h#$     hJ    h\M  \ [@ (   & � $ aa� #  O �  � �  �*   	J  \    � �         �*� %`� .� Y� �Y� �h� �� �j� �*� %`� �� �� ��*� %� \*� %*� !�� **� !�l� !**� ;�l� ;*� !*� %*� �@ d�pO*� ;*Y� %Z`� %*� 8�@ d�pO**� !.� (*$-� �   !   * 
  � 
� 5� =� I� T� _� w� �� � "   *    �#$     �5     �J    �\M (    5)6*   5  J  \   ^_     �     h*� .� *�aY*� *� +2+�t� .� G*� .�w*� *� +2�z � /*� +*� �d� �*�aY*� *Y� +`Z� +2+�t� .*� .�   !       	  7 E G c"       h#$     h\M (    '*   \   
 � �           ��   !       
 Q R           ���   !      ! 
 h R           ���   !      & 
 � �           ���   !      + 
 � �           ���   !      0 
&           ���   !      5 

           ���   !      : 
 �           ���   !      ? 
] �           �   !      D 
^ �     &      ��Y����   !      I 
 q r    �     �*��� *���� ���Y���LMN� Y,� :**�� �� :66��� P��
� >d`�N-�`-����Y��M,-+� ���,���e W`6����� 
:���@ �{:�� W�  / � �� !   ^   S T X Z ![ #\ /_ >b Ad Nf Zg dh ri zj �k �l �d �q �o �p �s �t �v"   f 
 D W0   > ]_'  A Z`   � ab    �,-    �c  ! �de  # �fg  / �h    � i  j     / �hk (   ) � 2 ���lA ]  � P� B�*   ,   
 u v     c     *¹� � ]L+� 	ȧ +�   !   
   ~ �"       ,-    Q' (    �  ]@ ]*   ,   
no     N     *�h�
L*+*���+�   !      � � �"       Y $    Q $ *   Y    � �     �     R*� �Y+�ε ���Y*� ��Ҹ�� Y�ڸ�S�ڸ���Y*+�޷�M*��,���   !      � � � *� 4� F� Q�"        R#$     Rm;  F no *   m    �      V     *��� *����*����   !      � � � �"       #$  (      ��     O     +��+��*+��   !      � � 	� �"       #$     p� *   p     �      J     *��� 
*����   !      � � �"       #$  (      q �     =     +��   !   
   � �"       #$     m; *   m     � �     9     +��   !      �"       #$     m; *   m   
       �     =<*�� 7*2M,�	 ,�z � ��Y��N- ���*-��S���ɱ   !   "   � � � � #� /� 6� <�"   *  # re   *st   :0     =i   (   
 � 3� *   i    �     C      �� ��Y�����   !      � � �(     u   vw   :  � x  �y{ 	T�|@I}{ 	N} 	���	�      