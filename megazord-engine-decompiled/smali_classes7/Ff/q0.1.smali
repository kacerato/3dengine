.class public interface abstract annotation LFf/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LGf/e;
    value = .enum LGf/a;->SOURCE:LGf/a;
.end annotation

.annotation runtime LGf/f;
    allowedTargets = {
        .enum LGf/b;->CLASS:LGf/b;,
        .enum LGf/b;->ANNOTATION_CLASS:LGf/b;,
        .enum LGf/b;->TYPE_PARAMETER:LGf/b;,
        .enum LGf/b;->PROPERTY:LGf/b;,
        .enum LGf/b;->FIELD:LGf/b;,
        .enum LGf/b;->LOCAL_VARIABLE:LGf/b;,
        .enum LGf/b;->VALUE_PARAMETER:LGf/b;,
        .enum LGf/b;->CONSTRUCTOR:LGf/b;,
        .enum LGf/b;->FUNCTION:LGf/b;,
        .enum LGf/b;->PROPERTY_GETTER:LGf/b;,
        .enum LGf/b;->PROPERTY_SETTER:LGf/b;,
        .enum LGf/b;->TYPE:LGf/b;,
        .enum LGf/b;->EXPRESSION:LGf/b;,
        .enum LGf/b;->FILE:LGf/b;,
        .enum LGf/b;->TYPEALIAS:LGf/b;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract names()[Ljava/lang/String;
.end method
