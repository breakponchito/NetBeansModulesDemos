����   4 G
      *org/openide/filesystems/FileAttributeEvent <init> �(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    	 �(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
      !org/openide/filesystems/FileEvent L(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Z)V	     name Ljava/lang/String;	     oldValue Ljava/lang/Object;	     newValue  ,name=
      ! java/lang/StringBuilder append -(Ljava/lang/String;)Ljava/lang/StringBuilder; # 
,oldValue=
  %   & -(Ljava/lang/Object;)Ljava/lang/StringBuilder; ( 
,newValue= serialVersionUID J ConstantValue����:�� ](Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/filesystems/FileAttributeEvent; src $Lorg/openide/filesystems/FileObject; MethodParameters file expected Z getName ()Ljava/lang/String; getOldValue ()Ljava/lang/Object; getNewValue insertIntoToString (Ljava/lang/StringBuilder;)V b Ljava/lang/StringBuilder; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile FileAttributeEvent.java !       ) *  +    ,                   .  /   a     *++,-� �    0   
    / 
 0 1   4     2 3      4 5                    6    4                /   m     *+,-� �    0   
    :  ; 1   >     2 3      4 5     7 5                    6    4   7              	  /   �     *+,� 
*-� *� *� �    0       H  I  J  K  L 1   H     2 3      4 5     7 5                       8 9  6    4   7            8    : ;  /   /     *� �    0       R 1        2 3    < =  /   /     *� �    0       Y 1        2 3    > =  /   /     *� �    0       ` 1        2 3     ? @  /   }     1+� W+*� � W+"� W+*� � $W+'� W+*� � $W�    0       e  f  g  h   i ' j 0 k 1       1 2 3     1 A B  6    A   C     D    E    F