����   4 ?  <org/openide/filesystems/annotations/LayerGeneratingProcessor
      java/lang/Object <init> ()V 
 #-//NetBeans//DTD Filesystem 1.2//EN
      java/lang/String equals (Ljava/lang/Object;)Z  org/xml/sax/InputSource  */org/openide/filesystems/filesystem1_2.dtd
      java/lang/Class getResource "(Ljava/lang/String;)Ljava/net/URL;
       java/net/URL toString ()Ljava/lang/String;
  "  # (Ljava/lang/String;)V % >org/openide/filesystems/annotations/LayerGeneratingProcessor$2 ' org/xml/sax/EntityResolver Code LineNumberTable LocalVariableTable this @Lorg/openide/filesystems/annotations/LayerGeneratingProcessor$2; resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource; publicId Ljava/lang/String; systemId StackMapTable 
Exceptions 5 org/xml/sax/SAXException 7 java/io/IOException MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile LayerGeneratingProcessor.java EnclosingMethod InnerClasses   $   &         (   /     *� �    )       Q *        + ,    - .  (   l     	+� � � Y� � � !��    )       S 	 T  V *         + ,      / 0     1 0  2     3     4 6 8   	 /   1   9     :    ;    < =       >   
  $      