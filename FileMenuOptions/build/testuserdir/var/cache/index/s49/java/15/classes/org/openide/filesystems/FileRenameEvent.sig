����   4 =
      'org/openide/filesystems/FileRenameEvent <init> o(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)V
    	 p(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;Z)V
      !org/openide/filesystems/FileEvent L(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Z)V	     name Ljava/lang/String;	     ext  
,name.ext=
      java/lang/StringBuilder append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
      (C)Ljava/lang/StringBuilder; serialVersionUID J ConstantValue�7�]�� K(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/filesystems/FileRenameEvent; src $Lorg/openide/filesystems/FileObject; MethodParameters file expected Z getName ()Ljava/lang/String; getExt insertIntoToString (Ljava/lang/StringBuilder;)V b Ljava/lang/StringBuilder; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile FileRenameEvent.java !       ! "  #    $              &  '   U     	*++,-� �    (   
    +  , )   *    	 * +     	 , -    	      	    .    ,             '   a     *+,-� �    (   
    5 
 6 )   4     * +      , -     / -              .    ,   /           	  '   |     *+,� 
*-� *� �    (       A  B  C  D )   >     * +      , -     / -                 0 1  .    ,   /         0    2 3  '   /     *� �    (       J )        * +    4 3  '   /     *� �    (       Q )        * +     5 6  '   e     !+� W+*� � W+.� W+*� � W�    (       V  W  X  Y   Z )       ! * +     ! 7 8  .    7   9     :    ;    <