Êþº¾   4 Ð
      java/lang/Object <init> ()V  java/util/LinkedHashMap?@  
     (IFZ)V	       org/openide/util/CachedHiDPIIcon cache Ljava/util/Map;	     	cacheSize D  "java/lang/IllegalArgumentException
  	     width I	      height " # $ % & java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; ( java/awt/Image
 * + , - . /org/openide/util/CachedHiDPIIcon$CachedImageKey getScale ()D
  0 1 2 getIconWidth ()I
 4 5 6 7 8 java/lang/Math ceil (D)D
  : ; 2 getIconHeight
 * = > ? getColorModel ()Ljava/awt/image/ColorModel;
  A B C createAndPaintImage D(Ljava/awt/Component;Ljava/awt/image/ColorModel;IID)Ljava/awt/Image;
 * E F . getSize@$       " J K L keySet ()Ljava/util/Set; N O P Q R java/util/Set iterator ()Ljava/util/Iterator; T U V W X java/util/Iterator hasNext ()Z T Z [ \ next ()Ljava/lang/Object; T ^ _  remove " a b c put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; e java/awt/Graphics2D
 * g h i create H(Ljava/awt/Graphics2D;)Lorg/openide/util/CachedHiDPIIcon$CachedImageKey;
 d k l m getTransform !()Ljava/awt/geom/AffineTransform;
 d o p q 	translate (II)V
  s t u getScaledImageCached W(Ljava/awt/Component;Lorg/openide/util/CachedHiDPIIcon$CachedImageKey;)Ljava/awt/Image; w java/awt/geom/AffineTransform
 v y z . getTranslateX
 v | } . getTranslateY
 v    	(FFFFFF)V
 d    setTransform "(Ljava/awt/geom/AffineTransform;)V
 d    	drawImage 3(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z  java/awt/image/BufferedImage
      java/awt/image/ColorModel createCompatibleWritableRaster #(II)Ljava/awt/image/WritableRaster;
    X isAlphaPremultiplied
     S(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V  javax/swing/Icon MAX_CACHE_SIZE ConstantValue 	Signature RLjava/util/Map<Lorg/openide/util/CachedHiDPIIcon$CachedImageKey;Ljava/awt/Image;>; Code LineNumberTable LocalVariableTable this "Lorg/openide/util/CachedHiDPIIcon; StackMapTable MethodParameters 	removeKey 1Lorg/openide/util/CachedHiDPIIcon$CachedImageKey; iter Ljava/util/Iterator; c Ljava/awt/Component; key ret Ljava/awt/Image; scale deviceWidth deviceHeight img imgSize LocalVariableTypeTable GLjava/util/Iterator<Lorg/openide/util/CachedHiDPIIcon$CachedImageKey;>; µ java/awt/Component 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V scaledImage tx2 Ljava/awt/geom/AffineTransform; g0 Ljava/awt/Graphics; x y g Ljava/awt/Graphics2D; oldTransform Ã java/awt/Graphics Å java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
colorModel createBufferedImage =(Ljava/awt/image/ColorModel;II)Ljava/awt/image/BufferedImage; Ljava/awt/image/ColorModel; 
SourceFile CachedHiDPIIcon.java InnerClasses CachedImageKey!              G                             q     ³     <*· *» Y	· 
µ *µ  » Y· ¿ » Y· ¿*µ *µ ±       * 
   F  7  =  G  H % J ) K 1 M 6 N ; O         <   ¡     <      <     ¢    ÿ %     £   	        " t u    Ô     ½*´ ,¹ ! À 'N-Æ -°,¶ )9*¶ /k¸ 36*¶ 9k¸ 36*+,¶ <¶ @:,¶ D9		 G g*´ ¹ I ¹ M :*´ 	c G 1¹ S  '¹ Y À *:¹ ] *Y´ ¶ Dgµ §ÿÇ*´ ,¹ ` W*Y´ 	cµ °       N    V  W  X  Z  [ ( \ 6 ] 9 ^ G _ M ` V c f d ~ e  f  g  h ¢ i ¯ j º l    p    ¤ ¥  f T ¦ §    ½   ¡     ½ ¨ ©    ½ ª ¥   ¯ « ¬   £ ­   (  ®   6  ¯   G v ° ¬  M p ±  	 ²     f T ¦ ³  ¢   ) ü  'ÿ Q 
  ´ * ' ' T  ;ú  £   	 ¨   ª    ¶ ·    | 
    {*¶ / 
*¶ 9 ±,À d:¸ f:¶ j:¶ n*+· r:¶ j:	» vY	¶ x	¶ {· ~¶ ¶ W¶ § :
¶ 
¿±  # d n   n p n       J    q  s  u  v  w # y + z 4  ;  G  N  V  Y  d  k  n  w  z     f 
 4 0 ¸ ¬  ; ) ¹ º 	   {   ¡     { ¨ ©    { » ¼    { ½     { ¾    f ¿ À   _ ª ¥  # X Á º  ¢   #  ÿ ^   ´ Â d * v  Ä £    ¨   »   ½   ¾   Æ     Ç    1 2     /     *´ ¬                      ¡   Æ     Ç    ; 2     /     *´ ¬                      ¡   Æ     Ç   B C  £    ¨   È   ®   ¯   ­    É Ê     ^     » Y**¶ *¶ · °           º  ¼  ½  º          È Ë      ®      ¯   £    È   ®   ¯    Ì    Í Î   
  *  Ï 