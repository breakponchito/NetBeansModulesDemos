����   4 Q	      /org/openide/awt/SwingBrowserImpl$SwingBrowser$2 this$1 /Lorg/openide/awt/SwingBrowserImpl$SwingBrowser;
  	 
   #javax/swing/text/html/HTMLEditorKit <init> ()V
     getStyleSheet $()Ljavax/swing/text/html/StyleSheet;  3org/openide/awt/SwingBrowserImpl$FilteredStyleSheet
     '(Lorg/openide/awt/SwingBrowserImpl$1;)V
       javax/swing/text/html/StyleSheet addStyleSheet %(Ljavax/swing/text/html/StyleSheet;)V  "javax/swing/text/html/HTMLDocument
    
  ! " # 	getParser .()Ljavax/swing/text/html/HTMLEditorKit$Parser;
  % & ' 	setParser /(Ljavax/swing/text/html/HTMLEditorKit$Parser;)V
  ) * + setAsynchronousLoadPriority (I)V
  - . + setTokenThreshold 2(Lorg/openide/awt/SwingBrowserImpl$SwingBrowser;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/awt/SwingBrowserImpl$SwingBrowser$2; MethodParameters createDefaultDocument ()Ljavax/swing/text/Document; styles "Ljavax/swing/text/html/StyleSheet; ss doc $Ljavax/swing/text/html/HTMLDocument; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile SwingBrowserImpl.java EnclosingMethod C -org/openide/awt/SwingBrowserImpl$SwingBrowser E F getEditorKitForContentType 0(Ljava/lang/String;)Ljavax/swing/text/EditorKit; InnerClasses I  org/openide/awt/SwingBrowserImpl SwingBrowser FilteredStyleSheet M "org/openide/awt/SwingBrowserImpl$1 O *javax/swing/text/html/HTMLEditorKit$Parser Parser                /  0   >     
*+� *� �    1      � 2       
 3 4     
    5    �  6 7  0   �     1*� L� Y� M,+� � Y,� N-*�  � $-� (-d� ,-�    1   "   �      $ ) / 2   *    1 3 4    , 8 9   # : 9    ; <  =     >    ?    @ A    B D G   *  B H J          H K 
 L       N  P	