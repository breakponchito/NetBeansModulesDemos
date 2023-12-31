����   4>
      "org/xml/sax/helpers/DefaultHandler <init> ()V	  	 
   ?org/netbeans/modules/openide/filesystems/declmime/DefaultParser locator Lorg/xml/sax/Locator;	     state S	     fo $Lorg/openide/filesystems/FileObject;
      org/openide/xml/XMLUtil createXMLReader (Z)Lorg/xml/sax/XMLReader;
     ()Lorg/xml/sax/XMLReader;    ! " # org/xml/sax/XMLReader setEntityResolver (Lorg/xml/sax/EntityResolver;)V  % & ' setErrorHandler (Lorg/xml/sax/ErrorHandler;)V  ) * + setContentHandler (Lorg/xml/sax/ContentHandler;)V - 9http://apache.org/xml/features/continue-after-fatal-error  / 0 1 
setFeature (Ljava/lang/String;Z)V 3 2http://apache.org/xml/properties/input-buffer-size 5 java/lang/Integer
 4 7  8 (I)V  : ; < setProperty '(Ljava/lang/String;Ljava/lang/Object;)V > org/xml/sax/SAXException @ org/xml/sax/InputSource
 ? 
 C D E F G "org/openide/filesystems/FileObject getInputStream ()Ljava/io/InputStream;
 ? I J K setByteStream (Ljava/io/InputStream;)V
 C M N O toURL ()Ljava/net/URL;
 Q R S T U java/net/URL toExternalForm ()Ljava/lang/String;
 ? W X Y setSystemId (Ljava/lang/String;)V
  [ \ ] customizeInputSource (Lorg/xml/sax/InputSource;)V  _ ` ] parse
 b c d e  java/io/InputStream close g java/io/IOException
  i j k isStopException (Ljava/lang/Throwable;)Z
 C m n o isValid ()Z
 C q r o canRead t java/lang/StringBuilder
 s  w While parsing: 
 s y z { append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 s } z ~ -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 s � � U toString
 � � � � � org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;	  � � � LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level INFO Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � java/lang/InternalError � java/lang/NullPointerException
  � � � logNPE G(Ljava/lang/NullPointerException;Lorg/openide/filesystems/FileObject;)V
 � � � � getStackTrace  ()[Ljava/lang/StackTraceElement;
 � � � � U java/lang/StackTraceElement getClassName � 'com.sun.org.apache.xerces.internal.impl
 � � � � � java/lang/String 
startsWith (Ljava/lang/String;)Z	  � � � xercesErrorInfoLogged Z	 � � � � FINE
 � � � � 
isLoggable (Ljava/util/logging/Level;)Z � `Some problem occurred during parsing. Please set logging level for {0} to FINE for more details.
 � � � U getName
 � � � � @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V � While parsing: {0}
 � 
  � ` � '(Lorg/openide/filesystems/FileObject;)V � Invalid_XML_document
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
  � � Y error � java/lang/StringBuffer
 � �  Y � : 
 � � z � ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 C � �  line:  � � � � � org/xml/sax/Locator getLineNumber ()I
 � � z � (I)Ljava/lang/StringBuffer; � 	 column:  � � � � getColumnNumber
 � �
 = � � java/io/ByteArrayInputStream
 � �  � ([B)V
 ? �  K
 � � � java/lang/Class
 � � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; PARSED ConstantValue  � ERROR���� INIT     LOAD    Code LineNumberTable LocalVariableTable this ALorg/netbeans/modules/openide/filesystems/declmime/DefaultParser; MethodParameters 
Exceptions e Ljava/lang/Throwable; getState ()S 
getLocator ()Lorg/xml/sax/Locator; parser Lorg/xml/sax/XMLReader; in Lorg/xml/sax/InputSource; io Ljava/io/IOException; sex Lorg/xml/sax/SAXException; ie Ljava/lang/InternalError; npe  Ljava/lang/NullPointerException; is Ljava/io/InputStream; StackMapTable% java/lang/Throwable elements [Ljava/lang/StackTraceElement;' reason Ljava/lang/String; buf Ljava/lang/StringBuffer; msg "(Lorg/xml/sax/SAXParseException;)V 	exception Lorg/xml/sax/SAXParseException; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
fatalError endDocument setDocumentLocator (Lorg/xml/sax/Locator;)V resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource; publicID systemID <clinit> 
SourceFile DefaultParser.java      	                 �                             � �   
 � �          E     *� *� *� �   	       7  + 	 -  8
            �    X     *� *� *� *+� �   	       :  + 	 -  ;  <
                            /     � �   	       B
              f =  j k    6     �   	       J
                       /     *� �   	       Q
              /     *� �   	       U
           ` �   �    d*� M*+� *� N-*�  -*� $ -*� ( -,� . -2� 4Y � 6� 9 � :� ?Y� A:+� BM,� H+� L� P� V*� Z-� ^ ,� �,� a� �N� �N*-� h� 9+� l� 2+� p� +-� sY� uv� x+� |� � �W� �� �-� �*� ,� �,� a� �N� �N*-� h� +-� sY� uv� x+� |� � �W� �� �-� �*� ,� `,� a� YN� UN*-� h� *� ,� C,� a� <N� 8N*-� h� *� *-+� �,�  ,� a� N� :,� ,� a� :��  & A D = x |  f  t � f � � � f  t � =
 f  t �#'* f  t. �FJM f  tQ   � �Q   �Q  Q  .BQ  W[^ fQSQ   	  
 B   ]  ^  _  a  b  c  d & i / k A p D n F r O s T t Z u f v l x t � x � | �  � � � � z � { � | � } � ~ �  � � � � � � � � � � � � � � � � � � � � � �
 � � � � � � �# �' �* �+ �. �/ �7 �< �B �F �J �M �N �Q �W �[ �^ �` �c �
   \ 	  c  O %  � >  � 0   /     d    d    ]!" #   p � D   C b   =� 8   C b  fC f>J fC =0J fC �J fC �J fC$�    C b  $  f�         � �        }+� �N-�� R-2� ��� �� D� �� $� �� �� �� � �� �� ��� �� �� �� �� ��,� �� �� �+� �� &+� sY� uv� x,� |� � �W� �� �+� ��   	   2    �  �  � * � . � 9 � < � ? � K � Y � q � | �
   *    }     }     }     x&' #   
 � ?("   	       \ ]    5      �   	       �
                    `     S     *� � � �Y� ƿ**� � Ǳ   	       �  �  �
         #      �     J     ʸ �L*+� ұ   	       �  �  �
           )*      =  � Y    �     W� �Y+� �ٶ �*� � ޶ �M*� � ),߶ �*� � � � �W,� �*� � � � �W,� �N� =Y-� �:�   	       �  �  � 2 � E � J � T �
   4    W     W)*   ?+,  J -*  T  #    � E �     =   )    �.    6     +�   	       �
            /0      =   /  1    2   3.    6     +�   	       �
            /0      =   /  1    2   4     6     *� �   	   
    �  �
              =1    2   56    >     *+� �   	   
    �  �
                     1    2   78    P     � ?Y� �Y�� � ��   	       �
             9*    :*    	9  :  1    2   ;     ,      � �� �� �� ��   	   
    4  5 <   =