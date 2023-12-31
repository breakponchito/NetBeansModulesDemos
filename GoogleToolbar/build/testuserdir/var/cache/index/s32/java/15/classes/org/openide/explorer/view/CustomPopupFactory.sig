Źžŗ¾   4 Č
      ,org/openide/explorer/view/CustomPopupFactory disableShadow (Ljavax/swing/JWindow;)V
  	 
   javax/swing/PopupFactory <init> ()V	     $assertionsDisabled Z  javax/swing/JComponent  java/lang/AssertionError
  	
      java/awt/Component getPreferredSize ()Ljava/awt/Dimension;
     getTopLevelAncestor ()Ljava/awt/Container; ! "java/lang/IllegalArgumentException # java/lang/StringBuilder
 " 	 & Not onscreen: 
 " ( ) * append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 " , ) - -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 " / 0 1 toString ()Ljava/lang/String;
   3  4 (Ljava/lang/String;)V 6 java/awt/Point
 5 8  9 (II)V
 ; < = > ? javax/swing/SwingUtilities convertPointFromScreen '(Ljava/awt/Point;Ljava/awt/Component;)V A java/awt/Rectangle	 5 C D E x I	 5 G H E y	 J K L M E java/awt/Dimension width	 J O P E height
 @ R  S (IIII)V
 U V W X Y java/awt/Container 	getBounds ()Ljava/awt/Rectangle;
 @ [ \ ] contains (Ljava/awt/Rectangle;)Z _ 4org/openide/explorer/view/CustomPopupFactory$LWPopup
 ^ a  b -(Ljava/awt/Component;Ljava/awt/Component;II)V d 4org/openide/explorer/view/CustomPopupFactory$HWPopup
 c a g java/awt/Color
 f R
  j k l safeSetBackground ((Ljavax/swing/JWindow;Ljava/awt/Color;)V
 n o p q r javax/swing/JWindow getRootPane ()Ljavax/swing/JRootPane; t Window.shadow	 v w x y z java/lang/Boolean FALSE Ljava/lang/Boolean;
 v /
 } ~    javax/swing/JRootPane putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
 n    getGraphicsConfiguration "()Ljava/awt/GraphicsConfiguration;
      java/awt/GraphicsConfiguration isTranslucencyCapable ()Z
     	getDevice ()Ljava/awt/GraphicsDevice;
      java/awt/GraphicsDevice getFullScreenWindow ()Ljava/awt/Window;
 n    setBackground (Ljava/awt/Color;)V
      java/lang/Class desiredAssertionStatus Code LineNumberTable LocalVariableTable this .Lorg/openide/explorer/view/CustomPopupFactory; getPopup ?(Ljava/awt/Component;Ljava/awt/Component;II)Ljavax/swing/Popup; owner Ljava/awt/Component; contents d Ljava/awt/Dimension; c Ljava/awt/Container; p Ljava/awt/Point; r Ljava/awt/Rectangle; StackMapTable 
Exceptions MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; win Ljavax/swing/JWindow; window 
background Ljava/awt/Color; gc  Ljava/awt/GraphicsConfiguration; 
access$000 x0 <clinit> 
SourceFile CustomPopupFactory.java InnerClasses LWPopup HWPopup Ę 5org/openide/explorer/view/CustomPopupFactory$OurPopup OurPopup                     3     *· ±        
    5  6 ”        ¢ £    ¤ „    X  	   ²  +Į  » Y· æ,¶ :+Ą ¶ :Ē »  Y» "Y· $%¶ '+¶ +¶ .· 2æ» 5Y· 7:ø :» @Y“ B“ F“ I“ N· Q:¶ T¶ Z » ^Y+,· `°» cY+,· e°        .    ;  <  = $ > ) ? D A P B W C t D  H  J ”   \ 	    ¢ £      ¦ §     Ø §     D E     H E    © Ŗ  $ w « ¬  P K ­ ®  t ' Æ °  ±    ż . J Uż I 5 @ ²       ³    ¦   Ø   D   H   “     µ   
       W     %*» fY ’ ’ ’· hø i*¶ ms² u¶ {¶ |±            é  ź $ ė ”       % ¶ ·   ³    ¶   
 k l     |     *¶ M,¶  ±,¶ ¶ *¦ ±*+¶ ±            ļ  ń  ņ  ō  õ ”         ø ·      ¹ ŗ    » ¼  ±   	 ü   ³   	 ø   ¹   ½      /     *ø ±            3 ”        ¾ ·    æ      4      ¶  § ³ ±            3 ±    @  Ą    Į Ā     ^  Ć 
 c  Ä 
 Å  Ē
