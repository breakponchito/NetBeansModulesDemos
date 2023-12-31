����   4�
       org/openide/awt/SwingBrowserImpl findEncodingFromURL )(Ljava/io/InputStream;)Ljava/lang/String;	   	 
 LOG Ljava/util/logging/Logger;	     historyList Ljava/util/Vector;	     historyIndex I	     historyNavigating	     
loadingURL Ljava/net/URL;	     pcs "Ljava/beans/PropertyChangeSupport;	      url
 " # $ % &  org/openide/awt/HtmlBrowser$Impl <init> ()V (  	  * + , statusMessage Ljava/lang/String;	  . / , title	  1 2 3 fetchingTitle Z 5  java/beans/PropertyChangeSupport
 4 7 % 8 (Ljava/lang/Object;)V : -org/openide/awt/SwingBrowserImpl$SwingBrowser
 9 < % = I(Lorg/openide/awt/SwingBrowserImpl;Lorg/openide/awt/SwingBrowserImpl$1;)V	  ? @ A swingBrowser /Lorg/openide/awt/SwingBrowserImpl$SwingBrowser; C javax/swing/JScrollPane
 B E % F (Ljava/awt/Component;)V	  H I J scroll Ljavax/swing/JScrollPane; L java/util/Vector
 K N % O (II)V Q page S "org/openide/awt/SwingBrowserImpl$1
 R U % V %(Lorg/openide/awt/SwingBrowserImpl;)V
 9 X Y Z addPropertyChangeListener 8(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V	  \ ] ^ rp #Lorg/openide/util/RequestProcessor;
 9 ` a b getDocument ()Ljavax/swing/text/Document; d !javax/swing/text/AbstractDocument
 f g h i j java/net/URL getProtocol ()Ljava/lang/String; l ftp
 n o p q r java/lang/String equalsIgnoreCase (Ljava/lang/String;)Z t http v java/lang/Thread
 c x y z setAsynchronousLoadPriority (I)V
 | } ~  � !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task; � java/lang/Exception	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V + � java/lang/StringBuilder
 � #
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � j toString
 4 � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V	 � � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
 � � � � 
readAccess (Ljava/lang/Runnable;)V � LBL_Loading
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;	  � � 3 $assertionsDisabled
 � � � � � javax/swing/SwingUtilities isEventDispatchThread ()Z � java/lang/AssertionError
 � #
  � � j getTitle � "javax/swing/text/html/HTMLDocument / � � � � � javax/swing/text/Document getProperty &(Ljava/lang/Object;)Ljava/lang/Object;
 n � � j trim
 n � � � length ()I
  � � � getURL ()Ljava/net/URL;
 f � � j getFile � LBL_Untitled � /
 n � � � lastIndexOf (Ljava/lang/String;)I
 n � � � 	substring (I)Ljava/lang/String; � 	LBL_Title � java/lang/Object
 n � � � (II)Ljava/lang/String;
 � � � � J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
 n � � � equals (Ljava/lang/Object;)Z
  � � & updateTitle
 f � � � sameFile (Ljava/net/URL;)Z � stream � � � � putProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
 9 setPage (Ljava/net/URL;)V
  setStatusText (Ljava/lang/String;)V	 java/net/UnknownHostException FMT_UnknownHost java/net/NoRouteToHostException FMT_NoRouteToHost java/io/IOException FMT_InvalidURL
 � � invokeLater
 K � size
  � 	isForward
 K  	elementAt (I)Ljava/lang/Object;
 "# setURL
 %& � 
isBackward
 4( Y) &(Ljava/beans/PropertyChangeListener;)V
 4+,) removePropertyChangeListener
./012 java/io/InputStream read ([BII)I
 n4 %5 ([BII)V
 n78 j toUpperCase
 :;< findEncoding &(Ljava/lang/String;)Ljava/lang/String;
 �>? & printStackTraceA </HEAD>
 nCD � indexOfF CONTENT-TYPEH CHARSET=
 nJDK (Ljava/lang/String;I)I
 nMDN (II)I
PQRS � java/lang/Class desiredAssertionStatusU Swing Browser
 |W %
PYZ j getName
 �\]^ 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;` java/lang/Runnable NO_NAVIGATION ConstantValue    NAVIGATION_BACK    NAVIGATION_FWD    	Signature &Ljava/util/Vector<Ljava/lang/Object;>; Code LineNumberTable LocalVariableTable this "Lorg/openide/awt/SwingBrowserImpl; getComponent ()Ljava/awt/Component; reloadDocument protocol doc Ljavax/swing/text/Document; e Ljava/lang/Exception; StackMapTabley java/lang/Throwable stopLoading MethodParameters getStatusMessage i u d oldTitle run requestedURL uhe Ljava/net/UnknownHostException; nrthe !Ljava/net/NoRouteToHostException; ioe Ljava/io/IOException; s forward backward 	isHistory showHistory l #Ljava/beans/PropertyChangeListener; arr [B len txt x Ljava/io/InputStream;� headLen content charset charend charend2 
access$100 2(Lorg/openide/awt/SwingBrowserImpl;)Ljava/net/URL; x0 
access$102 @(Lorg/openide/awt/SwingBrowserImpl;Ljava/net/URL;)Ljava/net/URL; x1 
access$200 F(Lorg/openide/awt/SwingBrowserImpl;)Ljava/beans/PropertyChangeSupport; 
access$300 
access$302 
access$400 %(Lorg/openide/awt/SwingBrowserImpl;)I 
access$500 
access$600 6(Lorg/openide/awt/SwingBrowserImpl;)Ljava/util/Vector; 
access$502 &(Lorg/openide/awt/SwingBrowserImpl;I)I 
access$402 
access$700 ()Ljava/util/logging/Logger; 
access$900 <clinit> 
SourceFile SwingBrowserImpl.java InnerClasses� org/openide/awt/HtmlBrowser Impl SwingBrowser� &org/openide/util/RequestProcessor$Task Task� 3org/openide/awt/SwingBrowserImpl$FilteredStyleSheet FilteredStyleSheet� 4org/openide/awt/SwingBrowserImpl$FilteredInputStream FilteredInputStream 0  " _  a  b   c d  b   e f  b   g  ] ^                    + ,    @ A    I J      h   i            / ,     2 3   
 	 
   � 3   "   % & j   �     e*� !*'� )*� *� -*� 0*� 4Y*� 6� *� 9Y*� ;� >*� BY*� >� D� G*� KY� M� *� *� >P� RY*� T� W�   k   2    _  N 
 Y  Z  [  ` % a 2 b A c N d S e d �l       emn   op j   /     *� G�   k       �l       mn   q & j  �     �� [YL�*� � 
*� � +ñ*� >� _M**� � ,� c� 0*� � eNk-� m� s-� m� ,� c� w� ,� c� w� [*� {W� 1M� � �,� �*� �*� �Y� �'� �,� �� �Z� )� �+ç 
:+���    f �  c f �   �    � �   � � �   k   J    �  �  �  �  � ' � . � 6 � B � H � S � [ � c � f � g � r � � � � �l   *  6 %r ,   Dst  g -uv    �mn  w   . 	�  �� 0 � n
� � 
   �  �-Dx�  z & j   +      �   k       �l       mn   # j        X� [YM�+� ,ñ*+� � [*� {W� 1N� � �-� �*� �*� �Y� �'� �-� �� �Z� )� �,ç 
:,���   
  �    �   P    M P   P T P   k   .    �  � 
 �  �  �  �  �  � ) � K � W �l       -uv    Xmn     X    w    �  �O �-Dx� {         � � j   /     *� �   k       �l       mn   | j j   /     *� )�   k       �l       mn    � j j   d     $*� -� 
� �*� �*� -� �� �� *� -�   k       �  �  �l       $mn  w    C n   � & j  � 	   � �� � �� � �Y� ��*� 0� �*� 0*� �L*� >� _M*,Ĺ � � n� -*� -� *� -� ˶ Κ Z*� �N-� Q*-� ֵ -*� -� Κ *ٸ �� -� 1*� -۶ �6�  *� -� �d� **� -`� � -*� -� D*� -� �<� *�� �Y*� -9� �S� � -+*� -� � *� �+*� -� �*� 0� :*� 0��  & � �   � � �   k   r    �  �  �  � ! � & . = Q V
 Z b l z � � � � � �  � �$ �& �* �+ �* �+,l   4  � #}   V R~   . �t   mn   & �� , w    	� 4 n �� ( f� -.� Gx	 � & j  �     �� �� *� -*� � �� [YM�*� � &*� *� � �� *� >� _N-� -�� � *� L*� ,ç 
:,��*� >+� *�� HM*
� �Y+S� �� 0M*� �Y+S� �� M*� �Y+S� �*��   N Q   Q U Q   X e h X e � X e � k   z   / 0 1 4 5 -6 58 9: B= G> L? XB `C eP hD iE wF zE }P �H �I �J �I �P �L �M �N �M �R �Tl   H  5 st  G 
�   i ��  � ��  � ��  X Y�     �mn  w   + 	� /  �Nx�    f  OWW�    j   I     *� �*+Z� )� ��   k   
   [ \l       mn     � , {   �    � j   Z     %*� � *� *� �d� *� � � �   k      bl       %mn  w    #@ � & j   `     !*�� *� **� *� `�� f�!�   k      i j k  ml       !mn  w      & � j   X     #*� � *� *� �� *� � � �   k      sl       #mn  w    !@ � & j   `     !*�$� *� **� *� d�� f�!�   k      y z {  }l       !mn  w      � � j   ,     �   k      �l       mn   � & j   +      �   k      �l       mn    Y) j   A     	*� +�'�   k   
   � �l       	mn     	�� {   �   ,) j   A     	*� +�*�   k   
   � �l       	mn     	�� {   �   
   j   �     1 �L*++��-=� nY+� � �3�6N-�9�L+�=�    ) * � k      � � � %� *� +� /�l   4   $��   �   % � ,  + �v    1 ��  w   @ �  .�   ��   .�   ��  .  �{    �   
;< j  4     |*@�B<� *� �<*E�B=� � �*G�I>� �*"�L6*'�L6� � �� � 
� 6*G� �`� �   k   F   � � � � � $� &� /� 4� 6� ?� H� T� V� \� i� m�l   >    |� ,    t�    b�   / M�   ? =�   H 4�  w    � � � � {   �  �� j   /     *� �   k       Al       �n  �� j   ;     *+Z� �   k       Al       �n     �  �� j   /     *� �   k       Al       �n  �� j   /     *� �   k       Al       �n  �� j   ;     *+Z� �   k       Al       �n     �  �� j   /     *� �   k       Al       �n  �� j   /     *� �   k       Al       �n  �� j   /     *� �   k       Al       �n  �� j   ;     *Z� �   k       Al       �n     �  �� j   ;     *Z� �   k       Al       �n     �  �� j         � �   k       A�  j   /     *� �   k       Al       ��   � & j   T      )�O� � � �� |YT�V� [�X�[� �   k       A  F  ]w    @ �   ��   2  "��	 9 �  R      � |� � � 
� � 
