����   4 �
      java/lang/Object <init> ()V  org/openide/ErrorManager	  
   current 1Lorg/openide/ErrorManager$DelegatingErrorManager;
     getDefaultDelegate 3()Lorg/openide/ErrorManager$DelegatingErrorManager;  /org/openide/ErrorManager$DelegatingErrorManager   
     (Ljava/lang/String;)V
     
initialize	     r  Lorg/openide/util/Lookup$Result;
   ! " # $ org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V & java/lang/RuntimeException
 % ( )  printStackTrace + java/lang/LinkageError
 * (
  . / 0 notify (ILjava/lang/Throwable;)V
  2 3 4 log (ILjava/lang/String;)V
  6 7 8 
isLoggable (I)Z
  : ; < annotate v(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Date;)Ljava/lang/Throwable; UNKNOWN I ConstantValue     INFORMATIONAL    WARNING    USER    	EXCEPTION    ERROR    Code LineNumberTable LocalVariableTable this Lorg/openide/ErrorManager; 
getDefault ()Lorg/openide/ErrorManager; StackMapTable T java/lang/Throwable e Ljava/lang/RuntimeException; Ljava/lang/LinkageError; c attachAnnotations R(Ljava/lang/Throwable;[Lorg/openide/ErrorManager$Annotation;)Ljava/lang/Throwable; MethodParameters t arr findAnnotations =(Ljava/lang/Throwable;)[Lorg/openide/ErrorManager$Annotation; severity message localizedMessage 
stackTrace date (Ljava/lang/Throwable;)V Ljava/lang/Throwable; s Ljava/lang/String; isNotifiable getInstance .(Ljava/lang/String;)Lorg/openide/ErrorManager; name >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable; A(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable; target copyAnnotation copyFrom 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; 
SourceFile ErrorManager.java InnerClasses DelegatingErrorManager z org/openide/util/Lookup Result } !org/openide/ErrorManager$OwnLevel OwnLevel � %org/openide/ErrorManager$AnnException AnnException � #org/openide/ErrorManager$Annotation 
Annotation!       = >  ?    @  A >  ?    B  C >  ?    D  E >  ?    F  G >  ?    H  I >  ?    J 
          K   /     *� �    L       � M        N O   	 P Q  K   t     YK² 	� 	� 	*ð*ç L*�+�� �                  L      
     R    �  D S�  
    K  
     O� Y� K*� YL² 	� *� 	� 	� � 	� +ç M+�,�� L+� '*� 	� L+� ,*� 	� 	�   + .   . 1 .   
 3 6 % 
 3 B *  L   B    
     )  3) 6! 7# ;$ ?) B% C' G( K+ M      7  U V  C  U W  
 E X    R    � )  D S� B %K * Y Z  [   	 \   ]   ^ _  [    \   ; <  [    \   `   a   b   c   d   / 0  [   	 `   \    / e  K   ?     *+� -�    L   
   ] ^ M        N O      \ f  [    \   3 4  [   	 `   g    3   K   ?     *+� 1�    L   
   m n M        N O      g h  [    g    7 8  K   6     �    L      { M        N O      ` >  [    `    i 8  K   :     *� 5�    L      � M        N O      ` >  [    `   j k  [    l    ; m  K   I     *+,� 9�    L      � M         N O      \ f     b h  [   	 \   b    ; n  K   I     *+,� 9�    L      � M         N O      o f     \ f  [   	 o   \    p n  K   I     *+,� 9�    L      � M         N O      \ f     q f  [   	 \   q   r     s     t    u    v w   *    x 
   y {	 |  ~    �  �  �	