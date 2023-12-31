����   49  java/awt/Font
      java/lang/Object <init> ()V 
 !org/openide/text/PrintPreferences
      org/openide/util/NbPreferences 	forModule 0(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
      java/awt/print/PrinterJob defaultPage ()Ljava/awt/print/PageFormat;
      java/awt/print/PageFormat getPaper ()Ljava/awt/print/Paper;
 	     getPreferences ()Ljava/util/prefs/Preferences; " pageOrientation
  $ % & getOrientation ()I
 ( ) * + , java/util/prefs/Preferences getInt (Ljava/lang/String;I)I . 	pageWidth
 0 1 2 3 4 java/awt/print/Paper getWidth ()D
 ( 6 7 8 	getDouble (Ljava/lang/String;D)D : 
pageHeight
 0 < = 4 	getHeight ? imageableAreaWidth
 0 A B 4 getImageableWidth D imageableAreaHeight
 0 F G 4 getImageableHeight I imageableAreaX
 0 K L 4 getImageableX N imageableAreaY
 0 P Q 4 getImageableY
  S T U setOrientation (I)V
 0 W X Y setSize (DD)V
 0 [ \ ] setImageableArea (DDDD)V
  _ ` a setPaper (Ljava/awt/print/Paper;)V
 ( c d e putInt (Ljava/lang/String;I)V
 ( g h i 	putDouble (Ljava/lang/String;D)V k wrap
 ( m n o 
getBoolean (Ljava/lang/String;Z)Z
 	 q r s getWrap ()Z
 ( u v w 
putBoolean (Ljava/lang/String;Z)V y headerFormat { CTL_Header_format
 } ~  � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 ( � � � get 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 	 � � � getHeaderFormat ()Ljava/lang/String;
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z
 ( � � � put '(Ljava/lang/String;Ljava/lang/String;)V � footerFormat � CTL_Footer_format
 	 � � � getFooterFormat � headerFontName � 
Monospaced � headerFontStyle � headerFontSize
  �  � (Ljava/lang/String;II)V
 	 � � � getHeaderFont ()Ljava/awt/Font;
  �
  � � � getName
  � � & getStyle
  � � & getSize � footerFontName � footerFontStyle � footerFontSize
 	 � � � getFooterFont � headerAlignment	 � � � � � +org/openide/text/PrintPreferences$Alignment CENTER -Lorg/openide/text/PrintPreferences$Alignment;
 � � � � name
 � � � � valueOf A(Ljava/lang/String;)Lorg/openide/text/PrintPreferences$Alignment;
 	 � � � getHeaderAlignment /()Lorg/openide/text/PrintPreferences$Alignment; � footerAlignment
 	 � � � getFooterAlignment � lineAscentCorrection
 ( � � � getFloat (Ljava/lang/String;F)F
 	 � � � getLineAscentCorrection ()F � "java/lang/IllegalArgumentException
 � 
 ( � � � putFloat (Ljava/lang/String;F)V
 	 	 	 � � � INSTANCE #Lorg/openide/text/PrintPreferences; 	PROP_WRAP Ljava/lang/String; ConstantValue PROP_HEADER_FORMAT PROP_FOOTER_FORMAT PROP_HEADER_ALIGNMENT PROP_FOOTER_ALIGNMENT PROP_PAGE_ORIENTATION PROP_PAGE_WIDTH PROP_PAGE_HEIGHT PROP_PAGE_IMAGEABLEAREA_Y PROP_PAGE_IMAGEABLEAREA_X PROP_PAGE_IMAGEABLEAREA_WIDTH PROP_PAGE_IMAGEABLEAREA_HEIGHT PROP_HEADER_FONT_NAME PROP_HEADER_FONT_STYLE PROP_HEADER_FONT_SIZE PROP_FOOTER_FONT_NAME PROP_FOOTER_FONT_STYLE PROP_FOOTER_FONT_SIZE DEFAULT_FONT_NAME DEFAULT_FONT_STYLE I     DEFAULT_FONT_SIZE    PROP_LINE_ASCENT_CORRECTION Code LineNumberTable LocalVariableTable this getPageFormat 8(Ljava/awt/print/PrinterJob;)Ljava/awt/print/PageFormat; pj Ljava/awt/print/PrinterJob; 
pageFormat Ljava/awt/print/PageFormat; p Ljava/awt/print/Paper; 
paperWidth D paperHeight iaWidth iaHeight iaX iaY MethodParameters setPageFormat (Ljava/awt/print/PageFormat;)V pf setWrap (Z)V Z StackMapTable setHeaderFormat (Ljava/lang/String;)V s setFooterFormat style size setHeaderFont (Ljava/awt/Font;)V f Ljava/awt/Font; setFooterFont setHeaderAlignment 0(Lorg/openide/text/PrintPreferences$Alignment;)V 	alignment setFooterAlignment setLineAscentCorrection (F)V 
correction F <clinit> 
SourceFile PrintPreferences.java InnerClasses 	Alignment 1 	      � �    � �  �    j  � �  �    x  � �  �    �  � �  �    �  � �  �    �  � �  �    !  � �  �    -  � �  �    9  � �  �    M  � �  �    H  � �  �    >  � �  �    C  � �  �    �  � �  �    �  � �  �    �  � �  �    �  � �  �    �  � �  �    �  � �  �    �    �      �     �  �    �        /     *� �          U       	 �   
             	� �          X 	
   I 	    �L*� L+� M� !+� #� '>� -,� /� 59� 9,� ;� 59� >,� @� 59� C,� E� 59
� H,� J� 59� M,� O� 59+� R,� V,
� Z+,� ^+�      >    c  d  e  f  g ' h 5 j C k Q l _ m m o r p z q � r � s   f 
   �    �   �   t "  ' f  5 X  C J  Q < 
 _ .  m         	    �     g� !*� #� b� -*� � /� f� 9*� � ;� f� >*� � @� f� C*� � E� f� H*� � J� f� M*� � O� f�      "    {  |  } *  9 � H � W � f �       g        	 r s    "      
� j� l�          � 	    M     � p� �� j� t�          �  �  �        k           k   	 � �    0      � x	z� |� ��          � 	 �  � 	!"    P     � �*� �� �� x*� ��          �  �  �       # �          #   	 � �    0      � �	�� |� ��          � 	 �  � 	$"    P     � �*� �� �� �*� ��          �  �  �       # �          #   	 � �    u     +� ��� �K� �� '<� �� '=� Y*� ��          �  �  �   �         � �    %    &  	'(    s     0� �*� �� �� �*� �� �� �*� �� b� �*� �� b�          �  �  � # � / �       0)*          )   	 � �    u     +� ��� �K� �� '<� �� '=� Y*� ��          �  �  �   �         � �    %    &  	+(    s     0� �*� �� �� �*� �� �� �*� �� b� �*� �� b�          �  �  � # � / �       0)*          )   	 � �    *      � �� �� Ŷ �� Ȱ          � 	,-    P     � �*� �� �*� Ŷ ��          �  �         . �          .   	 � �    *      � в �� Ŷ �� Ȱ          	/-    P     � �*� �� �*� Ŷ ��                  . �          .   	 � �    "      
� �� ׮          	01    e     !� �"�� �"�� � �Y� Ὸ �"� �          	  !  "       !23       	   2   4     #      � 	Y� � �          * 5   67   
  � 	8@