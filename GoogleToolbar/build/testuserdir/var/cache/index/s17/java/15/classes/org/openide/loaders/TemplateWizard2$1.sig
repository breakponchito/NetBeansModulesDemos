����   4 >	      %org/openide/loaders/TemplateWizard2$1 this$0 %Lorg/openide/loaders/TemplateWizard2;
  	 
   java/lang/Object <init> ()V  org/openide/WizardDescriptor  value
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
      java/lang/String equals (Ljava/lang/Object;)Z
     ! " #org/openide/loaders/TemplateWizard2 isDisplayable ()Z
  $ % & 
access$202 )(Lorg/openide/loaders/TemplateWizard2;Z)Z ( !java/beans/PropertyChangeListener ((Lorg/openide/loaders/TemplateWizard2;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/loaders/TemplateWizard2$1; MethodParameters propertyChange #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TemplateWizard2.java EnclosingMethod ; < implReadSettings (Ljava/lang/Object;)V InnerClasses      '          )  *   >     
*+� *� �    +       � ,       
 - .     
    /    �  0 1  *   i      +� � � *� � � *� � #W�    +       �  �  �  � ,         - .       2 3  4     /    2   5     6    7    8 9     : =   
        