����   4}
      #org/openide/loaders/MultiDataObject <init> L(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/MultiFileLoader;)V	  	 
   %org/openide/loaders/DefaultDataObject cookieSetFixed Z  org/openide/loaders/DataNode	      org/openide/nodes/Children LEAF Lorg/openide/nodes/Children;
     ?(Lorg/openide/loaders/DataObject;Lorg/openide/nodes/Children;)V  HINT_DefaultDataObject
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
  ! " # setShortDescription (Ljava/lang/String;)V
  % & ' getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 ) * + , - "org/openide/filesystems/FileObject 
getNameExt ()Ljava/lang/String;	 / 0 1 2 3 org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx;
  5 6 7 getPrimaryEntry -()Lorg/openide/loaders/MultiDataObject$Entry;
 9 : ; < = )org/openide/loaders/MultiDataObject$Entry takeLock $()Lorg/openide/filesystems/FileLock;
 ? @ A B C java/lang/String lastIndexOf (I)I
 ) E F G rename I(Lorg/openide/filesystems/FileLock;Ljava/lang/String;Ljava/lang/String;)V
 ? I J K equals (Ljava/lang/Object;)Z
 ? M N O 	substring (II)Ljava/lang/String;
 ? Q N R (I)Ljava/lang/String;
 T U V W X "org/openide/loaders/DataObjectPool getPOOL &()Lorg/openide/loaders/DataObjectPool; Z java/util/HashSet
 \ ] ^ _ ` java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
 Y b  c (Ljava/util/Collection;)V
 T e f g 
revalidate  (Ljava/util/Set;)Ljava/util/Set;
 i j k l m  org/openide/filesystems/FileLock releaseLock ()V o java/lang/StringBuilder
 n q  m s .
 n u v w append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ) y z - getExt
 n | } - toString
 ?  � � endsWith (Ljava/lang/String;)Z
 ? � B � (Ljava/lang/String;)I
  � � � handleCreateFromTemplate T(Lorg/openide/loaders/DataFolder;Ljava/lang/String;)Lorg/openide/loaders/DataObject;
 � % � org/openide/loaders/DataFolder
 9 � � � 
copyRename n(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 � � � � � org/openide/loaders/DataObject find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; �  org/openide/cookies/EditorCookie
  � � � 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; � � � m open � java/util/ArrayList
 � q	 � � � � � org/openide/NotifyDescriptor 	OK_OPTION Ljava/lang/Object; � � � � K java/util/List add	 � � � � CANCEL_OPTION � MSG_BinaryFileQuestion � MSG_BinaryFileWarning � � � � toArray ()[Ljava/lang/Object;
 � �  � N(Ljava/lang/Object;Ljava/lang/String;II[Ljava/lang/Object;Ljava/lang/Object;)V
 � � � � � org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer;
 � � � � notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;
  � � � 3(Ljava/lang/Class;Z)Lorg/openide/nodes/Node$Cookie;
  � � � getCookieSet ()Lorg/openide/nodes/CookieSet;
 � � � � � org/openide/nodes/CookieSet 	getLookup ()Lorg/openide/util/Lookup; � org/openide/nodes/Node$Cookie
 � � � � � java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
 � � � � 
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class;
  � � � fixCookieSet (Ljava/lang/Class;Z)V � org/openide/cookies/OpenCookie
 � � � � cast &(Ljava/lang/Object;)Ljava/lang/Object;
  �
 � �	  � � � support Lorg/openide/loaders/DefaultES; � org/openide/cookies/EditCookie � +org/openide/cookies/EditorCookie$Observable � org/openide/cookies/PrintCookie � org/openide/cookies/CloseCookie � org/openide/loaders/DefaultES
 ) � � � getInputStream ()Ljava/io/InputStream;
 � � �  java/io/InputStream read ([B)I
 � m close
 �  p(Lorg/openide/loaders/MultiDataObject;Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/nodes/CookieSet;)V
 �	
 assign '(Ljava/lang/Class;[Ljava/lang/Object;)V java/io/IOException	  LOG Ljava/util/logging/Logger;	 java/util/logging/Level INFO Ljava/util/logging/Level; Cannot read 
 n v -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 !" java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V serialVersionUID J ConstantValue�~�DgT�> Code LineNumberTable LocalVariableTable this 'Lorg/openide/loaders/DefaultDataObject; fo $Lorg/openide/filesystems/FileObject; loader %Lorg/openide/loaders/MultiFileLoader; 
Exceptions3 -org/openide/loaders/DataObjectExistsException MethodParameters associateLookup ()I #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; createNodeDelegate ()Lorg/openide/nodes/Node; dn Lorg/openide/loaders/DataNode; getName 
getHelpCtx ()Lorg/openide/util/HelpCtx; handleRename 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; name Ljava/lang/String; lock "Lorg/openide/filesystems/FileLock; pos I StackMapTableJ java/lang/Throwable df  Lorg/openide/loaders/DataFolder; handleCopyRename f(Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/loaders/DataObject; ext options Ljava/util/List; nd Lorg/openide/NotifyDescriptor; ret c "Lorg/openide/cookies/EditorCookie; ic LocalVariableTypeTable $Ljava/util/List<Ljava/lang/Object;>;[ java/lang/Object Ljava/lang/Class; Ljava/lang/Class<TT;>; 	Signature ?<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;)TT; checkCookieSet (Ljava/lang/Class;)V cookie 3Ljava/lang/Class<+Lorg/openide/nodes/Node$Cookie;>; Ljava/lang/Class<*>; (Ljava/lang/Class<*>;)V force cook Lorg/openide/nodes/Node$Cookie; TT; @<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;Z)TT; i len arr [B is Ljava/io/InputStream; ex Ljava/io/IOException;n (Ljava/lang/Class<*>;Z)V 
SourceFile DefaultDataObject.java InnerClasses Entryz org/openide/nodes/Node Cookie 
Observable 0    �  #$ %   &  � �             (   R     *+,� *� �   )       :  0  ;*        +,     -.    /0 1    24   	-  /   56 (   ,     �   )       ?*       +,  7    8   9: (   U     � Y*� � L+� �  +�   )       G  J  L*       +,    ;< 7    8   = - (   2     *� $� (�   )       V*       +,  7    8   >? (   .     � .�   )       ^*       +,  7    8   @A (  (     ~*� 4� 8M+.� >>� *� $,+� D� L� *� $,+� D� ;+*� $� (� H� -*� $,+� L+`� P� D� S� YY*� $� [� a� dW,� h� :,� h�*� $�   i p   p r p   )   B    k  l  o  q   r $ s 1 u ? v T w \ x e w i } m ~ p } v ~ y *   *    ~+,     ~BC   vDE   oFG H    �   i7FI1    4   B  7    8    � � (   �     N,� F,� nY� pr� t*� $� x� t� {� ~� &,,� nY� pr� t*� $� x� t� {� �� LM*+,� ��   )       � $ � G �*        N+,     NKL    NBC H    � G1    4   	K  B  7    8   MN (   k     *� 4+� �,-� �:� ��   )   
    �  �*   4    +,     KL    BC    OC   -. 1    4   K  B  O  7    8    � m (  ?     x*�� �� �L+� +� � � c� �Y� �M,� �� � W,� �� � W� �Y�� �� ,� � � �N� �-� �:� �� �*�� �� �:� � �   )   B    � 
 �  �  �  � ) � 3 � ; � B � H � R � [ � c � d � p � w �*   >   XPQ  R %RS  [ T �  p UV    x+,   
 nWV X      XPY H    �  �� L � �Z�   � � (   2     *� ȶ ̰   )       �*       +,  7    8    � � (   M     *+� Ű   )       �*       +,     U\ X       U] 4   U  ^   _7    8   `a (   �     �+� ԙ *� � +Ҷ �M*,� ޱ   )       �  �  �  �*       b\    +,     U\ X      bc    Ud H    4   U  ^   e7    8    � � (   �     *+� +*� �� Ұ*+� �N-� -�*+� �*� �+� �   )       �  �  �  �  �  � ! �*   *    *+,     *U\    *f    gh X       *U]   gi H   	 �  �4   	U  f  ^   j  � � (  Z    *� � � 
*� �� �+� Ԛ $+� Ԛ +� Ԛ +�� Ԛ 	+�� �� { �N*� $� �:-� �66� H-3� ;-3� 2-3
� )-3�  -3	� -3� *� �������� :��*� �Y**� 4*� ȷ� �*� ��� �Y*� �S�*� � %N��� nY� p� t*� 4�� {-��  P � �   � � �   � � �   = � � � � � )   v    �  �  �  �  � ( � 1 � = � A � G � P � X � b � � � � � � � � � � � � � � � � � � � � � � � � � � � � � *   R  [ LkG  X OlG  G rmn  P iop  � !qr   +,    U\   f  X      Ud H   .  )�    �s �  � E� GI� 	o!4   	U  f  ^   t u   vw     9 x �y{	 � �|	