����   4 �
      java/io/InputStream <init> ()V  java/io/StringReader
 
     #org/openide/filesystems/FileURL$FIS createDocument 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;
     (Ljava/lang/String;)V	 
    reader Ljava/io/StringReader;  java/lang/StringBuffer
     (I)V
       "org/openide/filesystems/FileObject getChildren '()[Lorg/openide/filesystems/FileObject; " <HTML>

  $ % & append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; ( <BODY>

  * + , 	getParent &()Lorg/openide/filesystems/FileObject; . <P> 0 <A HREF= 2 .. 4 > 6 </A> 8 
 : </P>
  < =  	setLength
  ? @ A 
getNameExt ()Ljava/lang/String;
  C D A toString
  F G H isFolder ()Z
  J % K (C)Ljava/lang/StringBuffer;
  M % N ,(Ljava/lang/Object;)Ljava/lang/StringBuffer; P </BODY>
 R </HTML>

  T U V read ()I
  X U Y ([CII)I
  [ \ ] skip (J)J
  _ `  close
  b c  reset '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/filesystems/FileURL$FIS; folder $Lorg/openide/filesystems/FileObject; 
Exceptions n java/io/IOException MethodParameters name Ljava/lang/String; i I buff Ljava/lang/StringBuffer; lit fobia %[Lorg/openide/filesystems/FileObject; parent StackMapTable x } java/lang/String ([BII)I b [B off len ch [C r � #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; J markSupported 
SourceFile FileURL.java InnerClasses � org/openide/filesystems/FileURL FIS 0 
             d  e   Q     *� *� Y*+� 	� � �    f         g        h i      j k  l     m o    j       e       ݻ Y �� M� Y� N+� :,!� #W,'� #W+� ):� 1,-� #W,/� #1� #3� #1� #5� #7� #W,9� #W6�� `-� ;-2� >� #W-� B:2� E� 
-/� IW,-� #W,/� #-� L3� #� #5� #7� #W,9� #W����,O� #W,Q� #W,� B�    f   ^       " ) / 4 ; [ b m r  ! �# �$ �' �( �) � �, �- �/ g   R  � E p q  e e r s    � h i     � j k   � t u   � v u   � w x  / � y k  z   W � b  
    {    � � 1  
    { |   � 2  
    {     l     m o    j    U V  e   2     *� � S�    f      4 g        h i   l     m  U ~  e   �     1�:*� � W66� +`4�T�����    f      9 : < = (< .? g   H    r s    1 h i     1  �    1 � s    1 � s   , � �    � s  z    �  ��  l     m o       �   �   �     �    \ ]  e   =     	*� � Z�    f      D g       	 h i     	 \ �  l     m o    \   �     �    `   e   6     *� � ^�    f   
   I J g        h i   l     m �     �    c   e   6     *� � a�    f   
   N O g        h i   l     m �     �    � H  e   ,     �    f      S g        h i   �     �    �    � �   
  
 � � 