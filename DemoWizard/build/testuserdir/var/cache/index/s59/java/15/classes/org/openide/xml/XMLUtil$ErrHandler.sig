����   4 [
      java/lang/Object <init> ()V  java/lang/StringBuilder
    Occurred at: 
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
      org/xml/sax/SAXParseException getSystemId ()Ljava/lang/String;  :
     getLineNumber ()I
     (I)Ljava/lang/StringBuilder;
    !  toString
 # $ % & ' org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 ) * + , - "org/openide/xml/XMLUtil$ErrHandler annotate "(Lorg/xml/sax/SAXParseException;)V / org/openide/xml/XMLUtil
 1 2 3 4  java/lang/Class getName
 6 7 8 9 : java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 < = > ? @ java/util/logging/Level INFO Ljava/util/logging/Level;
 6 B C D log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V F org/xml/sax/ErrorHandler Code LineNumberTable LocalVariableTable this $Lorg/openide/xml/XMLUtil$ErrHandler; 	exception Lorg/xml/sax/SAXParseException; 
Exceptions P org/xml/sax/SAXException MethodParameters 
fatalError #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; error warning 
SourceFile XMLUtil.java InnerClasses 
ErrHandler 0 )   E         G   /     *� �    H      + I        J K    , -  G   `     (+� Y� 	
� +� � � +� � � � "W�    H   
   . '/ I       ( J K     ( L M  N     O Q    L    R -  G   ?     *+� (+�    H   
   2 3 I        J K      L M  N     O Q    L   S     T    U -  G   ?     *+� (+�    H   
   7 8 I        J K      L M  N     O Q    L   S     T    V -  G   R     *+� (.� 0� 5� ;+� A�    H      < = > I        J K      L M  N     O Q    L   S     T    W    X Y   
  ) . Z 