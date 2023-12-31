����   4
      -org/openide/awt/SwingBrowserImpl$SwingBrowser <init> %(Lorg/openide/awt/SwingBrowserImpl;)V	   	 
 this$0 "Lorg/openide/awt/SwingBrowserImpl;
      javax/swing/JEditorPane ()V	     lastPaintException Z
     setEditable (Z)V  /org/openide/awt/SwingBrowserImpl$SwingBrowser$1
     T(Lorg/openide/awt/SwingBrowserImpl$SwingBrowser;Lorg/openide/awt/SwingBrowserImpl;)V
      addHyperlinkListener ((Ljavax/swing/event/HyperlinkListener;)V
  " # $ getActionMap ()Ljavax/swing/ActionMap; & !javax/swing/text/DefaultEditorKit ( caret-up * :org/openide/awt/SwingBrowserImpl$SwingBrowser$ScrollAction
 ) ,  - 3(Lorg/openide/awt/SwingBrowserImpl$SwingBrowser;I)V
 / 0 1 2 3 javax/swing/ActionMap put )(Ljava/lang/Object;Ljavax/swing/Action;)V 5 
caret-down 7 	text/html
 9 : ; < = java/lang/String equals (Ljava/lang/Object;)Z ? /org/openide/awt/SwingBrowserImpl$SwingBrowser$2
 > A  B 2(Lorg/openide/awt/SwingBrowserImpl$SwingBrowser;)V
  D E F getEditorKitForContentType 0(Ljava/lang/String;)Ljavax/swing/text/EditorKit;
 H I J K L javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V
 N O P Q R java/net/URL 
openStream ()Ljava/io/InputStream;
 T U V W X  org/openide/awt/SwingBrowserImpl 
access$900 )(Ljava/io/InputStream;)Ljava/lang/String;
 T Z [ \ 
access$700 ()Ljava/util/logging/Logger;	 ^ _ ` a b java/util/logging/Level FINE Ljava/util/logging/Level; d java/lang/StringBuilder
 c  g Url 
 c i j k append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 c m j n -(Ljava/lang/Object;)Ljava/lang/StringBuilder; p  has charset 
 c r s t toString ()Ljava/lang/String;
 v w x y z java/util/logging/Logger log .(Ljava/util/logging/Level;Ljava/lang/String;)V | charset
  ~  � putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V � "java/lang/IllegalArgumentException � java/net/MalformedURLException
 � 
 � � � � 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � 1org.openide.awt.SwingBrowserImpl.do-not-block-awt
 � � � � � java/lang/Boolean 
getBoolean (Ljava/lang/String;)Z
  � � � setContentType (Ljava/lang/String;)V � 4org/openide/awt/SwingBrowserImpl$FilteredInputStream
 N � � � openConnection ()Ljava/net/URLConnection;
 � �  � =(Ljava/net/URLConnection;Lorg/openide/awt/SwingBrowserImpl;)V
  � � � 	getStream %(Ljava/net/URL;)Ljava/io/InputStream;
  � � � getPreferredSize ()Ljava/awt/Dimension; � java/lang/RuntimeException � java/awt/Dimension
 � �  � (II)V
  � � � paint (Ljava/awt/Graphics;)V
  � �  repaint
  � � � 	isShowing ()Z
  � � � 	getParent ()Ljava/awt/Container;
  � � � getWidth ()I
  � � � 	getHeight
  � � � scrollToReference
  � �  layout � (java/lang/ArrayIndexOutOfBoundsException
 � � � � getStackTrace  ()[Ljava/lang/StackTraceElement;
 � � � � t java/lang/StackTraceElement getClassName � BoxView
 9 � � � endsWith
 � � � � t java/lang/Class getName
 v � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 ^ � � b INFO
 v � y � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V Code LineNumberTable LocalVariableTable this /Lorg/openide/awt/SwingBrowserImpl$SwingBrowser; 	actionMap Ljavax/swing/ActionMap; MethodParameters type Ljava/lang/String; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; e  Ljava/net/MalformedURLException; iaE $Ljava/lang/IllegalArgumentException; page Ljava/net/URL; 
Exceptions � java/io/IOException Ljava/lang/RuntimeException; g Ljava/awt/Graphics; 	reference stack [Ljava/lang/StackTraceElement; aioobE *Ljava/lang/ArrayIndexOutOfBoundsException; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; I(Lorg/openide/awt/SwingBrowserImpl;Lorg/openide/awt/SwingBrowserImpl$1;)V x0 x1 $Lorg/openide/awt/SwingBrowserImpl$1; 
SourceFile SwingBrowserImpl.java InnerClasses SwingBrowser ScrollAction FilteredInputStream "org/openide/awt/SwingBrowserImpl$1             	 
        �   �     D*+� *� *� *� *� Y*+� � *� !M,'� )Y*� +� .,4� )Y*� +� .�    �   "   � 	� � �  � %� 4� C� �       D � �   %  � �  �    	  E F  �   ]     6+� 8� � >Y*� @�*+� C�    �      � 	�  �        � �      � �  �     �    �   �     �    � �  �       w*� � G+� M� SM� Y� ]� cY� ef� h+� lo� h,� h� q� u,� 
*{,� }� M� �Y� �N-,� �W-��� �� *6� �� �Y+� �*� � ��*+� ��   ? B �  �   :    # $ 4& 8' ?. B) C+ K, Q- S1 [3 a5 q7 �   4   0 | �  K  � �  C  � �    w � �     w � �  �   	 ?B � �     � �    �   �     �    � �  �   d     *� ��L� �Y�X� ��      �  �      = > @ �       � �     � �   �    E � �     �    � �  �   �     *+� �*� � M*� � *� �*� �    
  �  �   "   F G 
P H K L O Q �        � �     � �        �    M ��  ��  �       �     �    � �  �   p     &*� �� *� �� *� �� *� �� �*+� ı    �      U V  W %X �       & � �     & �  �      �      �     �    �   �   �     6*� ǧ 1L+� �M,�� $,2� �ն י � ڸ ߲ �+� � +��      �  �   "   ^ g _ a b  c 3e 5h �       (   -    6 � �   �    G �� + ��     	    
   �     �      �   D     *+� �    �      � �         � �      
            2   T         )   >       � T 
      