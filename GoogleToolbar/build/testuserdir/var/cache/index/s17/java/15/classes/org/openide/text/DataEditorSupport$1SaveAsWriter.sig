����   4 Z	      0org/openide/text/DataEditorSupport$1SaveAsWriter this$0 $Lorg/openide/text/DataEditorSupport;	   	 
 
val$output Ljava/io/OutputStream;	     	val$myDoc !Ljavax/swing/text/StyledDocument;
      java/lang/Object <init> ()V  java/io/BufferedOutputStream
     (Ljava/io/OutputStream;)V
      "org/openide/text/DataEditorSupport 
access$200 ^(Lorg/openide/text/DataEditorSupport;Ljavax/swing/text/StyledDocument;Ljava/io/OutputStream;)V
 ! " # $  java/io/OutputStream close & %javax/swing/text/BadLocationException	  ( ) * ERR Ljava/util/logging/Logger;	 , - . / 0 java/util/logging/Level INFO Ljava/util/logging/Level;
 2 3 4 5 6 java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V 8 java/io/IOException	  : ; < ex Ljava/io/IOException; > java/lang/Runnable ^(Lorg/openide/text/DataEditorSupport;Ljava/io/OutputStream;Ljavax/swing/text/StyledDocument;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/text/DataEditorSupport$1SaveAsWriter; MethodParameters 	Signature run blex 'Ljavax/swing/text/BadLocationException; os e StackMapTable N java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; after 
Exceptions 
SourceFile DataEditorSupport.java EnclosingMethod W  saveDocumentAs InnerClasses SaveAsWriter      =   ; <   	 
               ?  @   H     *+� *,� *-� *� �    A      � B        C D         E    � 	  F      G   @  .     WL� Y*� � L*� *� +� +�  L+� ,+�  � %M� '� +,� 1+� +�  � N+� +�  -�� 	L*+� 9�     + %    B   + 7 B     M P 7  A   J   � � � � �  � $� +� ,� 7� ;� B� G� K� M� P� Q� V� B   *  ,  H I   K J 
  Q  K <    W C D   L   % � +   !  %V M�   M� B 7 O     P    Q   @   H     *� 9� *� 9��    A      � � � B        C D   L     R     7  S    T U     V X   
     Y  