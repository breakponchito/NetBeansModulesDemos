����   4o  )org/openide/filesystems/DefaultAttributes	      /org/openide/filesystems/DefaultAttributes$Table version I
 
     java/util/HashMap <init> (I)V	     name Ljava/lang/String;	     attrs +Lorg/openide/filesystems/DefaultAttributes;
     removeTable (Ljava/lang/String;)V
     get &(Ljava/lang/Object;)Ljava/lang/Object;   "org/openide/filesystems/XMLMapAttr
  " #  getAttribute % java/lang/Exception ' java/lang/StringBuilder
 & )  * ()V , fileName = 
 & . / 0 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 & 2 3 4 toString ()Ljava/lang/String;
 6 7 8 9 : $org/openide/filesystems/ExternalUtil annotate *(Ljava/lang/Throwable;Ljava/lang/String;)V
 6 < = > 	exception (Ljava/lang/Exception;)V @ &org/openide/util/io/NbMarshalledObject
 ? B  C ()Ljava/lang/Object; E java/io/IOException G Cannot load attribute  I  from 
 6 K L  log N  java/lang/ClassNotFoundException
  P Q R setAttr 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
  )
  U V W put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  Y V Z 9(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
  \ ] ^ size ()I
  ` a  remove c java/util/Map
 e f g h i org/openide/util/Enumerations empty ()Ljava/util/Enumeration; k java/util/HashSet b m n o keySet ()Ljava/util/Set;
 j q  r (Ljava/util/Collection;)V
 t u v w x java/util/Collections enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration; z 1org/openide/filesystems/DefaultAttributes$Table$1
 y |  } 4(Lorg/openide/filesystems/DefaultAttributes$Table;)V  1org/openide/filesystems/DefaultAttributes$Table$2
 ~ �  � L(Lorg/openide/filesystems/DefaultAttributes$Table;Ljava/lang/StringBuffer;)V � 1org/openide/filesystems/DefaultAttributes$Table$3
 � � � java/util/TreeSet
  m
 � q
 � � � � iterator ()Ljava/util/Iterator;
  � � � writeHeading (Ljava/io/PrintWriter;)V � � � � � java/util/Iterator hasNext ()Z � � � C next � java/lang/String
  � � � isEmpty �     
  � � � write <(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
  � � � writeEnding � java/lang/StringBuffer
 � ) � 8org/openide/filesystems/DefaultAttributes$ElementHandler
  � � � parseFirstLevel <()Lorg/openide/filesystems/DefaultAttributes$ElementHandler;
  � � � parseSecondLevel T(Ljava/lang/StringBuffer;)Lorg/openide/filesystems/DefaultAttributes$ElementHandler;
  � � � parseThirdLevel
 � � � � � java/lang/Object getClass ()Ljava/lang/Class;
 � � � � � java/lang/Class getClassLoader ()Ljava/lang/ClassLoader; � &org/openide/filesystems/attributes.dtd
 � � � � � java/lang/ClassLoader getResource "(Ljava/lang/String;)Ljava/net/URL;
 � � � � 4 java/net/URL toExternalForm � 5org/openide/filesystems/DefaultAttributes$InnerParser � *-//NetBeans//DTD DefaultAttributes 1.0//EN
 � �  � b(Ljava/lang/String;Ljava/lang/String;[Lorg/openide/filesystems/DefaultAttributes$ElementHandler;)V
 � � � � parseXML (Ljava/io/InputStream;Z)V � org/xml/sax/SAXException � EXC_DefAttrReadErr
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 � �  
 6 � � � copyAnnotation A(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable; � +javax/xml/parsers/FactoryConfigurationError � � � java/util/Set b � � � � � � java/io/ObjectOutput writeObject (Ljava/lang/Object;)V b � � o entrySet � java/util/Map$Entry � �  C getKey � C getValue C java/io/ObjectInput 
readObject
 java/rmi/MarshalledObject
	 B
 ?  � java/io/Externalizable serialVersionUID J ConstantValue �*F�� Code LineNumberTable LocalVariableTable this 1Lorg/openide/filesystems/DefaultAttributes$Table; attach @(Ljava/lang/String;Lorg/openide/filesystems/DefaultAttributes;)V MethodParameters finalize #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getAttr 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; e Ljava/lang/Exception; Ljava/io/IOException; "Ljava/lang/ClassNotFoundException; o Ljava/lang/Object; mo (Lorg/openide/util/io/NbMarshalledObject; fileName attrName m $Lorg/openide/filesystems/XMLMapAttr; StackMapTable setMarshalledAttr O(Ljava/lang/String;Ljava/lang/String;Lorg/openide/util/io/NbMarshalledObject;)V obj +(Ljava/lang/String;)Ljava/util/Enumeration; s Ljava/util/Set; Ljava/util/Map; LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/String;>; 2Ljava/util/Map<Ljava/lang/String;Ljava/util/Map;>; 	Signature ?(Ljava/lang/String;)Ljava/util/Enumeration<Ljava/lang/String;>; elemService :Lorg/openide/filesystems/DefaultAttributes$ElementHandler; Ljava/lang/StringBuffer; 
writeToXML file attr pw Ljava/io/PrintWriter; it Ljava/util/Iterator; (Ljava/util/Iterator<Ljava/lang/String;>; readFromXML ioe fce -Ljavax/xml/parsers/FactoryConfigurationError; is Ljava/io/InputStream; validate Z elmKeyService ;[Lorg/openide/filesystems/DefaultAttributes$ElementHandler; dtd parser 7Lorg/openide/filesystems/DefaultAttributes$InnerParser;T java/io/InputStreamO 
Exceptions writeExternal (Ljava/io/ObjectOutput;)V entry Ljava/util/Map$Entry; key value entries oo Ljava/io/ObjectOutput; +Ljava/util/Iterator<Ljava/util/Map$Entry;>; readExternal (Ljava/io/ObjectInput;)V oi Ljava/io/ObjectInput; 
access$000 4(Lorg/openide/filesystems/DefaultAttributes$Table;)I x0 
SourceFile DefaultAttributes.java InnerClasses Table ElementHandler InnerParser Entry 0  
        �     �     �        *    >     *� 	*� �                         Q     *+� *,� �           ! 
"                         	        *    :     *� *� � �      
   ) *                 !   �     �*+� � N-� �:-,� !:� ":� &Y� (+� -+� -� 1� 5� ;� �� ?� �� ?:� � � A�:� &Y� (F� -,� -H� -+� -� 1� J� ;� ):� &Y� (F� -,� -H� -+� -� 1� J� ;�     $ R ` a D R ` � M    Z   2 	4 5 8 < 9 : 4; 9> >? @B HC KF RI aJ cK �L �P �M �N �O �S   \ 	  "#  c $"$  � $"%   �&'  R ^()    �     �*     �+   	 �,- .   3 	�    � �  �  $
�  ?D �@ Dh M� %   	*  +   /0    T     *+,-� O�      
   Y Z   *         *     +     1)    *  +  1    Q R    �     G*+� � :� � Y� S:*+� TW,-� XW-� � [� 	*+� _W*Y� `� �      & 	  d 
f g h  k )m 6n <r Fs   4    G     G*     G+     G1'  
 =,- .   	 �      *  +  1    2    �     $*+� � bM,� � d�� jY,� l � pN-� s�         x 	z { }    *   34    $     $*   	 ,5 6      37  	 ,8 .    �  b   *  9   :  � �    C     � yY*� {L+�      
   � 	�          	 ;<   � �    N     � ~Y*+� �M,�      
   � 
�             *=  
 ;<    *   � �    N     � �Y*+� �M,�      
   � 
	             *=  
 ;<    *  > �    �     N� �Y*� �� �� �M+� �,� � � 0,� � � �N*-� � :� � �� +-�� ����+� ��      * 
      & 0 = F I M   4  &  ?   0 @-    N     NAB   ?CD 6      ?CE .   
 �  �2   A   F �   n     �� �Y� �N� �Y*� �SY*-� �SY*-� �S:*� �� �Ŷ Ƕ �:� �Y�� �:+� ٧ 5:� �Y߸ � �� �� ݿ:� �Y߸ � �� �� ݿ�  E L O $ E L h �    >   ( ) %* 6+ E. L8 O/ Q0 Y1 a0 h3 j5 r6 z5 �9   \ 	 Q G#  j HI    �     �JK    �LM   z*=  % ]NO  6 LP   E =QR .   $ � O  S �U � �  $X �V     �   	J  L   WX   �  	   �*� �� � M,� � � �,� � � �N*-� � b:� q� � � g+-� � � � � � :� � � A� � � �:� � � �:� :� � +� � +� � ���+� � ��p+� � �      N   @ 
B C D 'F 6G =I KK UL aM mN vP �Q �R �T �V �X �Z �[   \ 	 a /YZ  m #[   v \'  K O]D   }?   ' s@5    �     �^_  
 �CD 6     K O]`  
 �CE .    � 
 �� @ � b �� D� V     D   ^   ab   
     ^+� � �M,� � O+� � �N-� � ;+� :�	� �	�:� ?Y�:� ?� *,-� O�������      >   a 
c d h j k "n *q 2r <s Gw Ox Wz Z{ ]|   4   <@   * -&'  
 P?     ^     ^cd .     �  ��  �� $ �� � V     D M   c  ef    /     *� �                g   h   ij   :   k  y       ~       �       � l � m  � bn	