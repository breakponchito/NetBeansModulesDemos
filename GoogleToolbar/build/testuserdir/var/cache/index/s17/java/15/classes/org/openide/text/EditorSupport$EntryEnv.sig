Êþº¾   4 ³
      &org/openide/text/DataEditorSupport$Env <init> #(Lorg/openide/loaders/DataObject;)V
  	 
   'org/openide/text/EditorSupport$EntryEnv getDataObject "()Lorg/openide/loaders/DataObject;
      org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;  #org/openide/loaders/MultiDataObject
     getPrimaryEntry -()Lorg/openide/loaders/MultiDataObject$Entry;
      )org/openide/loaders/MultiDataObject$Entry takeLock $()Lorg/openide/filesystems/FileLock;   primaryFile
 " # $ % & java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
 ( ) * + , java/lang/String equals (Ljava/lang/Object;)Z
  . / 0 
changeFile ()V 2 name 4 org/openide/text/EditorSupport
  6 7 8 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 3 : ; 0 updateTitles
  = > ? propertyChange #(Ljava/beans/PropertyChangeEvent;)V A java/io/IOException C *no EditorSupport found on this data object
 @ E  F (Ljava/lang/String;)V
 3 H I 0 saveDocument K org/openide/cookies/SaveCookie
  M N O getCookieSet D(Lorg/openide/loaders/MultiDataObject;)Lorg/openide/nodes/CookieSet;
 Q R S T U org/openide/nodes/CookieSet add "(Lorg/openide/nodes/Node$Cookie;)V
 Q W X U remove	  Z [ \ getCookieSetMethod Ljava/lang/reflect/Method; N _ java/lang/Class
 ^ a b c getDeclaredMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 e f g h i java/lang/reflect/Method setAccessible (Z)V k java/lang/Object
 e m n o invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; q java/lang/Exception
 s t u v w org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
 Q y  0
  { | } findCloneableOpenSupport ,()Lorg/openide/windows/CloneableOpenSupport;
 3    
access$000 F(Lorg/openide/text/EditorSupport;)Lorg/openide/text/EditorSupport$Del; serialVersionUID J ConstantValueëm!³ ((Lorg/openide/loaders/MultiDataObject;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/text/EditorSupport$EntryEnv; obj %Lorg/openide/loaders/MultiDataObject; MethodParameters getFile 
Exceptions es  Lorg/openide/text/EditorSupport; ev  Ljava/beans/PropertyChangeEvent; StackMapTable save addSaveCookie dataObj  Lorg/openide/loaders/DataObject; removeSaveCookie e Ljava/lang/Exception; s *Lorg/openide/windows/CloneableOpenSupport; ¡ (org/openide/windows/CloneableOpenSupport <clinit> 
SourceFile EditorSupport.java InnerClasses § "org/openide/text/DataEditorSupport Env EntryEnv Entry ¬ org/openide/nodes/Node$Cookie ® org/openide/nodes/Node Cookie ± "org/openide/text/EditorSupport$Del Del      J           
 [ \   
        >     *+· ±       
   " #                                 2     *¶ ¶ °          )                    8     *¶ À ¶ ¶ °          1                  @  > ?          7+¶ !¶ ' *¶ -1+¶ !¶ ' *¶ 3¶ 5À 3M,Æ ,¶ 9*+· <±       "   8 9 ; < )= -> 1B 6C       )       7       7                   0     r      *¶ 3¶ 5À 3L+Ç » @YB· D¿+¶ G±          M N O Q R                       ü  3      @   0     s     !*¶ L+Á  +J¶ 5Ç +À ¸ L*¶ P±          ^ ` a b  e        !              ü      0     t     "*¶ L+Á  +J¶ 5*¦ +À ¸ L*¶ V±          j l m n !q        "              ü !   N O          7² YÇ ]½ ^¶ `³ Y² Y¶ d² Y*½ j¶ lÀ Q°L+¸ r» QY· x°    ) * p        w x y { *| +} /~      +       7         N p         | }          #*· zL+Æ +°*¶ 3¶ 5À 3M,Æ ,¸ ~°°            	    !         #                   ü   ü  3  ¢ 0           ³ Y±          t  £    ¤ ¥   *   ¦ ¨	  3 © 
   ª « ­ ¯	 ° 3 ² 