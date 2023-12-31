����   4�
      java/lang/Object <init> ()V  java/util/HashMap
  
   (I)V	      "org/openide/filesystems/XMLMapAttr map Ljava/util/Map;
      'org/openide/filesystems/XMLMapAttr$Attr isValid (Ljava/lang/String;)I  stringvalue
     decode &(Ljava/lang/String;)Ljava/lang/String;
      M(Ljava/lang/String;Ljava/lang/String;Lorg/openide/filesystems/XMLMapAttr$1;)V
  "  # <(ILjava/lang/String;Lorg/openide/filesystems/XMLMapAttr$1;)V % java/lang/StringBuilder
 $  ( raw:
 $ * + , append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 $ . / 0 toString ()Ljava/lang/String;
 2 3 4 5 6 "org/openide/filesystems/FileObject getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 8 9 : ; < )java/util/concurrent/atomic/AtomicBoolean set (Z)V	  > ? @ ATTR_FOR Ljava/lang/ThreadLocal;
 B C D E F java/lang/ThreadLocal get ()Ljava/lang/Object;
 B H ; I (Ljava/lang/Object;)V K L M N O /org/openide/filesystems/AbstractFileSystem$Attr readAttribute 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
  Q 5 R &(Ljava/lang/Object;)Ljava/lang/Object; T java/lang/Exception	 V W X Y Z $org/openide/filesystems/ExternalUtil LOG Ljava/util/logging/Logger;	 \ ] ^ _ ` java/util/logging/Level INFO Ljava/util/logging/Level;
  .
 c d e f g java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  i 5 j 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
 $ l + m -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 o p q / r java/util/Arrays '([Ljava/lang/Object;)Ljava/lang/String; t java/lang/String
 v w x y z 4org/openide/filesystems/XMLMapAttr$ModifiedAttribute translateInto 9(Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/Object; | } ~ E R java/util/Map � class:
 s � � � 
startsWith (Ljava/lang/String;)Z
 s � � � 	substring (I)Ljava/lang/String;
  � � � getType &([Ljava/lang/Object;)Ljava/lang/Class;
  � � � 
access$200 ,(Lorg/openide/filesystems/XMLMapAttr$Attr;)I
  � � � 
access$300 =(Lorg/openide/filesystems/XMLMapAttr$Attr;)Ljava/lang/String;
  � � � 
access$400 �(Lorg/openide/filesystems/XMLMapAttr$Attr;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openide/filesystems/XMLMapAttr$Attr$MethodAndParams;
 � � � � � 7org/openide/filesystems/XMLMapAttr$Attr$MethodAndParams 	getMethod ()Ljava/lang/reflect/Method;
  � E � '([Ljava/lang/Object;)Ljava/lang/Object; � attrName = 
 V � � � annotate *(Ljava/lang/Throwable;Ljava/lang/String;)V
 v � � 6 getValue
  � � � put 9(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object; � java/lang/reflect/Method � methodvalue:
 s � � � length ()I � methodvalue
 � � � � getDeclaringClass ()Ljava/lang/Class;
 � � � � 0 java/lang/Class getName
 $ � + � (C)Ljava/lang/StringBuilder;
 � � � 	newvalue: � newvalue
  �  � ;(Ljava/lang/Object;Lorg/openide/filesystems/XMLMapAttr$1;)V
 s � � 0 intern | � � � 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � &<?xml version="1.0" encoding="UTF-8"?>
 � � � � � java/io/PrintWriter println (Ljava/lang/String;)V � {<!DOCTYPE attributes PUBLIC "-//NetBeans//DTD DefaultAttributes 1.0//EN" "http://www.netbeans.org/dtds/attributes-1_0.dtd"> � <attributes version="1.0"> � </attributes>
  � � � isEmpty ()Z � java/util/TreeSet
 �  | � � � entrySet ()Ljava/util/Set; � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext � � � F next � java/util/Map$Entry � � � F getKey �  � F
   � �  remove	
 java/util/SortedSet add (Ljava/lang/Object;)Z �
  
access$600 ,(Lorg/openide/filesystems/XMLMapAttr$Attr;)V
  org/openide/xml/XMLUtil toAttributeValue java/io/IOException <fileobject name=" "> instantiatingIterator
 s  equals" <attr name="
 $%  getAttrNameForPrint' " newvalue="
 )* 0 getClassName, "/>. " 
 01 0 getKeyForPrint3 ="
 56 0 getValueForPrint
 89: maybeAddSerValueComment *(Ljava/io/PrintWriter;Ljava/lang/String;)V< </fileobject> |>?  clear |A R |CD containsValue |FG � hashCode |IJ � keySet |LMN values ()Ljava/util/Collection; |PQR putAll (Ljava/util/Map;)V |TU containsKey | � | |YZ � size
 B  	Signature LLjava/util/Map<Ljava/lang/String;Lorg/openide/filesystems/XMLMapAttr$Attr;>; =Ljava/lang/ThreadLocal<Lorg/openide/filesystems/FileObject;>; Code LineNumberTable LocalVariableTable this $Lorg/openide/filesystems/XMLMapAttr; createAttributeAndDecode O(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/XMLMapAttr$Attr; key Ljava/lang/String; value StackMapTable MethodParameters createAttribute >(ILjava/lang/String;)Lorg/openide/filesystems/XMLMapAttr$Attr; index I getRawAttribute u(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object; fo $Lorg/openide/filesystems/FileObject; name ab +Ljava/util/concurrent/atomic/AtomicBoolean; raw Ljava/lang/Object; �(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/AbstractFileSystem$Attr;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; forFO attr 1Lorg/openide/filesystems/AbstractFileSystem$Attr; path attrName prev� java/lang/Throwable obj e Ljava/lang/Exception; p1 params [Ljava/lang/Object; 
Exceptions )Lorg/openide/filesystems/XMLMapAttr$Attr; res origAttrName keyValuePair retVal� p2 toStore m Ljava/lang/reflect/Method; c Ljava/lang/Class; Z LocalVariableTypeTable Ljava/lang/Class<*>; writeHeading (Ljava/io/PrintWriter;)V pw Ljava/io/PrintWriter; writeEnding write <(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V entry Ljava/util/Map$Entry; quotedFileName fileName blockPrefix isHeadingWr 	attrNames Ljava/util/SortedSet; 	entryIter Ljava/util/Iterator; )Ljava/util/SortedSet<Ljava/lang/String;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; %()Ljava/util/Set<Ljava/lang/String;>; <clinit> 
SourceFile XMLMapAttr.java Ljava/lang/SuppressWarnings; 	unchecked InnerClasses Attr� $org/openide/filesystems/XMLMapAttr$1� *org/openide/filesystems/AbstractFileSystem ModifiedAttribute MethodAndParams Entry� *org/openide/filesystems/XMLMapAttr$FOEntry FOEntry� .org/openide/filesystems/XMLMapAttr$AttrFileSet AttrFileSet� *org/openide/filesystems/XMLMapAttr$FileMap FileMap 0    |      \   ] 
 ? @ \   ^     _   C     *� *� Y� 	� �   `       s  t  ua       bc   de _   a     *� � � +� L� Y*+� �   `       x  y  |a       fg     hg i    j   	f  h   kl _   ?     � Y+� !�   `       �a       mn     hg j   	m  h   op _   �     6*� $Y� &'� )+� )� -� 1N-� ,� ,� 7-�,� ,� 7*+� 1�   `   "    �  �  �   � % � ' � + � 0 �a   *    6qr     6sg    6tu   vw i   
 � % j   q  s  t    Nx _   �     4� =� A� 2:� =*� G+,-� J :� =� G�:� =� G�    '   ' ) '   `       �  �  �  � $ � ' � 1 �a   4    4yr     4z{    4|g    4}g   )~r i    � '  2 K s s 2 j   y  z  |  }    E R _   �     *+� PM� NM� U� [+� a-� b,�     	 S `       �  � 	 � 
 �  �  �a   4   �w  
 ��    bc     �w   �w i    I S�  j   �   E j _   �     0*+,� hN� ':N� U� [� $Y� &+� k,� n� )� -� b-�     
 S `       �  � 
 �  �  � . �a   >   �w   "��    0bc     0�w    0��   "�w i    J S� # j   	� �     5 R _   K     *+� Y� =� ASY+S� h�   `       �a       bc     }w �     Sj   }    5 j _  +  
  K+� s:+� s� u:2� sL*Y:�*� +� { � Nç :��:-� F� �� <*Y:�*� � �� { � Nç :��-� -,� �� :� �-� `'� �� V*Y:�*� � �� { � Nç :	�	�-� -� �	� --� �,� �� ��-� M-� �� D-,� ��2� v� -�-� -� -,� �:�  :� $Y� &�� )+� k� -� ��� v� $� v� �:� � � ,� ����   . 1   1 6 1   O f i   i n i   � � �   � � �   � � S `   � !   �  �  �  �  � + � 9 � < � J � O � c � q � � � � � � � � � � � � � � � � � � � � � � � � � � � � �' �3 �; �E �H �a   f 
 + z�  �� 3 �w   Kbc    K}w   K��  9z�  E�g  ;��  <�w i   � � 1   �  s�  �    �  s�  � /   �  s�   � @ � +   �  s�   � D D S� % � �     Sj   	}  �   ! � � _   F     *+,� ��   `       �a        bc     �w    �w j   	� �    � � _  )  	   �+� s� �+� s,� u:2� s:2:� 	:� �� � � :� �� �� Q�� �� G� �:�� �� �:� Y�� $Y� &� �� �� ).� �� Ŷ )� -� :� H� �� 4ƶ �� *� �:ƶ �� �:� Y�� �� :� � Y� �:� � � �:*� � � �   `   Z     	   "
 ' - 5 ? Q X d � � � � � � � � �a   �  * ��  < ��  X :��  � ��  � ��  � ��    �bc     ��w    ��w    � �   ���   �fg  " �hw  � �� �     � �� i    	� #� s � U8�  j   � �     	�� _   I     *Ӷ �*۶ �*ݶ ձ   `      % & ) *a       ��  j   �   	�� _   5     *߶ ձ   `   
   1 2a       ��  j   �   !�� _  �    �6*� � �� �Y� �:*� � � � � :� � � t� � � �:� � � s:� � � :	� 	� � �� 	�� (���� ����	� 	����� ���� W���� :� � �� � � s:*� � { � :� �� 76,:	,�:	� :
+� $Y� &-� )� )	� )� )� -� ��� @+� $Y� &-� )-� )!� )�#� )&� )�(� )+� )� -� է�R+� $Y� &-� )-� )!� )�#� )-� )�/� )2� )�4� )+� )� -� �+� $Y� &-� )-� )� -�7���� +� $Y� &-� );� )� -� ձ  � � � `   � *  ; = 
> B C $E .F :H FI RK mL �M �S �T �V �X �Y �Z �\ �] �` �a �c �f �h �g �jlo6pDqSoVsYusv�w�u�y�z�|�}�a   �  : b��  F V}g  R Jz� 	 � .�g 	 � �}g  � �z�   �bc    ���   ��g   ��g  ���  ���  $��� �     ��� i   [ � �  �� H � s 	� � / s �  
  � s s � s  s � "� G� bj   �  � �   !?  _   8     
*� �= �   `   
   � 	�a       
bc   ! R _   ?     *� +�@ �   `      �a       bc     �w j   �   !D _   ?     *� +�B �   `      �a       bc     �w j   �   !G � _   4     
*� �E �   `      �a       
bc  �    �   !J � _   4     
*� �H �   `      �a       
bc  \   � !MN _   4     
*� �K �   `      �a       
bc   ! � � _   4     
*� � � �   `      �a       
bc   !QR _   C     *� +�O �   `   
   � 
�a       bc     �  j   �   !U _   ?     *� +�S �   `      �a       bc     �w j   �   ! � � _   4     
*� �V �   `      �a       
bc   !  _   Y     +� |� *� +�W ��   `      � � �a       bc     �w i    j   �  �    �   !Z � _   4     
*� �X �   `      �a       
bc   �  _   #      � BY�[� =�   `       � �   ��    � h[ s��   J 	  � �     K��	 v �  � � 
 � |�	� � � � � � 