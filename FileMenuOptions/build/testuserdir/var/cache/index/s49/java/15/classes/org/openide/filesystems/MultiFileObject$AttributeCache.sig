����   4 C
      6org/openide/filesystems/MultiFileObject$AttributeCache setAttributeName (Ljava/lang/String;)V
   	 
 setDelegate '(Lorg/openide/filesystems/FileObject;)V
     getAttributeName ()Ljava/lang/String;
     getDelegate &()Lorg/openide/filesystems/FileObject;
     <init> ()V
     free
    java/lang/Object   	    ! " 
attribName Ljava/lang/String;	  $ % & delegate $Lorg/openide/filesystems/FileObject; Code LineNumberTable LocalVariableTable this 8Lorg/openide/filesystems/MultiFileObject$AttributeCache; MethodParameters 
access$000 ;(Lorg/openide/filesystems/MultiFileObject$AttributeCache;)V x0 .(Lorg/openide/filesystems/MultiFileObject$1;)V +Lorg/openide/filesystems/MultiFileObject$1; 
access$200 ^(Lorg/openide/filesystems/MultiFileObject$AttributeCache;)Lorg/openide/filesystems/FileObject; 
access$300 L(Lorg/openide/filesystems/MultiFileObject$AttributeCache;)Ljava/lang/String; 
access$400 _(Lorg/openide/filesystems/MultiFileObject$AttributeCache;Lorg/openide/filesystems/FileObject;)V x1 
access$500 M(Lorg/openide/filesystems/MultiFileObject$AttributeCache;Ljava/lang/String;)V 
SourceFile MultiFileObject.java InnerClasses ? 'org/openide/filesystems/MultiFileObject AttributeCache B )org/openide/filesystems/MultiFileObject$1         % &    ! "        '   9     *� *� �    (   
   � � )        * +       '   >     *� #*� �    (      � � � )        * +    	 
  '   >     *+� #�    (   
   � � )        * +      % &  ,    %       '   >     *+� �    (   
   �   )        * +      ! "  ,    !       '   /     *� #�    (       )        * +       '   /     *� �    (       )        * +   - .  '   /     *� �    (      � )        / +     0  '   9     *� �    (      � )        * +      / 1  2 3  '   /     *� �    (      � )        / +   4 5  '   /     *� �    (      � )        / +   6 7  '   :     *+� �    (      � )        / +      8 &  9 :  '   :     *+� �    (      � )        / +      8 "   ;    < =      > @ 
 A      