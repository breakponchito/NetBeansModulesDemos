Êþº¾   4í	      5org/openide/explorer/propertysheet/ComboInplaceEditor checker DLorg/openide/explorer/propertysheet/ComboInplaceEditor$PopupChecker;
   	 
 prepareEditor ()V
     log (Ljava/lang/String;)V
     
 javax/swing/JComboBox 	showPopup
    
 <init>	     inSetUI Z	     
connecting	      hasBeenEditable	  " #  
needLayout	  % &  suppressFireActionEvent	  ( )  in_setSelectedItem + JComboBox.isTableCellEditor	 - . / 0 1 java/lang/Boolean TRUE Ljava/lang/Boolean;
  3 4 5 putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V 7 netbeans.ps.combohack
 - 9 : ; 
getBoolean (Ljava/lang/String;)Z
  = > ? setLightWeightPopupEnabled (Z)V
 A B C D E java/lang/Object getClass ()Ljava/lang/Class; G java/awt/AWTEvent       
  K L M enableEvents (J)V	  O P  tableUI
  R S 
 updateUI
  U V W getRenderer  ()Ljavax/swing/ListCellRenderer;	  Y Z [ originalRenderer Ljavax/swing/ListCellRenderer;
 ] ^ _ ` a >org/openide/explorer/propertysheet/ComboBoxAutoCompleteSupport install (Ljavax/swing/JComboBox;)Z	  c d  isAutoComplete
 f g h i j javax/swing/UIManager getLookAndFeel ()Ljavax/swing/LookAndFeel;
 l m n o p javax/swing/LookAndFeel getID ()Ljava/lang/String; r Aqua
 t u v w x java/lang/String equals (Ljava/lang/Object;)Z z Metal | PopupMenu.consumeEventOnClose
 f ~   put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    
 	addNotify
     
isEditable ()Z
     	getEditor ()Ljavax/swing/ComboBoxEditor;      javax/swing/ComboBoxEditor getEditorComponent ()Ljava/awt/Component;
      java/awt/Component addFocusListener !(Ljava/awt/event/FocusListener;)V
     	getLayout ()Ljava/awt/LayoutManager;      ¡ java/awt/LayoutManager layoutContainer (Ljava/awt/Container;)V
  £ ¤ ? setEditable ¦ java/lang/StringBuilder
 ¥  © Combo editor for 
 ¥ « ¬ ­ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;	  ¯ ° ± editor Ljava/beans/PropertyEditor;
 ¥ ³ ¬ ´ -(Ljava/lang/Object;)Ljava/lang/StringBuilder; ¶  setEditable (
 ¥ ¸ ¬ ¹ (Z)Ljava/lang/StringBuilder; » )
 ¥ ½ ¾ p toString À ! removeNotify forcing popup close
  Â Ã ? setPopupVisible
  Å Æ 
 removeNotify
  È É  removeFocusListener Ë java/awt/Insets
 Ê Í  Î (IIII)V
  Ð Ñ Ò 	getInsets ()Ljava/awt/Insets;	  Ô Õ Ö env 0Lorg/openide/explorer/propertysheet/PropertyEnv; Ø Combo editor connect to  Ú  env= Ü  javax/swing/DefaultComboBoxModel Þ ß à á â java/beans/PropertyEditor getTags ()[Ljava/lang/String;
 Û ä  å ([Ljava/lang/Object;)V
  ç è é setModel (Ljavax/swing/ComboBoxModel;)V ë Aorg/openide/explorer/propertysheet/editors/EnhancedPropertyEditor ê í î  supportsEditingTaggedValues
 ð ñ ò ó ô .org/openide/explorer/propertysheet/PropertyEnv getFeatureDescriptor  ()Ljava/beans/FeatureDescriptor; ö canEditAsText
 ø ù ú û ü java/beans/FeatureDescriptor getValue &(Ljava/lang/String;)Ljava/lang/Object;
 - u	 - ÿ  1 FALSE canAutoComplete	   strictAutoCompleteMatching
  £ 0org/openide/explorer/propertysheet/InplaceEditor
 success
   setActionCommand customListCellRendererSupport +java/util/concurrent/atomic/AtomicReference
 set (Ljava/lang/Object;)V javax/swing/ListCellRenderer
  setRenderer !(Ljavax/swing/ListCellRenderer;)V
 ! ,org/openide/explorer/propertysheet/PropUtils supportsValueIncrement 3(Lorg/openide/explorer/propertysheet/PropertyEnv;)Z
#$% wrapUpDownArrowActions ](Ljavax/swing/JComponent;Lorg/openide/explorer/propertysheet/IncrementPropertyValueSupport;)V' javax/swing/JComponent
 )* 
 reset
,-. 
isLoggable (Ljava/lang/Class;)Z
0 1 &(Ljava/lang/Class;Ljava/lang/String;)V
 34 setSelectedItem6 comboBoxEdited
 89 p getActionCommand; <Translating comboBoxEdited action command to COMMAND_SUCCESS= ,Combo editor firing ActionPerformed command=
 ?@ 
 fireActionEventB ,Combo editor reset setting selected item to  ÞDE p 	getAsTextG initialEditValue
 3 JKL getItem ()Ljava/lang/Object;
 A ½
 ]OPQ 	findMatch ,(Ljavax/swing/JComboBox;Ljava/lang/String;)I
 STU getItemCount ()I
 WXY 	getItemAt (I)Ljava/lang/Object;
 [\U getSelectedIndex
 ^_L getSelectedItem	 abc mdl 2Lorg/openide/explorer/propertysheet/PropertyModel;e #Combo editor set property model to 	 ghi cbKeyStrokes [Ljavax/swing/KeyStroke;k 'javax/swing/plaf/metal/MetalLookAndFeelm GTKo Nimbus
 qr  checkMacSystemVersion
tu  isWindowsVistaLaFw 
Kunststoff
yz{ createComboUI 7(Ljavax/swing/JComboBox;Z)Ljavax/swing/plaf/ComboBoxUI;
 }~ setUI  (Ljavax/swing/plaf/ComboBoxUI;)V
  R
& 	setBorder (Ljavax/swing/border/Border;)V	  1 syscheck 
os.version
 java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
 t indexOf (I)I
 t (II)I
 tU length
 t 	substring (II)Ljava/lang/String;
 ¡¢£ java/lang/Integer parseInt (Ljava/lang/String;)I
 -¥¦§ valueOf (Z)Ljava/lang/Boolean;© java/lang/NumberFormatException
 -«¬  booleanValue®  Combo editor show popup° java/lang/NullPointerException² ) Combo editor show popup later due to npe´ 7org/openide/explorer/propertysheet/ComboInplaceEditor$1
³¶ · :(Lorg/openide/explorer/propertysheet/ComboInplaceEditor;)V
¹º»¼½ javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V¿ javax/swing/text/JTextComponent
¾ÁÂ p getText
¾ÄÅÆ setSelectionStart (I)V
¾ÈÉÆ setSelectionEnd
 ËÌÍ getBackground ()Ljava/awt/Color;
¾ÏÐÑ setBackground (Ljava/awt/Color;)V
ÓÔÍ getTextFieldBackground
¾Ö× 
 requestFocus
 ÙÚ 
 repaint
ÜÝÞ oU java/awt/event/FocusEvent
Üàá  getOppositeComponent
 ãä  isPopupVisible
 æçè processFocusEvent (Ljava/awt/event/FocusEvent;)Vê Focus event on combo editor
ì í /(Ljava/lang/Class;Ljava/awt/event/FocusEvent;)V
ïðñòó java/awt/KeyboardFocusManager getCurrentKeyboardFocusManager !()Ljava/awt/KeyboardFocusManager;
ïõö  getFocusOwner
 øù  isDisplayableû Borg/openide/explorer/propertysheet/ComboInplaceEditor$PopupChecker
úý þ s(Lorg/openide/explorer/propertysheet/ComboInplaceEditor;Lorg/openide/explorer/propertysheet/ComboInplaceEditor$1;)V
  	  psCommitOnFocusLoss failure
 ? 7org/openide/explorer/propertysheet/ComboInplaceEditor$2
¶
 ]
 setIgnoreSelectionEvents (Ljavax/swing/JComboBox;Z)V
  addAncestorListener '(Ljavax/swing/event/AncestorListener;)V
  
 installAncestorListener
  
  isAncestorOf (Ljava/awt/Component;)Z -org/openide/explorer/propertysheet/SheetTable
 < Combo editor lost focus - setting action command to failure ,No active popup checker, firing action event
 !" 
 firePopupMenuCanceled$ Gcombo editor popup menu canceled.  Requesting focus on editor component
 Ö
 '() processKeyEvent (Ljava/awt/event/KeyEvent;)V
+Ý, java/awt/event/KeyEvent
+./U 
getKeyCode
 12  hasFocus Þ45  isPaintable
 789 paintChildren (Ljava/awt/Graphics;)V
  Ð
<=>?Í java/awt/Graphics getColor
<ABÑ setColor
 DEU getWidth
 GHU 	getHeight
<JK Î fillRect	 ÊMNO left I
QRU getTextMarginT java/awt/Rectangle	 ÊVWO top	 ÊYZO right	 Ê\]O bottom
S Í Þ`ab 
paintValue *(Ljava/awt/Graphics;Ljava/awt/Rectangle;)V
 de9 paintComponent
 ghi setNextValue (Z)Z
klm getNextValue E(Lorg/openide/explorer/propertysheet/PropertyEnv;Z)Ljava/lang/Object;
 op setValue
rst 
updateProp 5(Lorg/openide/explorer/propertysheet/InplaceEditor;)Zv javax/swing/KeyStroke
uxyz getKeyStroke (IIZ)Ljavax/swing/KeyStroke;| java/awt/event/FocusListener~ "javax/swing/event/AncestorListener @org/openide/explorer/propertysheet/IncrementPropertyValueSupport Code LineNumberTable LocalVariableTable this 7Lorg/openide/explorer/propertysheet/ComboInplaceEditor; lafId Ljava/lang/String; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; val hadBeenEditable clear connect N(Ljava/beans/PropertyEditor;Lorg/openide/explorer/propertysheet/PropertyEnv;)V ref -Ljava/util/concurrent/atomic/AtomicReference; editable noAutoComplete customRendererSupport Ljava/lang/Object; pe LocalVariableTypeTable MLjava/util/concurrent/atomic/AtomicReference<Ljavax/swing/ListCellRenderer;>; java/lang/Throwable s o targetValue selIndex selItem 
editorItem getPropertyEditor ()Ljava/beans/PropertyEditor; getPropertyModel 4()Lorg/openide/explorer/propertysheet/PropertyModel; setPropertyModel 5(Lorg/openide/explorer/propertysheet/PropertyModel;)V pm getComponent ()Ljavax/swing/JComponent; getKeyStrokes ()[Ljavax/swing/KeyStroke; lf Ljavax/swing/LookAndFeel; id useClean m1 m2 nfex !Ljava/lang/NumberFormatException; d2 version d1 majv minv ui Ljavax/swing/plaf/ComboBoxUI; e  Ljava/lang/NullPointerException; jtc !Ljavax/swing/text/JTextComponent; c Ljava/awt/Component; fe Ljava/awt/event/FocusEvent; 
focusOwner isKnownComponent supportsTextEntry fl Ljava/awt/event/FocusListener; focusGained 	focusLost focus ke Ljava/awt/event/KeyEvent; ancestorAdded $(Ljavax/swing/event/AncestorEvent;)V event !Ljavax/swing/event/AncestorEvent; ancestorMoved ancestorRemoved g Ljava/awt/Graphics; ins Ljava/awt/Insets; Ljava/awt/Color;Ú java/awt/Color incrementValue decrementValue 	nextValue 	increment isIncrementEnabled 
access$001 x0 
access$200 L(Lorg/openide/explorer/propertysheet/ComboInplaceEditor;Ljava/lang/String;)V x1 
access$300 
access$402 (Lorg/openide/explorer/propertysheet/ComboInplaceEditor$PopupChecker;)Lorg/openide/explorer/propertysheet/ComboInplaceEditor$PopupChecker; <clinit> 
SourceFile ComboInplaceEditor.java InnerClasses PopupChecker     {}  hi   
      ° ±    Õ Ö    Z [   bc          P                #     &     d         )    
 1   .   ?   ;     *· *µ *µ *µ *µ !*µ $*µ ' **² ,¶ 26¸ 8 *¶ <*¶ @¦ 
* H¶ J*µ N *¶ Q**¶ Tµ X**¸ \µ b¸ e¶ kMq,¶ s y,¶ s {² ,¸ }W±      Z    H  < 	 >  ?  @  B  Í " I & J / M 7 N < Q E R L U Q W U X Y [ a ] i ^ p _  a  c              P   p      ÿ /    ü ( t    P     
    o     ,*· *¶  *¶ @¦ *¶ ¹  *¶ *¶ *¹  ±          i  k  l ! o + p       ,      !        ¤ ?    ¬     J*´ =*Y´ µ *· ¢*´  0*» ¥Y· §¨¶ ª*´ ®¶ ²µ¶ ª¶ ·º¶ ª¶ ¼· *µ !±          t  u  v  x  y D z I |        J     J    E      ü I             Æ 
    p     6*» ¥Y· §¨¶ ª*´ ®¶ ²¿¶ ª¶ ¼· *¶ Á*· Ä*¶ ¹  *¶ Ç±             $  (  5        6          Ñ Ò    Z     q¸ e¶ k¶ s » ÊY· Ì°*· Ï°                                   
    =     *µ ®*µ Ó±             
                        *µ *» ¥Y· §×¶ ª+¶ ²Ù¶ ª,¶ ²¶ ¼· *,µ Ó*+µ ®*» ÛY+¹ Ý · ã¶ æ*´ ®Á ê *´ ®À ê¹ ì § ,Æ ² ,,¶ ïõ¶ ÷¶ ý § >,¥ ² þ,¶ ï¶ ÷¶ ý § 6* § µ* *´ b  § ¶*	¶,¶ ï¶ ÷:Æ À:*´ X¶*À¶,¸ **¸"*¶ ¹  À&*¸"*¶(*µ § :*µ ¿±          j       %  *  /   @ ¢ J £ Y ¤ u ¥  § ¡ ¨ º © Á ° Í ± Ò ³ Ù ´ â µ ë ¸ ò ¹ ÷ º ½ ¿ À ¿ À Á   H  Ù   u     w   Í >        ±    Õ Ö      Ù     r û Y@ü @ÿ 
   Þ ð  ÿ     Þ ð  S C ÿ     Þ ð  ü 3 Aÿ    Þ ð 	   	   Õ               ]     ¸+ *¶ @¦ 	+¸/±          Ä  Å  Ç                       4    ÷     k*´ ' *µ '*´ Ó¸ 	*µ '±*µ '+Ç /*´ ®Æ (*´ ®¹ Ý Æ *´ ®¹ Ý ¾ *´ ®¹ Ý 2L+Æ *+·2*µ '§ M*µ ',¿±     b    Z b      >    Ò  Ó  Ô  ç  Ö  Ú ! ß E à Q ã U ä Z ç _ è b ç h è j é       k     k    
 4G            @ 
    ½     Z*´  
*´ ®Ç ±*´ ®Ç ±*´ $ ±5*¶7¶ s *:· *	¶*» ¥Y· §<¶ ª*¶7¶ ª¶ ¼· *·>±      2    ï  ð  ò  ó  ö  ÷  ú , û 3 ü : ÿ U  Y       Z              * 
    Û     jL*´ ®Æ -*» ¥Y· §A¶ ª*´ ®¹C ¶ ª¶ ¼· *´ ®¹C L*¶ @¦ +*´ ÓÆ $*´ Ó¶ ïÆ *´ Ó¶ ïF¶ ÷À tM,Æ ,L*+¶H±      * 
    		 )
 3 M ^ b d i      ^ G    j    h    	 ü 3 t0        ûL        p*¶  g*´ b V*¶ ¹I L+¥ G*+¶M¸N= *¶R¢ 	*¶V°*´ %*¶Z> *´ ®¥ *´ ®¹C °°*¶]°*¶ ¹I °*¶]°      B       ! " &# 2$ 8% ?& D' H( P) Z* \, a0 k2   *  D O  & ; O   I¡    p      ý 8 Aü !ø 	       ¢£    /     *´ ®°         8                ¤¥    /     *´`°         =                ¦§    Z     *» ¥Y· §d¶ ª+¶ ²¶ ¼· *+µ`±         B C D            ¨c    ¨         ©ª    ,     *°         H                «¬    .     ²f°         M                 S 
   #     ¸ eL+¶ kM*´ N A+Áj 6l,¶ s ,n,¶ s "q,¶ s 	¸p ¸s v,¶ s § > ***´ N¸x·|§ *·*´ N*¶ ¹  Á&~ *¶ ¹  À&¶±      :   S T 	U V %W .X :Y DZ P\ T] c_ gb {c e   *        ­®  	 ¯  P <°      ý : l t@ü #       r    x     
;<²Ç w¸M,.¶> ^,.`¶6 	,¶6,¶¸6,`¶¸6£   ¡ § ¸¤³§ :¸¤³§ 
¸¤³²¶ª¬  3 i l¨    J   k l m n o p q (r -s 3v >w Lx i{ ly nz u| x}    R  > +±O  L ²O  n ³´  ( MµO   m¶   f·O   ¸O    ¹O    0 ÿ 3  t  ý *@ÿ   t ¨ú ù  ~    |     *µ *+·|*µ § M*µ ,¿±   
            
                º»     R   º           
         "*­· *· § L*±· »³Y*·µ¸¸±     ¯         §    !¨      ¼½    "      N¯        	 
        m*¶ ¹  L+Á¾ I+À¾M,¶ÀN-Æ -¶ ,¶Ã,-¶¶Ç*´ N ,*¶Ê¶Î§ 
,¸Ò¶Î*´ N ,¶Õ*¶ Æ *¶ *¹  *¶Ø±      B   « 
­ ® ¯ ± &² +³ 3¶ :· E¹ L» S¼ W¿ ^À hÃ lÄ   *   A¾¿   <    m   
 cÀÁ     þ 3 ¾ tù 
 çè   ¢     ë+¶Ûí  +¶ß*¶ ¹  ¦ *¶â ±*+·å¸+ é¸/+¸ë¸î¶ôM*¶÷ j+¶Ûì  `,*¦ [*¶â T*¶  *· *´ N ;»úY*·ü¸¸§ ,*´ N %*´ Ó¥ *´ Ó¸ *¶ÿ»úY*·ü¸¸*¶Ø§ 7+¶Ûí  -*¶â &*¶÷ ²  *¶*¶»Y*·¸¸*¶Ø±      j   Ê Ë Ì !Î "Ñ 'Ó /Ô 7Õ =Ø DÚ aÛ hÜ lÞ sß á â ã æ «ë ²ì Êí Ðî ×ï Ûô æ  ê        ë     ëÂÃ  D §ÄÁ     "ü D (
   Â         Å    R     +*¶ ¹  ¦ § ¬                     ÀÁ     @   À         p    P     *¸	*+¶H*¸	±         
  
                          Æ     /     *¶ ¬                          
    T     *´ N **¶§ *·±                                       Z     *´  
*´ N *+·±         ' ( *            ÇÈ        Ç         Éè    e     *· *´ Ó¥ *´ Ó¸ *¶ÿ±         / 0 1 2            ¼Ã        ¼         Êè    Õ     _+¶ßM*,¶ T,*¶ ¹  ¥ G,*¥ ,Á ,À*¶ ±*¶*· *¶ ¹  *¶ Ç² Ç *· *¶±      .   7 9 : 1< 2? 9@ @A MC SD ZE ^H        _     _¼Ã   ZÀÁ    
 ü 1  +   ¼         " 
         2*· *¶  )¸î¶ôL*¶÷ +*¦ *#· *¶ ¹  ¶%±         M O P R S %T 1W      ËÁ    2      1       ()    q     $*+·&+¶*  +¶-  *¶*¶±         \ ^ _ ` #b       $     $ÌÍ     #   Ì         ÎÏ    O     »úY*·ü³ ² ¸¸±         j k l            ÐÑ    Ð         ÒÏ    ^     *´ ! *¶ Æ *¶ *¹  ±         q r t            ÐÑ        Ð         ÓÏ    5      ±         y            ÐÑ    Ð         89    j     !*´ ®Æ *¶0 *´ ®¹3  ±*+·6±         } ~          !     !ÔÕ        Ô         e9   M 
    *´ ®Æ *¶0 *´ ®¹3  y*¶:M+¶;N+*¶Ê¶@+*¶C*¶F¶I+-¶@§ :+-¶@¿,Y´L¸P`µL*´ ®+»SY,´L,´U*¶C,´X,´L`d*¶F,´U,´[`d·^¹_ § *+·c±  $ : B   B D B      B      $ , : ? B I L X j       *   nÖ×  $ iÀØ         ÔÕ     ÿ B  < ÊÙ 	ù C   Ô         Û     0     *·f¬                          Ü     0     *·f¬         ¥                hi   *     Z*µ $*¶â =*µ $¬*´ Ó¸ =*µ $¬*´ Ó¸jM,¦ >*µ $¬*,¶n*¸q>*µ $¬:*µ $¿     P    ! P   ( 8 P   ? I P   P R P      R   ª « ¬ ¹ ¬ ® ¯ !¹ &¯ (± 1² 6³ 8¹ =³ ?µ D· I¹ N· P¹ Wº      1 Ý    Z     ZÞ      ü  Aÿ       Þ   ß     B     *¶â § ¬         ¿             @      à·    /     *· ±          ,       á  âã    :     *+· ±          ,       á     ä å·    /     *· ±          ,       á  æç    0     *Y³ °          ,       á    è 
          c½uY(¸wSY&¸wSY(¸wSY&¸wSY"¸wSY!¸wSY"¸wSY!¸wS³f³ ³±      "    .  /  0 3 1 = 2 H 3 Z 7 ^g é   êë    ú ì ³            