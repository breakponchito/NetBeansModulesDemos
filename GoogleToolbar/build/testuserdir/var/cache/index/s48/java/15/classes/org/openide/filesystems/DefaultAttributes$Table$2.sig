����   4 \	      1org/openide/filesystems/DefaultAttributes$Table$2 this$0 1Lorg/openide/filesystems/DefaultAttributes$Table;	   	 
 val$fileName Ljava/lang/StringBuffer;
      8org/openide/filesystems/DefaultAttributes$ElementHandler <init> ()V  java/lang/String  
FILEOBJECT	     ELM_KEYS [Ljava/lang/String;  NAME	     MANDAT_ATTR_KEYS
    ! " # java/lang/StringBuffer length ()I
  % & ' delete (II)Ljava/lang/StringBuffer;
 ) * + , - java/util/HashMap get &(Ljava/lang/Object;)Ljava/lang/Object; / name
  1 2 3 append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; L(Lorg/openide/filesystems/DefaultAttributes$Table;Ljava/lang/StringBuffer;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/filesystems/DefaultAttributes$Table$2; MethodParameters internalStartElement ;(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V elemName Ljava/lang/String; mapMandatory Ljava/util/HashMap; 
mapAllowed temp StackMapTable 
Exceptions F org/xml/sax/SAXException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
endElement (Ljava/lang/String;)V elementName getKeys ()[Ljava/lang/String; getMandatoryAttrs 
SourceFile DefaultAttributes.java EnclosingMethod S /org/openide/filesystems/DefaultAttributes$Table U V parseSecondLevel T(Ljava/lang/StringBuffer;)Lorg/openide/filesystems/DefaultAttributes$ElementHandler; InnerClasses Y )org/openide/filesystems/DefaultAttributes Table ElementHandler                  	 
           4  5   e     )*+� *,� *� *� YS� *� YS� �    6      � � � 7       ) 8 9     )    :   	 � 	  ; <  5   �     ;*� *� � � $W,� (� :� ,.� (� :� *� � 0W�    6      � � �  � +� 0� :� 7   4    ; 8 9     ; = >    ; ? @    ; A @     B >  C   	 � +  D     E :    =   ?   A   G     H    I J  5   5      �    6      � 7        8 9      K >  D     E :    K   G     H    L M  5   /     *� �    6      � 7        8 9   G     H    N M  5   /     *� �    6      � 7        8 9   G     H    O    P Q    R T W     R X Z          X [