����   4 2
      java/lang/Object <init> ()V	  	 
   #org/openide/NotificationLineSupport nd Lorg/openide/NotifyDescriptor;
      org/openide/NotifyDescriptor setInformationMessage (Ljava/lang/String;)V
     getInformationMessage ()Ljava/lang/String;
     setWarningMessage
     getWarningMessage
     setErrorMessage
  ! "  getErrorMessage
  $ %  clearMessages !(Lorg/openide/NotifyDescriptor;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/NotificationLineSupport; 
descriptor MethodParameters msg Ljava/lang/String; 
SourceFile NotificationLineSupport.java 1               &  '   F     
*� *+� �    (           	 ! )       
 * +     
 ,   -    ,       '   A     	*� +� �    (   
    (  ) )       	 * +     	 . /  -    .       '   2     *� � �    (       0 )        * +       '   A     	*� +� �    (   
    8  9 )       	 * +     	 . /  -    .       '   2     *� � �    (       @ )        * +       '   A     	*� +� �    (   
    H  I )       	 * +     	 . /  -    .    "   '   2     *� �  �    (       P )        * +    %   '   6     *� � #�    (   
    W  X )        * +    0    1