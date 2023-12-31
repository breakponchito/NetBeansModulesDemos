����   4Z
      org/openide/ErrorManager <init> ()V	  	 
   /org/openide/ErrorManager$DelegatingErrorManager name Ljava/lang/String;  java/util/HashSet
  	     	delegates Ljava/util/Set;  org/openide/util/WeakSet
  	     createdByMe Lorg/openide/util/WeakSet;	     logger Ljava/util/logging/Logger;
   ! " # $ java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; &  
 ( ) * + , java/lang/String equals (Ljava/lang/Object;)Z
  .  / (Ljava/lang/String;)V
  1 2 3 attachNewDelegates F(Lorg/openide/ErrorManager$DelegatingErrorManager;Ljava/lang/String;)V
  5 6 , add 8 9 : ; < java/util/Set iterator ()Ljava/util/Iterator; > ? @ A B java/util/Iterator hasNext ()Z > D E F next ()Ljava/lang/Object;
  H I J attachAnnotations R(Ljava/lang/Throwable;[Lorg/openide/ErrorManager$Annotation;)Ljava/lang/Throwable;
  L M N findAnnotations =(Ljava/lang/Throwable;)[Lorg/openide/ErrorManager$Annotation; P #org/openide/ErrorManager$Annotation 8 R S B isEmpty U java/util/logging/LogRecord	 W X Y Z [ java/util/logging/Level ALL Ljava/util/logging/Level;
  ] ^ _ convertSeverity 6(IZLjava/util/logging/Level;)Ljava/util/logging/Level;
 T a  b .(Ljava/util/logging/Level;Ljava/lang/String;)V
 T d e f 	setThrown (Ljava/lang/Throwable;)V
 h i j k l java/util/Date getTime ()J
 T n o p 	setMillis (J)V r 1org/openide/ErrorManager$DelegatingErrorManager$1
 q t  3
 T v w x setResourceBundle (Ljava/util/ResourceBundle;)V z msg
 T | } / 
setMessage
  � � � � %org/openide/ErrorManager$AnnException findOrCreate ?(Ljava/lang/Throwable;Z)Lorg/openide/ErrorManager$AnnException;
  � � � 	addRecord  (Ljava/util/logging/LogRecord;)V
  � � � annotate v(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Date;)Ljava/lang/Throwable;
  � � B enterLogger
  � � � 
access$000 ()Ljava/util/Map; � � � � � java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;
  �  � ()Ljava/util/logging/Logger;	 � � � � [ !org/openide/ErrorManager$OwnLevel UNKNOWN
 � � � � � java/lang/Throwable 
getMessage ()Ljava/lang/String;
   � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � �  
exitLogger
  � � � notify (ILjava/lang/Throwable;)V � java/lang/RuntimeException
 � � �  printStackTrace
 � � � java/lang/LinkageError
 � � � "java/lang/IllegalArgumentException � /ErrorManager.log(UNKNOWN, ...) is not permitted
 � .	 W � � [ FINE
   � � b
  � � � (ILjava/lang/String;)V   	 W � � [ SEVERE	 � � � [ USER	 W � � [ WARNING	 W � � [ INFO � 1ErrorManager.isLoggable(UNKNOWN) is not permitted
   � � � 
isLoggable (Ljava/util/logging/Level;)Z
  � � � (I)Z � 3ErrorManager.isNotifiable(UNKNOWN) is not permitted
  � � � isNotifiable � java/util/LinkedHashSet
 � �  � (Ljava/util/Collection;)V
  9
  � � � getName
  � � � getInstance .(Ljava/lang/String;)Lorg/openide/ErrorManager; 8 5
  � � � setDelegates
 � � � � � org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
 � � � � lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	  �  r  Lorg/openide/util/Lookup$Result;
 org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;	 	
 
lastThread Ljava/lang/Thread;
 java/lang/Thread currentThread ()Ljava/lang/Thread; java/lang/Exception (using error manager from inside a logger
 .
 � org/openide/util/LookupListener 	Signature +Ljava/util/Set<Lorg/openide/ErrorManager;>; MLorg/openide/util/WeakSet<Lorg/openide/ErrorManager$DelegatingErrorManager;>; <Lorg/openide/util/Lookup$Result<Lorg/openide/ErrorManager;>; Code LineNumberTable LocalVariableTable this 1Lorg/openide/ErrorManager$DelegatingErrorManager; MethodParameters StackMapTable dem' java/lang/Object em Lorg/openide/ErrorManager; t Ljava/lang/Throwable; arr &[Lorg/openide/ErrorManager$Annotation; res rb Ljava/util/ResourceBundle; rec Ljava/util/logging/LogRecord; ann 'Lorg/openide/ErrorManager$AnnException; severity I message localizedMessage 
stackTrace date Ljava/util/Date; ext e Ljava/lang/RuntimeException; Ljava/lang/LinkageError; sev s forException Z def #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; newDelegates Ljava/util/Collection; LocalVariableTypeTable 3Ljava/util/Collection<+Lorg/openide/ErrorManager;>; 6(Ljava/util/Collection<+Lorg/openide/ErrorManager;>;)V newDelegatesForDem 
initialize resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; 
SourceFile ErrorManager.java InnerClasses DelegatingErrorManager 
Annotation AnnException OwnLevel Result                                      J
      /    m     %*� *� *� Y� � *� Y� � *+� �           	   $         %!"     %   #          �    R     *� � **� � � *� �         % & (        !"  $      � �    �     9+� %+� '� *�� Y+� -M*YN�*,+� 0*� ,� 4W-ç 
:-��,�   - 0   0 4 0      "   / 1 4 6 7 "8 +9 7;         9!"     9     !%" $    �     ( &  �� #        I J    �     +*� � 7 N-� = � -� C � :+,� GW���+�         @ A &B )D    *   ()    +!"     +*+    +,- $    � 
 >� #   	*  ,    M N    �     :*� � 7 M,� = � %,� C � N-+� K:� �� ����� O�         I J $L /M 2O 5Q    *  $ .-   ()    :!"     :*+ $    � 
 >'� #   *    � �   �  	   �*� � Q � d� TY� V� \-� `:� 
� c� � g� m� � qY*� s:� uy� {+� ~:� 
� �+�*� � 7 :� = � !� C � :+-� �W���+�      J   Y Z [ #\ *^ /_ 9a >b Jo Qp Xs _t du kx m{ �| �} �    p  J /0   O12  _ 34  � ()    �!"     �*+    �56    �7     �8     �9+    �:; $    � * T�  � � 
 >� '#   *  5  7  8 9  :    � �   �     �*� � Q � @� �� �� �,� � � N-� -M*� �� �� \,� �,� �� �� :� ���*� � 7 N-� = � -� C � :,� ���� N-� �,� �� N-� �,� ��   : @   @ B @   I q t � I q � �    ^   � � �  � $� &� :� =� @� E� H� I� g� n� q� t� u� y� }� �� �� �� ��    H    <4  g ()  u =>  � =?    �!"     �56    �*+ $   . 
�  �    �  � � 	 >� B �K �#   	5  *    � �   %     k� � �Y�� ��*� � Q � +� �� \N� �� �*� �-,� ø �� :� ���*� � 7 N-� = � -� C � :,� ŧ��  * 3 9   9 ; 9      >   � � � � #� *� 3� 6� 9� >� A� B� `� g� j�    4  # @ [  ` ()    k!"     k56    kA  $    �  WN ��  � 	 >� #   	5  A   
 ^ _    �     M,Nȡ 
� �N� ? � 
� �N� 1 � 
� �N� #� 
� �N� � � 	� ҧ � �N-�      2   � � � � � � $� +� 1� 8� =� K�    *    M56     MBC    MD [   K@ [ $    �  WB W #   5 B  D    � �    �     T� � �Yշ ��*� � Q � *� �� \� ׬*� � 7 M,� = � ,� C � N-� ۙ �����      & 	  � � � � (� E� M� O� R�       E 
()    T!"     T56 $    � 	 >� #   5  E    F    � �    �     T� � �Y޷ ��*� � Q � *� �� \� ׬*� � 7 M,� = � ,� C � N-� �� �����      & 	  � � � � (� E� M� O� R�       E 
()    T!"     T56 $    � 	 >� #   5  E    F   ! � �    �     4*� �Y+� � *� � �M,� = � ,� C � N*--� � 0���         � � '� 0� 3�       ' 	%"    4!"     4GH I       4GJ $    �  >� #   G     K  � �    /     *� �         �        !"    2 3    �     ?� Y� N*� � 7 :� = � � C � :-,� � � W���+-� �          	 )
 6 9 >    4  ) =)    ?!"     ?%"    ?     7L  I      7L $    �  8 >� %#   	%      M     J     *� �� �� �**� ��� �                   !"   NO    X     *� �� **� ��� �                   !"     PQ $    #   P   
 � B    Q       ��� �Y������         ! 	" # % &$     
 �     !      ��      
   * + R   ST   2   U 
 O V	 q        W  � X  �Y	