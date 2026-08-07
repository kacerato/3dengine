.class public interface abstract annotation LNh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lgi/F;
    value = {
        LNh/e;
    }
.end annotation

.annotation runtime Lgi/e;
    value = {
        .enum Lgi/I;->IMPLICIT_UPPER_BOUND:Lgi/I;,
        .enum Lgi/I;->IMPLICIT_LOWER_BOUND:Lgi/I;,
        .enum Lgi/I;->EXCEPTION_PARAMETER:Lgi/I;
    }
.end annotation

.annotation runtime Lgi/h;
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
