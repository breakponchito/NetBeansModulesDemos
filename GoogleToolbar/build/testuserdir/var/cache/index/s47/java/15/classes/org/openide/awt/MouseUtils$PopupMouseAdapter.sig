����   4 4
      ,org/openide/awt/MouseUtils$PopupMouseAdapter <init> ()V
   	 java/awt/event/MouseAdapter
     
maybePopup (Ljava/awt/event/MouseEvent;)V
      java/awt/event/MouseEvent isPopupTrigger ()Z
     	showPopup DEFAULT_THRESHOLD I ConstantValue    
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; (I)V Code LineNumberTable LocalVariableTable this .Lorg/openide/awt/MouseUtils$PopupMouseAdapter; 	threshold MethodParameters mousePressed e Ljava/awt/event/MouseEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; mouseReleased StackMapTable evt 
SourceFile MouseUtils.java InnerClasses 2 org/openide/awt/MouseUtils PopupMouseAdapter!                                    =     *� �        
    �  � !        " #      $   %    $                       3     *� �        
    �  � !        " #    &      >     *+� 
�        
    �  � !        " #      ' (  %    '   )     *    +      >     *+� 
�        
    �  � !        " #      ' (  %    '   )     *          R     +� � *+� �            �  �  � !        " #      ' (  ,     %    '      %    -    .    / 0   
   1 3	