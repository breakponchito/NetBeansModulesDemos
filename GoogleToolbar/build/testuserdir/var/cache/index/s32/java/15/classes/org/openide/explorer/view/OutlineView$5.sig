����   4 2	      'org/openide/explorer/view/OutlineView$5 this$0 'Lorg/openide/explorer/view/OutlineView;	   	 
 val$revalidatingTask (Lorg/openide/util/RequestProcessor$Task;
      java/lang/Object <init> ()V
      &org/openide/util/RequestProcessor$Task schedule (I)V   javax/swing/event/ChangeListener R(Lorg/openide/explorer/view/OutlineView;Lorg/openide/util/RequestProcessor$Task;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/explorer/view/OutlineView$5; MethodParameters 	Signature stateChanged "(Ljavax/swing/event/ChangeEvent;)V e Ljavax/swing/event/ChangeEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile OutlineView.java EnclosingMethod + %org/openide/explorer/view/OutlineView -  initializeTreeScrollSupport InnerClasses 0 !org/openide/util/RequestProcessor Task        	 
                C     *+� *,� *� �          �                      	 � 	        ! "     B     
*� d� �       
   � 	�        
       
 # $      #   %     &    '    ( )    * , .             / 1 