����   4 0
      java/lang/ref/SoftReference <init> (Ljava/lang/Object;)V
  	 
   java/lang/Thread currentThread ()Ljava/lang/Thread;	      (org/openide/nodes/Node$PropertyEditorRef 	createdBy Ljava/lang/Thread;
     get ()Ljava/lang/Object;  java/beans/PropertyEditor
     ()Ljava/beans/PropertyEditor; (Ljava/beans/PropertyEditor;)V Code LineNumberTable LocalVariableTable this *Lorg/openide/nodes/Node$PropertyEditorRef; referent Ljava/beans/PropertyEditor; MethodParameters StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	Signature :Ljava/lang/ref/SoftReference<Ljava/beans/PropertyEditor;>; 
SourceFile 	Node.java InnerClasses . org/openide/nodes/Node PropertyEditorRef 0                   I     *+� *� � �          2 3 4           !      " #  $    "          O     � *� � �*� � �          8 
9 ;           !   %     &     '  A       /     *� �          .           !   &     '    (    ) *    + ,   
   - / 