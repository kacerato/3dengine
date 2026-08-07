.class public interface abstract annotation Lvg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build LFf/h0;
    level = .enum LFf/h0$a;->ERROR:LFf/h0$a;
.end annotation

.annotation build LFf/l0;
    version = "2.0"
.end annotation

.annotation runtime LGf/c;
.end annotation

.annotation runtime LGf/e;
    value = .enum LGf/a;->BINARY:LGf/a;
.end annotation

.annotation runtime LGf/f;
    allowedTargets = {
        .enum LGf/b;->CLASS:LGf/b;,
        .enum LGf/b;->ANNOTATION_CLASS:LGf/b;,
        .enum LGf/b;->PROPERTY:LGf/b;,
        .enum LGf/b;->FIELD:LGf/b;,
        .enum LGf/b;->LOCAL_VARIABLE:LGf/b;,
        .enum LGf/b;->VALUE_PARAMETER:LGf/b;,
        .enum LGf/b;->CONSTRUCTOR:LGf/b;,
        .enum LGf/b;->FUNCTION:LGf/b;,
        .enum LGf/b;->PROPERTY_GETTER:LGf/b;,
        .enum LGf/b;->PROPERTY_SETTER:LGf/b;,
        .enum LGf/b;->TYPEALIAS:LGf/b;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
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
