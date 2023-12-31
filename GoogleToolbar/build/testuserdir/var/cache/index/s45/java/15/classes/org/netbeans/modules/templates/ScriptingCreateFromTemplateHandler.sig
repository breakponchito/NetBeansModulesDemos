����   4a
      4org/netbeans/api/templates/CreateFromTemplateHandler <init> ()V
  	 
   +org/netbeans/api/templates/CreateDescriptor getTemplate &()Lorg/openide/filesystems/FileObject;
      Aorg/netbeans/modules/templates/ScriptingCreateFromTemplateHandler engine A(Lorg/openide/filesystems/FileObject;)Ljavax/script/ScriptEngine;
     getProposedName ()Ljava/lang/String;  java/util/HashMap
     getParameters ()Ljava/util/Map;
     (Ljava/util/Map;)V
  ! "  	getTarget
  $ % & hasFreeExtension ()Z
 ( ) * + , java/lang/String indexOf (I)I . java/lang/StringBuilder
 - 
 - 1 2 3 append (C)Ljava/lang/StringBuilder;
 5 6 7 8  "org/openide/filesystems/FileObject getExt
 - : 2 ; -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 - = >  toString
 ( @ A B endsWith (Ljava/lang/String;)Z
 ( D E F length ()I
 ( H I J 	substring (II)Ljava/lang/String;
 L M N O P  org/openide/filesystems/FileUtil findFreeFileName \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; R S T U V javax/script/ScriptEngine 
getContext ()Ljavax/script/ScriptContext; X javax/script/ScriptContext W Z [ \ getBindings (I)Ljavax/script/Bindings; ^ name ` a b c d java/util/Map containsKey (Ljava/lang/Object;)Z ` f g h put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; j k l m  javax/script/Bindings putAll
 5 o p & isFolder
 L r s t createFolder \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  v w x copyAttributesFromTemplate �(Lorg/netbeans/api/templates/CreateFromTemplateHandler;Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V
  z { | defaultCopyContents �(Lorg/netbeans/api/templates/CreateDescriptor;Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)Ljava/util/List;
 L ~  t 
createData
 � � � � � *org/netbeans/api/queries/FileEncodingQuery getEncoding @(Lorg/openide/filesystems/FileObject;)Ljava/nio/charset/Charset; � encoding
 � � � ^  java/nio/charset/Charset j � g � 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
 5 � � � lock $()Lorg/openide/filesystems/FileLock; � java/io/OutputStreamWriter
 5 � � � getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream;
 � �  � 3(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V � java/io/InputStreamReader
 5 � � � getInputStream ()Ljava/io/InputStream;
 � �  � 2(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V � java/io/StringWriter
 � 
  � � & isPreformatted
  � � � indentEngine ()Ljavax/script/ScriptEngine; � java/io/PrintWriter
 � �  � (Ljava/io/Writer;)V W � � � 	setWriter
 � � � �  java/lang/Class getName W � � � setAttribute ((Ljava/lang/String;Ljava/lang/Object;I)V � javax.script.filename
 5 � �  
getNameExt R � � � eval $(Ljava/io/Reader;)Ljava/lang/Object; � mimeType
 5 � �  getMIMEType � java/io/StringReader
 � =
 � �  � (Ljava/lang/String;)V
 � � � �  java/io/Reader close � java/lang/Throwable
 � � � � addSuppressed (Ljava/lang/Throwable;)V
 � � � java/io/Writer
 � � � �   org/openide/filesystems/FileLock releaseLock � javax/script/ScriptException � java/io/IOException
 � � �  
getMessage
 � �  � *(Ljava/lang/String;Ljava/lang/Throwable;)V
 � � � � � java/util/Collections singletonList $(Ljava/lang/Object;)Ljava/util/List; � 'org.netbeans.api.templates.IndentEngine
  � � � 	getEngine /(Ljava/lang/String;)Ljavax/script/ScriptEngine;	  � �  manager "Ljavax/script/ScriptEngineManager;
 $org/netbeans/api/scripting/Scripting createManager $()Ljavax/script/ScriptEngineManager;
	
 �  javax/script/ScriptEngineManager getEngineByName javax.script.ScriptEngine
 5 getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	  LOG Ljava/util/logging/Logger; SCRIPT_ENGINE_ATTR Ljava/lang/String; ConstantValue ENCODING_PROPERTY_NAME ID_INDENT_ENGINE Code LineNumberTable LocalVariableTable this CLorg/netbeans/modules/templates/ScriptingCreateFromTemplateHandler; accept 0(Lorg/netbeans/api/templates/CreateDescriptor;)Z desc -Lorg/netbeans/api/templates/CreateDescriptor; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; createFromTemplate ?(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/List; 
extWithDot folder $Lorg/openide/filesystems/FileObject; sw Ljava/io/StringWriter; eng2 Ljavax/script/ScriptEngine; is Ljava/io/Reader; w Ljava/io/Writer; io Ljava/io/IOException; ex Ljavax/script/ScriptException; template values Ljava/util/Map; f noExt Z nameUniq eng bind Ljavax/script/Bindings; output 	targetEnc Ljava/nio/charset/Charset; 	sourceEnc "Lorg/openide/filesystems/FileLock; LocalVariableTypeTable 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; 
Exceptions 	Signature e(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/List<Lorg/openide/filesystems/FileObject;>; engNameU java/lang/Object fo obj Ljava/lang/Object; <clinit> 
SourceFile 'ScriptingCreateFromTemplateHandler.java )Lorg/openide/util/lookup/ServiceProvider; service 6Lorg/netbeans/api/templates/CreateFromTemplateHandler; position  � !              
 �         �       �     !   /     *� �   "       9#       $%   &' !   O     +� � � � �   "       D#       $%     () *    @+   (  ,    -   ./ !  �    j+� M+� N� Y+� � :+�  :+� #� -.� '� � 6� 	:� 4� -Y� /.� 0,� 4� 9� <:-� ?� --� C� Cd� GN-� � ,� 4� K:,� :		� Q d� Y :
]� _ � ]� e W
� i +� � n� #+�  � q:+� � u++� � y�� � � -Y� /� 9� 9� <� }:� �:,� �:�� _ � 
�� �� � W� �:� �Y� �� �:� �Y,� �� �:� �Y� �:+� �� � � �:	� Q � �Y� � � �� � 	� Q 5� �,d� � 	� Q �,� �d� � 	� � W� 9� Q �,� �d� � � Q � � � �Y� з ѹ � W� ԧ :� ԧ :� ��� ߧ :� ߧ :� ��� � ":� �Y� �� �:�:� ��� � \	 � �M' �).1 �;=E �;=Z  E\Z   "   � 2   I  J 
 K  L  N 5 Q : R @ T X U a W q [ � ] � ^ � _ � ` � b � d � e � f � g � j k l n% o4 r; sM t\ ve wu y� {� |� }� � �� �� � �	 s �' s= �B �E �G �W �Z �a �d �#   �  = 0  � 12 e �34 u �56 \ �78 M �9: W ;< G =>   j$%    j()  e?2  
` ^  S@A  MB2  55CD  X0  ��E  ��F6 	 ��GH 
^I2 WJK QLK ;/ �M N     S@O *   � 2    5 ( ` 5  @� � 0 (�     5 ( ` 5 (  5 (�     5 ( ` 5 (  5 ( (� 2 ( R j2K 5�     5 ( ` 5 ( ( R j  5 (� , 5 � �� ;    5 ( ` 5 ( ( R j 5 � � � � � �  B R�     5 ( ` 5 ( ( R j 5 � � � � � � R  W||�     5 ( ` 5 ( ( R j 5 � � � � � � R  W|| �� tG �� 	    5 ( ` 5 ( ( R j 5 � � � � � �  �� G �� 	    5 ( ` 5 ( ( R j 5 � � � � �  �� G �T �	P     �+   (  Q   R,    -   	 � � !         �� ��   "       � 	 � � !   �     #YL² �� 	�� �+ç M+�,�� �*��            "       �  �  �  �  �#       #S  *    � TD �� +   S   	   !   |     %*�L+� R� +� R�+� (� +� (� ���   "       �  �  �  �  � # �#       %V2    WX *   	 � T+   V   Y  !   $      � ����   "       : Z   [,    \ ]c^_I`