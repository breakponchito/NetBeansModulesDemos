����   4 �
      Horg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell addElementAtt '(Ljava/lang/String;Ljava/lang/String;)V
   	 
 addPI (Ljava/lang/String;)V
    
 
addDoctype
    
 addElementNS
    
 addElementName
      java/lang/Object <init> ()V	     doctypes [Ljava/lang/String;	      pis	  " # $ root Ljava/lang/String;	  & '  nss	  ) *  attns	  , -  attvs
 / 0 1 2 3 6org/netbeans/modules/openide/filesystems/declmime/Util writeStrings *(Ljava/io/DataOutput;[Ljava/lang/String;)V
 / 5 6 7 writeUTF )(Ljava/io/DataOutput;Ljava/lang/String;)V
 / 9 : ; readStrings ((Ljava/io/DataInput;)[Ljava/lang/String;
 / = > ? readUTF '(Ljava/io/DataInput;)Ljava/lang/String; A java/lang/StringBuilder
 @  D 
xml-check(
 @ F G H append -(Ljava/lang/String;)Ljava/lang/StringBuilder; J 	doctypes: L ,  N PIs: P root: R root-namespaces: T attributes: V =' X '
 @ Z G [ (C)Ljava/lang/StringBuilder;
 @ ] ^ _ toString ()Ljava/lang/String; a java/lang/String
 / c d e 	addString :([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
 / g h i contains (([Ljava/lang/Object;Ljava/lang/Object;)Z
 ` k l m equals (Ljava/lang/Object;)Z
  o p q attMatch M(Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;)Z
 / s t u indexOf (([Ljava/lang/Object;Ljava/lang/Object;)I Code LineNumberTable LocalVariableTable this JLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell; writeExternal (Ljava/io/DataOutput;)V out Ljava/io/DataOutput; 
Exceptions � java/io/IOException MethodParameters readExternal (Ljava/io/DataInput;)V in Ljava/io/DataInput; buf Ljava/lang/StringBuilder; i I StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; s name value match j t 
access$000 _(Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;Ljava/lang/String;)V x0 x1 
access$100 
access$200 
access$300 
access$400 q(Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;Ljava/lang/String;Ljava/lang/String;)V x2 
SourceFile XMLMIMEComponent.java InnerClasses � Borg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent Smell                    # $    '     *     -          v   i     #*� *� *� *� !*� %*� (*� +�    w   "   r t 	u w x z { "r x       # y z    { |  v   }     1+*� � .+*� � .+*� !� 4+*� %� .+*� (� .+*� +� .�    w      ~  � �  � (� 0� x       1 y z     1 } ~       � �    }    � �  v   }     1*+� 8� *+� 8� *+� <� !*+� 8� %*+� 8� (*+� 8� +�    w      � � � �  � (� 0� x       1 y z     1 � �       � �    �    ^ _  v  �     �� @Y� BL=+C� EW*� � ++I� EW=*� �� +*� 2� EK� EW����*� � ++M� EW=*� �� +*� 2� EK� EW����*� !� +O� E*� !� EW*� %� ++Q� EW=*� %�� +*� %2� EK� EW����*� (� 9+S� EW=*� (�� '+*� (2� EU� E*� +2� EW� EW����+)� YW+� \�    w   n   � � 
� � � � *� :� @� G� N� Y� i� o� v� �� �� �� �� �� �� �� �� �� �� �� �� x        � y z    � � �  
 � � �  �    	� ! @, �     �     
  v   m     #*� � *� `Y+S� � **� +� b� �    w      � � � "� x       # y z     # � $  �     �    �    	 
  v   m     #*� � *� `Y+S� � **� +� b� �    w      � � � "� x       # y z     # � $  �     �    �     
  v   m     #*� %� *� `Y+S� %� **� %+� b� %�    w      � � � "� x       # y z     # � $  �     �    �     
  v   >     *+� !�    w   
   � � x        y z      � $  �    �       v   �     ;*� (� *� `Y+S� (*� `Y,S� +� **� (+� b� (**� +,� b� +�    w      � � � "� .� :� x        ; y z     ; � $    ; � $  �    " �   	 �   �    � q  v  �     �+� �*� � +� � *� +� 2� f� �*� !� C*� !+� !� j� 5*� %� *+� n� U�+� %� L*� %+� %2� f� <*+� n� 4�*� !� +*� %� $+� %� *� %+� %2� f� *+� n� �*� � @+� � 9=*� �� .>+� �� *� 2+� 2� j� ����������    w   F   � � � &� ;� B� L� c� m� �� �� �� �� �  �� �� � x   *  � # � �  � 4 � �    � y z     � � z  �    
% .� � 
� �  �    �    p q  v   �     W*� (� �+� (� �=*� (�� ;+� (*� (2� r>� �*� +2� *� +2+� +2� j� ������    w   * 
   	   + 0 2 M O U x   *  + $ � �   A � �    W y z     W � z  �    	� � � �  �    �   � �  v   :     *+� �    w      q x        � z      � $  � �  v   :     *+� �    w      q x        � z      � $  � �  v   :     *+� �    w      q x        � z      � $  � �  v   :     *+� �    w      q x        � z      � $  � �  v   E     *+,� �    w      q x         � z      � $     � $   �    � �   
   � � 
