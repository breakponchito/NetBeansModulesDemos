����   4 }	      Korg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FileName this$0 DLorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;
  	 
   java/lang/Object <init> ()V
      java/lang/String toLowerCase ()Ljava/lang/String;	     name Ljava/lang/String;	     	substring Z	     
ignoreCase
    ! " # 6org/netbeans/modules/openide/filesystems/declmime/Util readUTF '(Ljava/io/DataInput;)Ljava/lang/String; % & ' ( ) java/io/DataInput readBoolean ()Z
  +  , [(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;Ljava/lang/String;ZZ)V
  . / 0 writeUTF )(Ljava/io/DataOutput;Ljava/lang/String;)V 2 3 4 5 6 java/io/DataOutput writeBoolean (Z)V
 8 9 : ;  "org/openide/filesystems/FileObject 
getNameExt
  = > ? contains (Ljava/lang/CharSequence;)Z
  A B C equals (Ljava/lang/Object;)Z E java/lang/StringBuilder
 D 	 H [
 D J K L append -(Ljava/lang/String;)Ljava/lang/StringBuilder; N , 
 D P K Q (Z)Ljava/lang/StringBuilder; S ]
 D U V  toString DEFAULT_IGNORE_CASE ConstantValue    DEFAULT_SUBSTRING     Code LineNumberTable LocalVariableTable this MLorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FileName; StackMapTable c Borg/netbeans/modules/openide/filesystems/declmime/FileElement$Type MethodParameters Z(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;Ljava/io/DataInput;)V is Ljava/io/DataInput; 
Exceptions j java/io/IOException writeExternal (Ljava/io/DataOutput;)V os Ljava/io/DataOutput; match '(Lorg/openide/filesystems/FileObject;)Z fo $Lorg/openide/filesystems/FileObject; 
nameAndExt #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile FileElement.java InnerClasses z =org/netbeans/modules/openide/filesystems/declmime/FileElement Type FileName         W   X    Y  Z   X    [                       ,  \   �     **+� *� � *,� � � *,� *� *� �    ]      c 	d e g i #j )k ^   4    * _ `     *      *      *      *    a    �    b    d    �            e  \   `     *+,� ,� $ ,� $ � *�    ]      n o n q ^         _ `            f g  h     i d   	 � f    k l  \   ]     +*� � -+*� � 1 +*� � 1 �    ]      t u v w ^        _ `      m n  h     i d    m    o p  \   �     *+� 7M*� � ,� M*� � ,*� � <�,*� � @�    ]      z { | ~  !� ^        * _ `     * q r   % s   a   	 �   d    q    V   \   ^     4� DY� FG� I*� � IM� I*� � OM� I*� � OR� I� T�    ]      � ^       4 _ `   t     u    v    w x     b y {   b |  