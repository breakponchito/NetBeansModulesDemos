����   4 5  !org/openide/windows/WindowManager  org/openide/windows/Workspace  java/lang/Object  java/io/Serializable 
PROP_MODES Ljava/lang/String; ConstantValue  modes 
Deprecated 	PROP_NAME  name PROP_DISPLAY_NAME  displayName serialVersionUID J)w$��hY� getName ()Ljava/lang/String; getDisplayName getModes ()Ljava/util/Set; 	Signature .()Ljava/util/Set<+Lorg/openide/windows/Mode;>; 	getBounds ()Ljava/awt/Rectangle; activate ()V 
createMode N(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lorg/openide/windows/Mode; MethodParameters icon findMode .(Ljava/lang/String;)Lorg/openide/windows/Mode; >(Lorg/openide/windows/TopComponent;)Lorg/openide/windows/Mode; c remove addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V list removePropertyChangeListener 
SourceFile Workspace.java RuntimeVisibleAnnotations Ljava/lang/Deprecated;       	 
              
              
                                                          !       " #       $ %  &          '        ( )  &            ( *  &    +        , #       - .  &    /        0 .  &    /         1    2      3     4  