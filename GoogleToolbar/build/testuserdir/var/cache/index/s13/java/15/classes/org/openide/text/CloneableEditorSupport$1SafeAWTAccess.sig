����   4 G	      6org/openide/text/CloneableEditorSupport$1SafeAWTAccess this$0 )Lorg/openide/text/CloneableEditorSupport;
  	 
   java/lang/Object <init> ()V	     running Z
     	notifyAll
      'org/openide/text/CloneableEditorSupport 
access$200 ,(Lorg/openide/text/CloneableEditorSupport;)I	     ret I	      finished      '
  $ % & wait (J)V ( java/lang/InterruptedException * <Waiting 10s for AWT and nothing! Exiting to prevent deadlock
 ' ,  - (Ljava/lang/String;)V
  / %  1 java/lang/Runnable ,(Lorg/openide/text/CloneableEditorSupport;)V Code LineNumberTable LocalVariableTable this 8Lorg/openide/text/CloneableEditorSupport$1SafeAWTAccess; MethodParameters run StackMapTable < java/lang/Throwable waitForResult 
Exceptions 
SourceFile CloneableEditorSupport.java EnclosingMethod C D canClose ()Z InnerClasses SafeAWTAccess      0                             2  3   >     
*+� *� �    4      ? 5       
 6 7     
    8    �  9   3  Y     ^*YL�*� *� +ç M+�,�**� � � *YL�*� *� +ç N+�-�� $:*Y:�*� *� ç :����            & 1 4   4 7 4    " <   C O R   R W R   < > <    4   B   E F 	G H K "M &N +O /P 9Q <M CN HO LP ZQ ]R 5       ^ 6 7   :   O �      ;� �      ;� B ;�       ;   ;� �      ! =   3   {     .*� � 
* !� #*� � � 'Y)� +�*� � 
*� .����    4      W X Z [ ^ &_ -a 5       . 6 7   :     >     '  ?    @ A     B E   
     F  