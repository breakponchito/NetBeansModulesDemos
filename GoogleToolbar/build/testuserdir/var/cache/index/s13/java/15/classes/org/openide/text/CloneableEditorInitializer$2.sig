����   4 4	      -org/openide/text/CloneableEditorInitializer$2 this$0 -Lorg/openide/text/CloneableEditorInitializer;
  	 
   java/lang/Object <init> ()V   org/openide/windows/TopComponent	      +org/openide/text/CloneableEditorInitializer editor "Lorg/openide/text/CloneableEditor;
      javax/swing/SwingUtilities getAncestorOfClass ;(Ljava/lang/Class;Ljava/awt/Component;)Ljava/awt/Container;
     close ()Z   java/lang/Runnable 0(Lorg/openide/text/CloneableEditorInitializer;)V Code LineNumberTable LocalVariableTable this /Lorg/openide/text/CloneableEditorInitializer$2; MethodParameters run toClose "Lorg/openide/windows/TopComponent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile CloneableEditorInitializer.java EnclosingMethod 2  cancelInitialization InnerClasses                !  "   >     
*+� *� �    #       $       
 % &     
    '    �  (   "   u     #*� � � � L+� *� � L+� W�    #          " $       # % &     ) *  +    �   ,     -    .    / 0     1 3   
        