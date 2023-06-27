����   4\  Borg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl	      Gorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl state S
  
   <init> z(Lorg/openide/filesystems/FileObject;[Lorg/netbeans/modules/openide/filesystems/declmime/FileElement;[Ljava/lang/String;)V	     smell @[Lorg/netbeans/modules/openide/filesystems/declmime/FileElement;
     	parseDesc ()S	     implResolvableMIMETypes [Ljava/lang/String;
     init ()V
     )(Lorg/openide/filesystems/FileObject;[B)V
 ! " #   $org/openide/filesystems/MIMEResolver % Iorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl$1
 $ '  ( L(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl;)V	  * + , listener ,Lorg/openide/filesystems/FileChangeListener;
  . / 0 
access$500 ()Ljava/util/logging/Logger;	 2 3 4 5 6 java/util/logging/Level FINE Ljava/util/logging/Level;
 8 9 : ; < java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z > !MIMEResolverImpl.Impl.<init>({0})
 8 @ A B log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V D Morg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$DescParser	  F G H data $Lorg/openide/filesystems/FileObject;
 J K L M N  org/openide/filesystems/FileUtil weakFileChangeListener l(Lorg/openide/filesystems/FileChangeListener;Ljava/lang/Object;)Lorg/openide/filesystems/FileChangeListener;
 P Q R S T "org/openide/filesystems/FileObject addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V V java/io/ByteArrayInputStream
 U X  Y ([B)V [ java/io/DataInputStream
 Z ]  ^ (Ljava/io/InputStream;)V
  ` a b readExternal (Ljava/io/DataInput;)V d ?org/netbeans/modules/openide/filesystems/declmime/DefaultParser f xml
 P h i j hasExt (Ljava/lang/String;)Z
 P l m n getPath ()Ljava/lang/String; p Services/MIMEResolver
 r s t u j java/lang/String 
startsWith w findMIMEType - smell.resolve.
 8 y z { fine (Ljava/lang/String;)V
 } ~  � � =org/netbeans/modules/openide/filesystems/declmime/FileElement resolve 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String; � mime-type-to-exit
 r � � � equals (Ljava/lang/Object;)Z � &MIMEResolverImpl.findMIMEType({0})={1} � java/lang/Object
 8 � A � A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 C �  � '(Lorg/openide/filesystems/FileObject;)V
 C � �  parse
 C � � � 
access$800 �(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$DescParser;)[Lorg/netbeans/modules/openide/filesystems/declmime/FileElement;	 C  � $MIMEResolverImpl.Impl parsing error! � java/lang/StringBuilder
 � " � Parse: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � (C)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � n toString
 } � � n getMimeType
 � � � � � 6org/netbeans/modules/openide/filesystems/declmime/Util 	addString :([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String; � MIMEResolverImpl.Impl[ � ] � java/io/IOException
 � "
 � � � � writeStrings *(Ljava/io/DataOutput;[Ljava/lang/String;)V � � � � � java/io/DataOutput writeInt (I)V
 } � � � writeExternal (Ljava/io/DataOutput;)V
 � � � � readStrings ((Ljava/io/DataInput;)[Ljava/lang/String; � � � � � java/io/DataInput readInt ()I
 } "
 } `
 � � � � � java/util/Collections 	emptyList ()Ljava/util/List; � java/util/LinkedList
 � "
 } � � � getExtensions ()[Ljava/lang/String;
 } � � � getNames � � � � � java/util/List isEmpty ()Z
 r � � � � � add � � � � iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext � � � � next ()Ljava/lang/Object;  Korg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FileName
 � � Rorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverProcessor$FilterInfo Code LineNumberTable LocalVariableTable this ILorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl; obj StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation def 
serialData [B is Ljava/io/ByteArrayInputStream; dis Ljava/io/DataInputStream; 
Exceptions arr mimeType findMIMEType s Ljava/lang/String; i I fo smell2  Ljava/lang/Override;$ java/lang/Throwable buf Ljava/lang/StringBuilder; parser OLorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$DescParser; fe ?Lorg/netbeans/modules/openide/filesystems/declmime/FileElement; out Ljava/io/DataOutput; in Ljava/io/DataInput; ext 
extensions Ljava/util/List; LocalVariableTypeTable $Ljava/util/List<Ljava/lang/String;>;  	Signature &()Ljava/util/List<Ljava/lang/String;>; getFileNames exts name MLorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FileName; 	fileNames o(Lorg/openide/filesystems/FileObject;[BLorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$1;)V x0 x1 x2 FLorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$1; 
access$100 
access$200 ^(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl;)[Ljava/lang/String; 
access$300 L(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl;)S 
access$400 �(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl;)[Lorg/netbeans/modules/openide/filesystems/declmime/FileElement; �(Lorg/openide/filesystems/FileObject;[Lorg/netbeans/modules/openide/filesystems/declmime/FileElement;[Ljava/lang/String;Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$1;)V x3 
access$702 M(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl;S)S 
access$202 q(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl;[Ljava/lang/String;)[Ljava/lang/String; 
SourceFile MIMEResolverImpl.java InnerClasses Impl 
DescParserT Borg/netbeans/modules/openide/filesystems/declmime/FileElement$Type Type FileNameX Gorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverProcessor 
FilterInfo[ Dorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$1 0  !    G H    + ,                      �    �     E*�  *� $Y*� &� )� -� 1� 7� � -� 1=+� ?*� *+� E*� E*� )*� E� I� O�         � q � (� -� 2� D�       E     E	 H 
    � (   P     	       [ s       �     4*�  *� $Y*� &� )*+� E*� � UY,� WN� ZY-� \:*� _�      "   � q � � � #� -� 3�   4    4     4 H    4  #   -       �   	         [ s �      �     '*�  *� $Y*� &� )*+� E*-� *,� *� �         � q � � � � &�   *    '     ' H    '     '       �              [ s  �   =     �+e� g� +� ko� q� �*� *� � �*� M,�d>� ^� -� 1� 7� � -v� x,2+� |:� 6�� �� �� -� 1� 7� � -� 1�� �Y+SYS� ��������      B   � � � � #� %� *� 3� G� P� U� _� a� �� �� ��   4  P 8  / _    �     � H  * f   
    � 	!�  r#� �          "         }     *YL�*� � **� � +ç M+�,��                  � � � � �         
    �  �D#�       �     �*� }� � CY*� E� �L+� �*+� �� 
+� �� *� � � -� 1� 7� P+� �� � -�� x� =� �Y� �M,�� �W>*� �� ,
� �*� 2� �W���� -,� �� x+� �� .=*� �� #*� 2� �N-� **� -� �� ����+� ��      R   � � � � .� :� B� M� U� \� g� w� }� �� �� �� �� �� �� ��   >  ^   U 2%&  �   � )    �    �'( 
   ; 	� '   C  �    C  !!�  �� � 	� 	"�   � n    F     � �Y� ��� �*� E� ��� �� ��         �             "    � �    �     K*� *� � � �Y� ��+*� � �+*� �� � *� M,�>6� ,2:+� Ȅ���      & 	  � � � � � '� >� D� J�      > )*    K     K+, 
    � !�      �   +    a b        u*� � � �Y� ��*+� ̵ *+� � � }� =*� ��  *� � }Y� �S*� 2+� ׄ���*� *� � *� � N*� � *� -��   T d      >   � � � � %� 0� =� G� M� T� \� d� m� r� t       ' &    u     u-. 
    � � %V#�  #�      �   -    � �   V  
   �*� � � ذ� �Y� �L*� M,�>6� j,2:� Y� �� Q� �� � � � � <� �:�66� &2:		� 	� � +	� � W���ل���+�      6       *	 9
 A L i v  � �   *  i / 	 * [)*   z01    �  2      z03 
   9 �    �!  � - }� 4#�    �!  � 5   6    "   7 �   �     �*� � � ذ� �Y� �L*� M,�>6� �,2:� �� �� {� � � :� � � e� � � �:� �:����� ���:		�6
6
� .	2:+� �Y� ��� �� �� �� � W���ѧ�����l+�      >       * 7 Y  `! k" n$ �% �$ �' � �*   >  � /  ` L8   Y S9:  * �)*   �;1    �  2      �;3 
   M �    �!  � $ } �� * �4� 4� 1   �! } �  � � 5   6    "    <    O     *+,� �         k   *         = H    >    ?@      �A (    /     *� �         k       =  BC    /     *� �         k       =  DE    /     *� �         k       =  FG    /     *� �         k       =    H    Z     *+,-� 	�         k   4         = H    >     ?     I@      �JK    ;     *Z� �         k       =     >  LM    ;     *+Z� �         k       =     >   N   OP   :   Q  $       C R 
S }U  �SV  WYZ      