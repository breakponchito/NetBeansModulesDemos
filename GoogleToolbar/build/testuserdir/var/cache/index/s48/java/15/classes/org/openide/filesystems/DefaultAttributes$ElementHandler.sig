Ęţşž   4 ¤
      8org/openide/filesystems/DefaultAttributes$ElementHandler isMyTag (Ljava/lang/String;)I
  	 
   java/lang/Object <init> ()V  java/util/HashMap
  	
     checkAttributes A(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Ljava/util/HashMap;)Z  org/xml/sax/SAXException  java/lang/StringBuilder
  	  )org/openide/filesystems/DefaultAttributes  XML_InaccurateParam
     ! " org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
  $ % & append -(Ljava/lang/String;)Ljava/lang/StringBuilder; ( : 
  * + , toString ()Ljava/lang/String;
  .  / (Ljava/lang/String;)V
  1 2 3 internalStartElement ;(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V	  5 6 7 EMPTY [Ljava/lang/String;
  9 : ; getKeys ()[Ljava/lang/String;
  = > ? 	isInArray ((Ljava/lang/String;[Ljava/lang/String;)I
  A B ; getAllowedAttrs	  D E F mandatAttrCount I
  H I ; getMandatoryAttrs
 K L M N , java/lang/String trim
 K P Q R equalsIgnoreCase (Ljava/lang/String;)Z T U V W X org/xml/sax/Attributes 	getLength ()I T Z [ \ getQName (I)Ljava/lang/String;
  ^ _  isMandatoryAttr	 a b c d e java/util/Locale ENGLISH Ljava/util/Locale;
 K g h i toUpperCase &(Ljava/util/Locale;)Ljava/lang/String; T k l \ getValue
  n o p put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  r s  isAllowedAttr
  u v w 
isMandatOK ()Z Code LineNumberTable LocalVariableTable this :Lorg/openide/filesystems/DefaultAttributes$ElementHandler; startElement -(Ljava/lang/String;Lorg/xml/sax/Attributes;)V elemName Ljava/lang/String; attrs Lorg/xml/sax/Attributes; 
mapAllowed Ljava/util/HashMap; mapMandatory LocalVariableTypeTable 9Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>; StackMapTable 
Exceptions MethodParameters 
characters ([CII)V ch [C start length 
endElement name retValue i arr 
correctStr temp attrList 	Signature (Lorg/xml/sax/Attributes;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Z 
access$100 O(Lorg/openide/filesystems/DefaultAttributes$ElementHandler;Ljava/lang/String;)I x0 x1 <clinit> 
SourceFile DefaultAttributes.java InnerClasses ElementHandler        6 7    E F         x   /     *ˇ ą    y       z        { |    } ~  x   á     Jť Yˇ Nť Yˇ :*,-ˇ  (ť Yť Yˇ ¸ ś #'ś #+ś #ś )ˇ -ż*+-ś 0ą    y          + A I z   4    J { |     J      J     B     9          B     9        ý A            	        2 3  x   I      ą    y      ¤ z   *     { |                                            x   I      ą    y      Ž z   *     { |             F      F                       /  x   5      ą    y      ľ z        { |                       : ;  x   .     ˛ 4°    y      ş z        { |    I ;  x   /     *ś 8°    y      Ŕ z        { |    B ;  x   .     ˛ 4°    y      Ć z        { |       x   >     
*+*ś 8ˇ <Ź    y      Ę z       
 { |     
            s   x   >     
*+*ś @ˇ <Ź    y      Î z       
 { |     
            v w  x   G     *´ C*ś Gž  § Ź    y      Ň z        { |       @  _   x   q     *+*ś Gˇ <= *Y´ C`ľ CŹ    y      Ö 
Ř Ů Ü z         { |         
   F      ü          > ?  x   ł     0,Ć +Ç Ź+ś JN6,ž˘ -,2ś O  Ź§˙çŹ    y   "   ŕ á 
ä ć ç %č (ć .ě z   4     F    0 { |     0      0  7   !        ý  Kú     	           x  J     *ľ C+Ç Ź6+š S ˘ j*+š Y ˇ ] %+š Y ˛ `ś f:,+š j ś mW§ 2*+š Y ˇ q "+š Y ˛ `ś f:-+š j ś mW§˙*ˇ tŹ    y   6   ń ó 	ô ÷ ř )ů 9ú Hü K˙ [  k z÷  z   H  9     k      r  F     { |                                          ý  <.ů                       x   :     *+ˇ Ź    y       z         |             x          ˝ Kł 4ą    y             Ą ˘   
    Ł