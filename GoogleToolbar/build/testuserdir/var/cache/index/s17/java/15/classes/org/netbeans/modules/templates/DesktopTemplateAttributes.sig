����   4 S
      java/lang/Object <init> ()V  java/util/HashMap
    java/util/Date
 
   user  	user.name
      java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;      java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  date   java/text/DateFormat
 " # $ % & +org/netbeans/api/templates/CreateDescriptor 	getLocale ()Ljava/util/Locale;
  ( ) * getDateInstance +(ILjava/util/Locale;)Ljava/text/DateFormat;
  , - . format $(Ljava/util/Date;)Ljava/lang/String; 0 time
  2 3 * getTimeInstance 5 8org/netbeans/modules/templates/DesktopTemplateAttributes 7 7org/netbeans/api/templates/CreateFromTemplateAttributes Code LineNumberTable LocalVariableTable this :Lorg/netbeans/modules/templates/DesktopTemplateAttributes; attributesFor >(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/Map; desc -Lorg/netbeans/api/templates/CreateDescriptor; vals Ljava/util/Map; d Ljava/util/Date; LocalVariableTypeTable 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; MethodParameters 	Signature S(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/Map<Ljava/lang/String;*>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile DesktopTemplateAttributes.java )Lorg/openide/util/lookup/ServiceProvider; service 9Lorg/netbeans/api/templates/CreateFromTemplateAttributes; position�    ! 4   6        8   /     *� �    9       $ :        ; <    = >  8   �     J� Y� 	M� 
Y� N,� �  W,+� !� '-� +�  W,/+� !� 1-� +�  W,�    9   2    '  (  )  *  )  , # - - , 3 / 8 0 B / H 3 :   *    J ; <     J ? @   B A B   : C D  E      B A F  G    ?   H    I J     K    L    M J     N  Oc P QI R