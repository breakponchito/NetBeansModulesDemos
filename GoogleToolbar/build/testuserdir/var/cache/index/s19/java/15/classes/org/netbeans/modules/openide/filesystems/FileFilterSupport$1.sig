����   4 2
      java/lang/Object <init> ()V
  	 
   "javax/swing/filechooser/FileFilter getDescription ()Ljava/lang/String;
      java/lang/String 	compareTo (Ljava/lang/String;)I
      <org/netbeans/modules/openide/filesystems/FileFilterSupport$1 compare K(Ljavax/swing/filechooser/FileFilter;Ljavax/swing/filechooser/FileFilter;)I  java/util/Comparator Code LineNumberTable LocalVariableTable this >Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$1; o1 $Ljavax/swing/filechooser/FileFilter; o2 MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; '(Ljava/lang/Object;Ljava/lang/Object;)I 	Signature NLjava/lang/Object;Ljava/util/Comparator<Ljavax/swing/filechooser/FileFilter;>; 
SourceFile FileFilterSupport.java EnclosingMethod - :org/netbeans/modules/openide/filesystems/FileFilterSupport / 0 sortFiltersByDescription "(Ljava/util/List;)Ljava/util/List; InnerClasses                  /     *� �           �                    J     +� ,� � �           �                   !     " !  #   	     "   $     %  A  &     7     *+� ,� � �           �             #   	    "  $     %    '    ( )    * +    , . 1   
        