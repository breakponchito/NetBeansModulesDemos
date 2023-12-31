Êþº¾   4 º
      java/awt/datatransfer/Clipboard <init> (Ljava/lang/String;)V  #javax/swing/event/EventListenerList
  
   ()V	      )org/openide/util/datatransfer/ExClipboard 	listeners %Ljavax/swing/event/EventListenerList;  /org/openide/util/datatransfer/ClipboardListener
     add -(Ljava/lang/Class;Ljava/util/EventListener;)V
     remove
     getListenerList ()[Ljava/lang/Object;   ,org/openide/util/datatransfer/ClipboardEvent
  "  # .(Lorg/openide/util/datatransfer/ExClipboard;)V  % & ' clipboardChanged 1(Lorg/openide/util/datatransfer/ClipboardEvent;)V
  ) * + getConvertors 8()[Lorg/openide/util/datatransfer/ExClipboard$Convertor; - . / 0 1 3org/openide/util/datatransfer/ExClipboard$Convertor convert J(Ljava/awt/datatransfer/Transferable;)Ljava/awt/datatransfer/Transferable; 3 ,org/openide/util/datatransfer/ExTransferable
 2 5 6 7 fireAccepted (I)V	 2 9 : ; multiFlavor "Ljava/awt/datatransfer/DataFlavor; = > ? @ A "java/awt/datatransfer/Transferable isDataFlavorSupported %(Ljava/awt/datatransfer/DataFlavor;)Z = C D E getTransferData 6(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object; G 1org/openide/util/datatransfer/MultiTransferObject F I J K getCount ()I F M N O getTransferableAt '(I)Ljava/awt/datatransfer/Transferable;
  Q R S transferableAccepted ((Ljava/awt/datatransfer/Transferable;I)V U java/lang/Exception
 2 W X  fireRejected
  Z [ \ transferableRejected '(Ljava/awt/datatransfer/Transferable;)V	  ^ _ ` contents $Ljava/awt/datatransfer/Transferable;
  b c \ transferableOwnershipLost	  e f g owner &Ljava/awt/datatransfer/ClipboardOwner; i +org/openide/util/datatransfer/ExClipboard$1
 h k  l x(Lorg/openide/util/datatransfer/ExClipboard;Ljava/awt/datatransfer/ClipboardOwner;Ljava/awt/datatransfer/Transferable;)V
 n o p q r java/awt/EventQueue invokeLater (Ljava/lang/Runnable;)V t !java/awt/datatransfer/FlavorEvent
 s v  w $(Ljava/awt/datatransfer/Clipboard;)V
  y z  fireClipboardChange
  | } ~ getFlavorListeners )()[Ljava/awt/datatransfer/FlavorListener;      $java/awt/datatransfer/FlavorListener flavorsChanged &(Ljava/awt/datatransfer/FlavorEvent;)V
 2    fireOwnershipLost Code LineNumberTable LocalVariableTable this +Lorg/openide/util/datatransfer/ExClipboard; name Ljava/lang/String; MethodParameters addClipboardListener 4(Lorg/openide/util/datatransfer/ClipboardListener;)V list 1Lorg/openide/util/datatransfer/ClipboardListener; removeClipboardListener i I l [Ljava/lang/Object; ev .Lorg/openide/util/datatransfer/ClipboardEvent; StackMapTable  t 
convertors 6[Lorg/openide/util/datatransfer/ExClipboard$Convertor;  mto 3Lorg/openide/util/datatransfer/MultiTransferObject; cnt action setContents M(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/ClipboardOwner;)V oldOwner oldContents &Ljava/awt/datatransfer/FlavorListener; e #Ljava/awt/datatransfer/FlavorEvent; ­ java/lang/Object ¯ java/lang/Throwable ± $java/awt/datatransfer/ClipboardOwner ³ '[Ljava/awt/datatransfer/FlavorListener; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile ExClipboard.java InnerClasses 	Convertor!           
        M     *+· *» Y· 	µ ±           *  $  +                                 C     *´ +¶ ±       
    1 
 2                                 C     *´ +¶ ±       
    8 
 9                           z      Æ     9*´ ¶ LM+¾d> (+`2À :,Ç » Y*· !M,¹ $ þ§ÿÚ±       & 	   >  ? 
 A  B  D ! E * H 2 A 8 J    4        )      9      1    
 /        þ   ü  ù  * +    0 1          %*¶ (M>,¾¢ +Ç °,2+¹ , L§ÿç+°           h  j  k  l  o  j # r    *         %       %  `            ý   ú         	 R S     í     R*Á 2 *À 2¶ 4§ B*² 8¹ <  6*² 8¹ B À FM,¹ H >6¢ ,¹ L ¸ P§ÿë§ M±   M P T     .    }  ~     +  2  ;  G  M  P  Q     4  5     + " ¡ ¢  2  £     R  `     R ¤       þ " Fø B T     	    ¤   	 [ \     Þ     M*Á 2 *À 2¶ V§ >*² 8¹ <  2*² 8¹ B À FL+¹ H =>¢ +¹ L ¸ Y§ÿî§ L±   H K T     .           *  1  8  B  H   K  L ¢    *  3     *  ¡ ¢  1  £     M  `       þ ! Fø B T          ¥ ¦    i     *YNÂ*´ ]Æ 
*´ ]¸ a*´ d:*´ ]:*,µ d*+µ ]Æ ,¥ » hY*· j¸ m-Ã§ 
:-Ã¿» sY*· uN*¶ x*¶ {:¾66¢ 2:-¹  §ÿç±   D G   G K G       B    ¦  §  ¨  «  ¬  ® # ¯ ( ± 3 ² B ¹ N º W » [ ¼ w ½  ¼  ¿    H   * § g   $ ¨ `  w   ©            _ `     f g  W / ª «     + ü  ¬/D ®ú ÿ    = ° s ²  ø     	 _   f   ´     µ   	 c \     Þ     M*Á 2 *À 2¶ § >*² 8¹ <  2*² 8¹ B À FL+¹ H =>¢ +¹ L ¸ a§ÿî§ L±   H K T     .    È  É  Ê  Ì * Í 1 Ï 8 Ð B Ï H Ô K Ò L Ö    *  3     *  ¡ ¢  1  £     M  `       þ ! Fø B T          ¶    · ¸     -  ¹	 h      