.class public interface abstract annotation LIh/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lgi/F;
    value = {}
.end annotation

.annotation runtime Lgi/G;
    value = {
        .enum Lgi/I;->EXPLICIT_LOWER_BOUND:Lgi/I;,
        .enum Lgi/I;->EXPLICIT_UPPER_BOUND:Lgi/I;
    }
.end annotation

.annotation runtime Lgi/e;
    value = {
        .enum Lgi/I;->LOCAL_VARIABLE:Lgi/I;,
        .enum Lgi/I;->RESOURCE_VARIABLE:Lgi/I;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation
